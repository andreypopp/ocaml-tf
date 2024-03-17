(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_data_protection_policy

type t = private {
  id : string prop;
  log_group_name : string prop;
  policy_document : string prop;
}

val aws_cloudwatch_log_data_protection_policy :
  ?id:string prop ->
  log_group_name:string prop ->
  policy_document:string prop ->
  string ->
  t
