(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_gateway_response

val aws_api_gateway_gateway_response :
  ?id:string prop ->
  ?response_parameters:(string * string prop) list ->
  ?response_templates:(string * string prop) list ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_gateway_response

val yojson_of_aws_api_gateway_gateway_response :
  aws_api_gateway_gateway_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  response_parameters : (string * string) list prop;
  response_templates : (string * string) list prop;
  response_type : string prop;
  rest_api_id : string prop;
  status_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?response_parameters:(string * string prop) list ->
  ?response_templates:(string * string prop) list ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?response_parameters:(string * string prop) list ->
  ?response_templates:(string * string prop) list ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
