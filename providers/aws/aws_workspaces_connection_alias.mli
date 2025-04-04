(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_workspaces_connection_alias

val aws_workspaces_connection_alias :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  unit ->
  aws_workspaces_connection_alias

val yojson_of_aws_workspaces_connection_alias :
  aws_workspaces_connection_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_string : string prop;
  id : string prop;
  owner_account_id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  connection_string:string prop ->
  string ->
  t Tf_core.resource
