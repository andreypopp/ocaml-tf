(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_resource

val aws_api_gateway_resource :
  ?id:string prop ->
  parent_id:string prop ->
  path_part:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_resource

val yojson_of_aws_api_gateway_resource :
  aws_api_gateway_resource -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  parent_id : string prop;
  path : string prop;
  path_part : string prop;
  rest_api_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent_id:string prop ->
  path_part:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent_id:string prop ->
  path_part:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
