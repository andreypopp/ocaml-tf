(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method_response

val aws_api_gateway_method_response :
  ?id:string prop ->
  ?response_models:(string * string prop) list ->
  ?response_parameters:(string * bool prop) list ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  status_code:string prop ->
  string ->
  unit
