(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_invocation

val aws_lambda_invocation :
  ?id:string prop ->
  ?lifecycle_scope:string prop ->
  ?qualifier:string prop ->
  ?terraform_key:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  function_name:string prop ->
  input:string prop ->
  unit ->
  aws_lambda_invocation

val yojson_of_aws_lambda_invocation : aws_lambda_invocation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  function_name : string prop;
  id : string prop;
  input : string prop;
  lifecycle_scope : string prop;
  qualifier : string prop;
  result : string prop;
  terraform_key : string prop;
  triggers : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?lifecycle_scope:string prop ->
  ?qualifier:string prop ->
  ?terraform_key:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  function_name:string prop ->
  input:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?lifecycle_scope:string prop ->
  ?qualifier:string prop ->
  ?terraform_key:string prop ->
  ?triggers:string prop Tf_core.assoc ->
  function_name:string prop ->
  input:string prop ->
  string ->
  t Tf_core.resource
