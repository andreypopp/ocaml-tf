(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_stage__access_log_settings
type aws_api_gateway_stage__canary_settings
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
  access_log_settings:aws_api_gateway_stage__access_log_settings list ->
  canary_settings:aws_api_gateway_stage__canary_settings list ->
  string ->
  unit
