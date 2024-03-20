(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_query_definition

val aws_cloudwatch_query_definition :
  ?id:string prop ->
  ?log_group_names:string prop list ->
  name:string prop ->
  query_string:string prop ->
  unit ->
  aws_cloudwatch_query_definition

val yojson_of_aws_cloudwatch_query_definition :
  aws_cloudwatch_query_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  log_group_names : string list prop;
  name : string prop;
  query_definition_id : string prop;
  query_string : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?log_group_names:string prop list ->
  name:string prop ->
  query_string:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?log_group_names:string prop list ->
  name:string prop ->
  query_string:string prop ->
  string ->
  t Tf_core.resource
