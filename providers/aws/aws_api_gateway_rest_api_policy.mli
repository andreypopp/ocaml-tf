(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_rest_api_policy

val aws_api_gateway_rest_api_policy :
  ?id:string prop ->
  policy:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_rest_api_policy

val yojson_of_aws_api_gateway_rest_api_policy :
  aws_api_gateway_rest_api_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  policy : string prop;
  rest_api_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  policy:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  policy:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
