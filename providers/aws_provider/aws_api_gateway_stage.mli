(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_stage__access_log_settings
type aws_api_gateway_stage__canary_settings
type aws_api_gateway_stage

val aws_api_gateway_stage :
  ?cache_cluster_enabled:bool ->
  ?cache_cluster_size:string ->
  ?client_certificate_id:string ->
  ?description:string ->
  ?documentation_version:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?variables:(string * string) list ->
  ?xray_tracing_enabled:bool ->
  deployment_id:string ->
  rest_api_id:string ->
  stage_name:string ->
  access_log_settings:aws_api_gateway_stage__access_log_settings list ->
  canary_settings:aws_api_gateway_stage__canary_settings list ->
  string ->
  unit
