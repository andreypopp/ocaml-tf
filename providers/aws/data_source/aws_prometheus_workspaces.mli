(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_prometheus_workspaces

val aws_prometheus_workspaces :
  ?alias_prefix:string prop ->
  ?id:string prop ->
  unit ->
  aws_prometheus_workspaces

val yojson_of_aws_prometheus_workspaces :
  aws_prometheus_workspaces -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_prefix : string prop;
  aliases : string list prop;
  arns : string list prop;
  id : string prop;
  workspace_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias_prefix:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?alias_prefix:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
