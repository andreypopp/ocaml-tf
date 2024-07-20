(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_account_policy

val aws_cloudwatch_log_account_policy :
  ?id:string prop ->
  ?scope:string prop ->
  ?selection_criteria:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  policy_type:string prop ->
  unit ->
  aws_cloudwatch_log_account_policy

val yojson_of_aws_cloudwatch_log_account_policy :
  aws_cloudwatch_log_account_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
  policy_type : string prop;
  scope : string prop;
  selection_criteria : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?scope:string prop ->
  ?selection_criteria:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  policy_type:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?scope:string prop ->
  ?selection_criteria:string prop ->
  policy_document:string prop ->
  policy_name:string prop ->
  policy_type:string prop ->
  string ->
  t Tf_core.resource
