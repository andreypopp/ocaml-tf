(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_integration_response

val aws_api_gateway_integration_response :
  ?content_handling:string ->
  ?response_parameters:(string * string) list ->
  ?response_templates:(string * string) list ->
  ?selection_pattern:string ->
  http_method:string ->
  resource_id:string ->
  rest_api_id:string ->
  status_code:string ->
  string ->
  unit
