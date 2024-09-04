(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_api_gateway_integration_response

val aws_api_gateway_integration_response :
  ?content_handling:string prop ->
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?selection_pattern:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  unit ->
  aws_api_gateway_integration_response

val yojson_of_aws_api_gateway_integration_response :
  aws_api_gateway_integration_response -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content_handling : string prop;
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_parameters : string Tf_core.assoc prop;
  response_templates : string Tf_core.assoc prop;
  rest_api_id : string prop;
  selection_pattern : string prop;
  status_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_handling:string prop ->
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?selection_pattern:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t

val make :
  ?content_handling:string prop ->
  ?id:string prop ->
  ?response_parameters:string prop Tf_core.assoc ->
  ?response_templates:string prop Tf_core.assoc ->
  ?selection_pattern:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t Tf_core.resource
