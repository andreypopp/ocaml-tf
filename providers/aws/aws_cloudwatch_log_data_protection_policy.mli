(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_data_protection_policy

val aws_cloudwatch_log_data_protection_policy :
  ?id:string prop ->
  log_group_name:string prop ->
  policy_document:string prop ->
  unit ->
  aws_cloudwatch_log_data_protection_policy

val yojson_of_aws_cloudwatch_log_data_protection_policy :
  aws_cloudwatch_log_data_protection_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  log_group_name : string prop;
  policy_document : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  log_group_name:string prop ->
  policy_document:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  log_group_name:string prop ->
  policy_document:string prop ->
  string ->
  t Tf_core.resource
