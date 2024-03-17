(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method_response

val aws_api_gateway_method_response :
  ?response_models:(string * string) list ->
  ?response_parameters:(string * bool) list ->
  http_method:string ->
  resource_id:string ->
  rest_api_id:string ->
  status_code:string ->
  string ->
  unit
