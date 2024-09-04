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
  ?stage_variable_overrides:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?variables:string prop Tf_core.assoc ->
  ?xray_tracing_enabled:bool prop ->
  ?access_log_settings:access_log_settings list ->
  ?canary_settings:canary_settings list ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  unit ->
  aws_api_gateway_stage

val yojson_of_aws_api_gateway_stage : aws_api_gateway_stage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  variables : string Tf_core.assoc prop;
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?variables:string prop Tf_core.assoc ->
  ?xray_tracing_enabled:bool prop ->
  ?access_log_settings:access_log_settings list ->
  ?canary_settings:canary_settings list ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  string ->
  t

val make :
  ?cache_cluster_enabled:bool prop ->
  ?cache_cluster_size:string prop ->
  ?client_certificate_id:string prop ->
  ?description:string prop ->
  ?documentation_version:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?variables:string prop Tf_core.assoc ->
  ?xray_tracing_enabled:bool prop ->
  ?access_log_settings:access_log_settings list ->
  ?canary_settings:canary_settings list ->
  deployment_id:string prop ->
  rest_api_id:string prop ->
  stage_name:string prop ->
  string ->
  t Tf_core.resource
