open Cmdliner
open Printf
open Tf_core

let sys ?(quiet = false) fmt =
  ksprintf
    (fun s ->
      if not quiet then prerr_endline s;
      assert (Sys.command s = 0))
    fmt

let save_as filename f =
  sys ~quiet:true "mkdir -p %s" (Filename.dirname filename);
  let filename_tmp = Printf.sprintf "%s.tmp" filename in
  (try Out_channel.with_open_bin filename_tmp (fun oc -> f oc)
   with _ -> Unix.unlink filename_tmp);
  Unix.rename filename_tmp filename

let gen workspace =
  let json = gen_tf_json () in
  match workspace with
  | None -> print_endline (Yojson.Safe.pretty_to_string json)
  | Some filename ->
      save_as filename (fun oc ->
          Yojson.Safe.pretty_to_channel oc json)

let tf_workspace workspace = Filename.concat workspace "tf.tf.json"
let tf_output workspace = Filename.concat workspace "output.json"

let rec json_to_ml ppf (json : Yojson.Safe.t) =
  match json with
  | `String v -> Format.fprintf ppf "%S" v
  | `Int v -> Format.fprintf ppf "%i" v
  | `Float v -> Format.fprintf ppf "%f" v
  | `Bool v -> Format.fprintf ppf "%b" v
  | `Null -> Format.fprintf ppf "unit"
  | `List xs ->
      Format.fprintf ppf "@[<hv 2>[%a]@]"
        (Format.pp_print_list json_to_ml)
        xs
  | `Assoc xs ->
      let pp_assoc ppf (k, v) =
        Format.fprintf ppf "@[<hv 2>(%S, %a)@]" k json_to_ml v
      in
      Format.fprintf ppf "@[<hv 2>[%a]@]"
        (Format.pp_print_list pp_assoc)
        xs
  | `Tuple xs ->
      Format.fprintf ppf "@[<hv 2>(%a)@]"
        (Format.pp_print_list json_to_ml)
        xs
  | `Intlit v -> Format.fprintf ppf "%s" v
  | `Variant _ -> assert false

let run () =
  let variables_t =
    let vars = Var.registered () in
    let vars =
      List.fold_left vars ~init:(Term.const [])
        ~f:(fun acc (Var.Anyvar v) ->
          let env = Cmd.Env.info (sprintf "TF_VAR_%s" v.id) in
          let name = sprintf "var-%s" v.id in
          let a =
            Arg.(
              value
              & opt (some string) None
              & info [ name ] ~env ~docv:"STRING" ?doc:v.description)
          in
          Term.(
            const (fun value next ->
                match value with
                | None -> next
                | Some value -> (v.id, value) :: next)
            $ a
            $ acc))
    in
    let f =
      List.iter ~f:(fun (k, v) ->
          let k = sprintf "TF_VAR_%s" k in
          Unix.putenv k v)
    in
    Term.(const f $ vars)
  in
  let workspace_t =
    Arg.(
      value
      & opt string "_tf"
      & info [ "W"; "workspace" ] ~docv:"WORKSPACE"
          ~doc:"workspace directory")
  in
  let output_t =
    Arg.(
      value
      & opt (some string) None
      & info [ "o"; "output" ] ~docv:"OUTPUT" ~doc:"output")
  in
  let dump_config_cmd =
    let f () = gen None in
    let info =
      Cmd.info "dump-config"
        ~doc:"generate tf configuration and dump on stdout"
    in
    Cmd.v info Term.(const f $ const ())
  in
  let gen_cmd =
    let f workspace = gen (Some (tf_workspace workspace)) in
    let info = Cmd.info "gen" ~doc:"generate tf configuration" in
    Cmd.v info Term.(const f $ workspace_t)
  in
  let gen_output_ml_cmd =
    let f workspace output =
      let data =
        In_channel.(with_open_bin (tf_output workspace) input_all)
      in
      let json = Yojson.Safe.from_string data in
      match json with
      | `Assoc items ->
          let with_ppf =
            match output with
            | None -> fun f -> f Format.std_formatter
            | Some output ->
                fun f ->
                  save_as output (fun oc ->
                      let ppf = Format.formatter_of_out_channel oc in
                      f ppf)
          in
          with_ppf (fun ppf ->
              List.iter items ~f:(fun (n, v) ->
                  let value = Yojson.Safe.Util.member "value" v in
                  Format.fprintf ppf "let %s = %a@." n json_to_ml
                    value))
      | json ->
          failwith
            (sprintf "unexpected json: %s"
               (Yojson.Safe.to_string json))
    in
    let info =
      Cmd.info "gen-output-ml" ~doc:"generate .ml with tf outputs"
    in
    Cmd.v info Term.(const f $ workspace_t $ output_t)
  in
  let apply_cmd =
    let f workspace () =
      gen (Some (tf_workspace workspace));
      sys "terraform -chdir=%S apply" workspace;
      sys "terraform -chdir=%S output -json > %S" workspace
        (tf_output workspace)
    in
    let info = Cmd.info "apply" ~doc:"apply configuration" in
    Cmd.v info Term.(const f $ workspace_t $ variables_t)
  in
  let tf_passthrough ~name ~doc =
    let f workspace () =
      gen (Some (tf_workspace workspace));
      sys "terraform -chdir=%S %s" workspace name
    in
    let info = Cmd.info name ~doc in
    Cmd.v info Term.(const f $ workspace_t $ variables_t)
  in
  let commands =
    [
      tf_passthrough ~name:"init" ~doc:"initialize configuration";
      tf_passthrough ~name:"plan" ~doc:"plan configuration";
      apply_cmd;
      dump_config_cmd;
      gen_output_ml_cmd;
      gen_cmd;
    ]
  in
  let main_cmd =
    let info = Cmd.info "tf" ~version:"%%VERSION%%" in
    let default =
      Term.(ret (const (fun () -> `Help (`Pager, None)) $ const ()))
    in
    Cmd.group info ~default commands
  in
  Stdlib.exit (Cmd.eval main_cmd)
