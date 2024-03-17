(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_invocation

val aws_lambda_invocation :
  ?id:string ->
  ?lifecycle_scope:string ->
  ?qualifier:string ->
  ?terraform_key:string ->
  ?triggers:(string * string) list ->
  function_name:string ->
  input:string ->
  string ->
  unit
