(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_resource_policy

val aws_cloudwatch_log_resource_policy :
  ?id:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  unit ->
  aws_cloudwatch_log_resource_policy

val yojson_of_aws_cloudwatch_log_resource_policy :
  aws_cloudwatch_log_resource_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  string ->
  t
