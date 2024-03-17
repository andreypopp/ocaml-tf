(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_gateway_response

val aws_api_gateway_gateway_response :
  ?response_parameters:(string * string) list ->
  ?response_templates:(string * string) list ->
  ?status_code:string ->
  response_type:string ->
  rest_api_id:string ->
  string ->
  unit
