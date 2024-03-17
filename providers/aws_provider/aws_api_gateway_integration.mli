(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_integration__tls_config
type aws_api_gateway_integration

val aws_api_gateway_integration :
  ?cache_key_parameters:string list ->
  ?connection_id:string ->
  ?connection_type:string ->
  ?content_handling:string ->
  ?credentials:string ->
  ?integration_http_method:string ->
  ?request_parameters:(string * string) list ->
  ?request_templates:(string * string) list ->
  ?timeout_milliseconds:float ->
  ?uri:string ->
  http_method:string ->
  resource_id:string ->
  rest_api_id:string ->
  type_:string ->
  tls_config:aws_api_gateway_integration__tls_config list ->
  string ->
  unit
