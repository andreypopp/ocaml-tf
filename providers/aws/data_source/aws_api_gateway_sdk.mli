(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_sdk

val aws_api_gateway_sdk :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  rest_api_id:string prop ->
  sdk_type:string prop ->
  stage_name:string prop ->
  unit ->
  aws_api_gateway_sdk

val yojson_of_aws_api_gateway_sdk : aws_api_gateway_sdk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  content_disposition : string prop;
  content_type : string prop;
  id : string prop;
  parameters : (string * string) list prop;
  rest_api_id : string prop;
  sdk_type : string prop;
  stage_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  rest_api_id:string prop ->
  sdk_type:string prop ->
  stage_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  rest_api_id:string prop ->
  sdk_type:string prop ->
  stage_name:string prop ->
  string ->
  t Tf_core.resource
