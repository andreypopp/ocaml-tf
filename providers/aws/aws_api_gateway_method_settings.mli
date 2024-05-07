(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings

val settings :
  ?cache_data_encrypted:bool prop ->
  ?cache_ttl_in_seconds:float prop ->
  ?caching_enabled:bool prop ->
  ?data_trace_enabled:bool prop ->
  ?logging_level:string prop ->
  ?metrics_enabled:bool prop ->
  ?require_authorization_for_cache_control:bool prop ->
  ?throttling_burst_limit:float prop ->
  ?throttling_rate_limit:float prop ->
  ?unauthorized_cache_control_header_strategy:string prop ->
  unit ->
  settings

type aws_api_gateway_method_settings

val aws_api_gateway_method_settings :
  ?id:string prop ->
  method_path:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  settings:settings list ->
  unit ->
  aws_api_gateway_method_settings

val yojson_of_aws_api_gateway_method_settings :
  aws_api_gateway_method_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  method_path : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  method_path:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  settings:settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  method_path:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  settings:settings list ->
  string ->
  t Tf_core.resource
