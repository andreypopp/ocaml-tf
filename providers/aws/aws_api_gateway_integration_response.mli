(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_integration_response

type t = private {
  content_handling : string prop;
  http_method : string prop;
  id : string prop;
  resource_id : string prop;
  response_parameters : (string * string) list prop;
  response_templates : (string * string) list prop;
  rest_api_id : string prop;
  selection_pattern : string prop;
  status_code : string prop;
}

val aws_api_gateway_integration_response :
  ?content_handling:string prop ->
  ?id:string prop ->
  ?response_parameters:(string * string prop) list ->
  ?response_templates:(string * string prop) list ->
  ?selection_pattern:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  t
