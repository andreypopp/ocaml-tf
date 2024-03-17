(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_invocation

type t = private {
  function_name : string prop;
  id : string prop;
  input : string prop;
  lifecycle_scope : string prop;
  qualifier : string prop;
  result : string prop;
  terraform_key : string prop;
  triggers : (string * string) list prop;
}

val aws_lambda_invocation :
  ?id:string prop ->
  ?lifecycle_scope:string prop ->
  ?qualifier:string prop ->
  ?terraform_key:string prop ->
  ?triggers:(string * string prop) list ->
  function_name:string prop ->
  input:string prop ->
  string ->
  t
