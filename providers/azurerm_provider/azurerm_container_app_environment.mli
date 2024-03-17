(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment__timeouts
type azurerm_container_app_environment__workload_profile
type azurerm_container_app_environment

val azurerm_container_app_environment :
  ?dapr_application_insights_connection_string:string prop ->
  ?id:string prop ->
  ?infrastructure_resource_group_name:string prop ->
  ?infrastructure_subnet_id:string prop ->
  ?internal_load_balancer_enabled:bool prop ->
  ?log_analytics_workspace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:azurerm_container_app_environment__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workload_profile:
    azurerm_container_app_environment__workload_profile list ->
  string ->
  unit
