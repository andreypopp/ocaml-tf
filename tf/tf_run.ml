open Cmdliner
open Printf
open Tf_core

let sys ?(quiet = false) fmt =
  ksprintf
    (fun s ->
      if not quiet then print_endline s;
      assert (Sys.command s = 0))
    fmt

let gen output =
  let json = gen_tf_json () in
  match output with
  | None -> print_endline (Yojson.Safe.pretty_to_string json)
  | Some filename ->
      sys ~quiet:true "mkdir -p %s" (Filename.dirname filename);
      let tmp = Printf.sprintf "%s.tmp" filename in
      Out_channel.with_open_bin tmp (fun oc ->
          Yojson.Safe.pretty_to_channel oc json);
      Unix.rename tmp filename

let tf_output output = Filename.concat output "tf.tf.json"

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
  let output_t =
    Arg.(
      value
      & opt string "_tf"
      & info [ "o"; "output" ] ~docv:"OUTPUT" ~doc:"output directory")
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
    let f output = gen (Some (tf_output output)) in
    let info = Cmd.info "gen" ~doc:"generate tf configuration" in
    Cmd.v info Term.(const f $ output_t)
  in
  let tf_passthrough ~name ~doc =
    let f output () =
      gen (Some (tf_output output));
      sys "terraform -chdir=%S %s" output name
    in
    let info = Cmd.info name ~doc in
    Cmd.v info Term.(const f $ output_t $ variables_t)
  in
  let commands =
    [
      tf_passthrough ~name:"init" ~doc:"initialize configuration";
      tf_passthrough ~name:"apply" ~doc:"apply configuration";
      tf_passthrough ~name:"plan" ~doc:"plan configuration";
      dump_config_cmd;
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
