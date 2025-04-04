(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type tls_config

val tls_config :
  ?insecure_skip_verification:bool prop -> unit -> tls_config

type aws_api_gateway_integration

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
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?timeout_milliseconds:float prop ->
  ?uri:string prop ->
  ?tls_config:tls_config list ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  type_:string prop ->
  unit ->
  aws_api_gateway_integration

val yojson_of_aws_api_gateway_integration :
  aws_api_gateway_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  request_parameters : string Tf_core.assoc prop;
  request_templates : string Tf_core.assoc prop;
  resource_id : string prop;
  rest_api_id : string prop;
  timeout_milliseconds : float prop;
  type_ : string prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_key_parameters:string prop list ->
  ?cache_namespace:string prop ->
  ?connection_id:string prop ->
  ?connection_type:string prop ->
  ?content_handling:string prop ->
  ?credentials:string prop ->
  ?id:string prop ->
  ?integration_http_method:string prop ->
  ?passthrough_behavior:string prop ->
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?timeout_milliseconds:float prop ->
  ?uri:string prop ->
  ?tls_config:tls_config list ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?cache_key_parameters:string prop list ->
  ?cache_namespace:string prop ->
  ?connection_id:string prop ->
  ?connection_type:string prop ->
  ?content_handling:string prop ->
  ?credentials:string prop ->
  ?id:string prop ->
  ?integration_http_method:string prop ->
  ?passthrough_behavior:string prop ->
  ?request_parameters:string prop Tf_core.assoc ->
  ?request_templates:string prop Tf_core.assoc ->
  ?timeout_milliseconds:float prop ->
  ?uri:string prop ->
  ?tls_config:tls_config list ->
  http_method:string prop ->
  resource_id:string prop ->
  rest_api_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
