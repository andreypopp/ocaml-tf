(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_invocation

val aws_lambda_invocation :
  ?id:string prop ->
  ?lifecycle_scope:string prop ->
  ?qualifier:string prop ->
  ?terraform_key:string prop ->
  ?triggers:(string * string prop) list ->
  function_name:string prop ->
  input:string prop ->
  string ->
  unit
