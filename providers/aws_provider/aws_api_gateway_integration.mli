(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_integration__tls_config
type aws_api_gateway_integration

type t = private {
  cache_key_parameters : string list prop;
  cache_namespace : string prop;
  connection_id : string prop;
  connection_type : string prop;
  content_handling : string prop;
  credentials : string prop;
  http_method : string prop;
  id : string prop;
  integration_http_method : string prop;
  passthrough_behavior : string prop;
  request_parameters : (string * string) list prop;
  request_templates : (string * string) list prop;
  resource_id : string prop;
  rest_api_id : string prop;
  timeout_milliseconds : float prop;
  type_ : string prop;
  uri : string prop;
}

val aws_api_gateway_integration :
  ?cache_key_parameters:string prop list ->
  ?cache_namespace:string prop ->
  ?connection_id:string prop ->
  ?connection_type:string prop ->
  ?content_handling:string prop ->
  ?credentials:string prop ->
  ?id:string prop ->
  ?integration_http_method:string prop ->
  ?passthrough_behavior:string prop ->
  ?request_parameters:(string * string prop) list ->
  ?request_templates:(string * string prop) list ->
  ?timeout_milliseconds:float prop ->
  ?uri:string prop ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  type_:string prop ->
  tls_config:aws_api_gateway_integration__tls_config list ->
  string ->
  t
