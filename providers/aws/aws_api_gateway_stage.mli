(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_log_settings

val access_log_settings :
  destination_arn:string prop ->
  format:string prop ->
  unit ->
  access_log_settings

type canary_settings

val canary_settings :
  ?percent_traffic:float prop ->
  ?stage_variable_overrides:(string * string prop) list ->
  ?use_stage_cache:bool prop ->
  unit ->
  canary_settings

type aws_api_gateway_stage

val aws_api_gateway_stage :
  ?cache_cluster_enabled:bool prop ->
  ?cache_cluster_size:string prop ->
  ?client_certificate_id:string prop ->
  ?description:string prop ->
  ?documentation_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?xray_tracing_enabled:bool prop ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  access_log_settings:access_log_settings list ->
  canary_settings:canary_settings list ->
  unit ->
  aws_api_gateway_stage

val yojson_of_aws_api_gateway_stage : aws_api_gateway_stage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cache_cluster_enabled : bool prop;
  cache_cluster_size : string prop;
  client_certificate_id : string prop;
  deployment_id : string prop;
  description : string prop;
  documentation_version : string prop;
  execution_arn : string prop;
  id : string prop;
  invoke_url : string prop;
  rest_api_id : string prop;
  stage_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  variables : (string * string) list prop;
  web_acl_arn : string prop;
  xray_tracing_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_cluster_enabled:bool prop ->
  ?cache_cluster_size:string prop ->
  ?client_certificate_id:string prop ->
  ?description:string prop ->
  ?documentation_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?xray_tracing_enabled:bool prop ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  access_log_settings:access_log_settings list ->
  canary_settings:canary_settings list ->
  string ->
  t

val make :
  ?cache_cluster_enabled:bool prop ->
  ?cache_cluster_size:string prop ->
  ?client_certificate_id:string prop ->
  ?description:string prop ->
  ?documentation_version:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?variables:(string * string prop) list ->
  ?xray_tracing_enabled:bool prop ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  access_log_settings:access_log_settings list ->
  canary_settings:canary_settings list ->
  string ->
  t Tf_core.resource
