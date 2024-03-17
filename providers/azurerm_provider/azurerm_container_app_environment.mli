(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment__timeouts
type azurerm_container_app_environment__workload_profile
type azurerm_container_app_environment

val azurerm_container_app_environment :
  ?dapr_application_insights_connection_string:string ->
  ?id:string ->
  ?infrastructure_resource_group_name:string ->
  ?infrastructure_subnet_id:string ->
  ?internal_load_balancer_enabled:bool ->
  ?log_analytics_workspace_id:string ->
  ?tags:(string * string) list ->
  ?zone_redundancy_enabled:bool ->
  ?timeouts:azurerm_container_app_environment__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  workload_profile:
    azurerm_container_app_environment__workload_profile list ->
  string ->
  unit
