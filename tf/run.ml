open Cmdliner
open Printf
open Prelude

let sys fmt =
  ksprintf
    (fun s ->
      print_endline s;
      assert (Sys.command s = 0))
    fmt

let synth output =
  let json =
    let data = Data.(yojson_of_t !t) in
    let resource = Resource.(yojson_of_t !t) in
    let assoc = [] in
    let assoc =
      match data with
      | `Assoc [] -> assoc
      | json -> ("data", json) :: assoc
    in
    let assoc =
      match resource with
      | `Assoc [] -> assoc
      | json -> ("resource", json) :: assoc
    in
    `Assoc assoc
  in
  match output with
  | None -> print_endline (Yojson.Safe.pretty_to_string json)
  | Some filename ->
      let tmp = Printf.sprintf "%s.tmp" filename in
      Out_channel.with_open_bin tmp (fun oc ->
          Yojson.Safe.pretty_to_channel oc json);
      Unix.rename tmp filename

let output_t =
  Arg.(
    value
    & opt (some string) None
    & info [ "o"; "output" ] ~docv:"OUTPUT" ~doc:"output file")

let synth_cmd =
  let info =
    Cmd.info "synth" ~doc:"synthesize terraform configuration"
  in
  Cmd.v info Term.(const synth $ output_t)

let plan_cmd =
  let f () =
    synth (Some "gen.tf.json");
    sys "terraform plan"
  in
  let info = Cmd.info "plan" ~doc:"plan tf" in
  Cmd.v info Term.(const f $ const ())

let apply_cmd =
  let f () =
    synth (Some "gen.tf.json");
    sys "terraform apply"
  in
  let info = Cmd.info "apply" ~doc:"apply tf plan" in
  Cmd.v info Term.(const f $ const ())

let commands = [ apply_cmd; plan_cmd; synth_cmd ]

let main_cmd =
  let info = Cmd.info "tf" ~version:"%%VERSION%%" in
  let default =
    Term.(ret (const (fun () -> `Help (`Pager, None)) $ const ()))
  in
  Cmd.group info ~default commands

let run () = Stdlib.exit (Cmd.eval main_cmd)
