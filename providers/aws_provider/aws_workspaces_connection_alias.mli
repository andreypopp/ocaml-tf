(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_connection_alias__timeouts
type aws_workspaces_connection_alias

val aws_workspaces_connection_alias :
  ?tags:(string * string) list ->
  ?timeouts:aws_workspaces_connection_alias__timeouts ->
  connection_string:string ->
  string ->
  unit
