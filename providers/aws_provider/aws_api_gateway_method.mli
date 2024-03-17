(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_method

val aws_api_gateway_method :
  ?api_key_required:bool ->
  ?authorization_scopes:string list ->
  ?authorizer_id:string ->
  ?operation_name:string ->
  ?request_models:(string * string) list ->
  ?request_parameters:(string * bool) list ->
  ?request_validator_id:string ->
  authorization:string ->
  http_method:string ->
  resource_id:string ->
  rest_api_id:string ->
  string ->
  unit
