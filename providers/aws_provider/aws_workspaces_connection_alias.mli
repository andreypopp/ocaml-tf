(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_connection_alias__timeouts
type aws_workspaces_connection_alias

type t = private {
  connection_string : string prop;
  id : string prop;
  owner_account_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_workspaces_connection_alias :
  ?tags:(string * string prop) list ->
  ?timeouts:aws_workspaces_connection_alias__timeouts ->
  connection_string:string prop ->
  string ->
  t
