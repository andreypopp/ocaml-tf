(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_stream

val aws_cloudwatch_log_stream :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  unit ->
  aws_cloudwatch_log_stream

val yojson_of_aws_cloudwatch_log_stream :
  aws_cloudwatch_log_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
