(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_gateway_response

val aws_api_gateway_gateway_response :
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  unit ->
  aws_api_gateway_gateway_response

val yojson_of_aws_api_gateway_gateway_response :
  aws_api_gateway_gateway_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  response_parameters : string Tf_core.assoc prop;
  response_templates : string Tf_core.assoc prop;
  response_type : string prop;
  rest_api_id : string prop;
  status_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?status_code:string prop ->
  response_type:string prop ->
  rest_api_id:string prop ->
  string ->
  t Tf_core.resource
