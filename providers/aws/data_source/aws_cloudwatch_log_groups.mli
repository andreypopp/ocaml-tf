(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_groups

val aws_cloudwatch_log_groups :
  ?id:string prop ->
  ?log_group_name_prefix:string prop ->
  unit ->
  aws_cloudwatch_log_groups

val yojson_of_aws_cloudwatch_log_groups :
  aws_cloudwatch_log_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arns : string list prop;
  id : string prop;
  log_group_name_prefix : string prop;
  log_group_names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?log_group_name_prefix:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?log_group_name_prefix:string prop ->
  string ->
  t Tf_core.resource
