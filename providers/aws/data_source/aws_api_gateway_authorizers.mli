(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_authorizers

val aws_api_gateway_authorizers :
  ?id:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_authorizers

val yojson_of_aws_api_gateway_authorizers :
  aws_api_gateway_authorizers -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  ids : string list prop;
  rest_api_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
