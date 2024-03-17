(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_gateway__api_metadata
type azurerm_spring_cloud_gateway__client_authorization
type azurerm_spring_cloud_gateway__cors
type azurerm_spring_cloud_gateway__local_response_cache_per_instance
type azurerm_spring_cloud_gateway__local_response_cache_per_route
type azurerm_spring_cloud_gateway__quota
type azurerm_spring_cloud_gateway__sso
type azurerm_spring_cloud_gateway__timeouts
type azurerm_spring_cloud_gateway

val azurerm_spring_cloud_gateway :
  ?application_performance_monitoring_ids:string list ->
  ?application_performance_monitoring_types:string list ->
  ?environment_variables:(string * string) list ->
  ?https_only:bool ->
  ?instance_count:float ->
  ?public_network_access_enabled:bool ->
  ?sensitive_environment_variables:(string * string) list ->
  ?timeouts:azurerm_spring_cloud_gateway__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  api_metadata:azurerm_spring_cloud_gateway__api_metadata list ->
  client_authorization:
    azurerm_spring_cloud_gateway__client_authorization list ->
  cors:azurerm_spring_cloud_gateway__cors list ->
  local_response_cache_per_instance:
    azurerm_spring_cloud_gateway__local_response_cache_per_instance
    list ->
  local_response_cache_per_route:
    azurerm_spring_cloud_gateway__local_response_cache_per_route list ->
  quota:azurerm_spring_cloud_gateway__quota list ->
  sso:azurerm_spring_cloud_gateway__sso list ->
  string ->
  unit
