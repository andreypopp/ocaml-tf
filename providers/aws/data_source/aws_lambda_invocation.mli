(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_invocation

val aws_lambda_invocation :
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  input:string prop ->
  unit ->
  aws_lambda_invocation

val yojson_of_aws_lambda_invocation : aws_lambda_invocation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  function_name : string prop;
  id : string prop;
  input : string prop;
  qualifier : string prop;
  result : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  input:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  input:string prop ->
  string ->
  t Tf_core.resource
