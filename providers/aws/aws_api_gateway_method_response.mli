(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_method_response

val aws_api_gateway_method_response :
  ?id:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  ?response_parameters:bool prop Tf_core.assoc ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  unit ->
  aws_api_gateway_method_response

val yojson_of_aws_api_gateway_method_response :
  aws_api_gateway_method_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_models : string Tf_core.assoc prop;
  response_parameters : bool Tf_core.assoc prop;
  rest_api_id : string prop;
  status_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  ?response_parameters:bool prop Tf_core.assoc ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?response_models:string prop Tf_core.assoc ->
  ?response_parameters:bool prop Tf_core.assoc ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t Tf_core.resource
