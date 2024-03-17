(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_resource_policy

type t = private {
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
}

val aws_cloudwatch_log_resource_policy :
  ?id:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  string ->
  t
