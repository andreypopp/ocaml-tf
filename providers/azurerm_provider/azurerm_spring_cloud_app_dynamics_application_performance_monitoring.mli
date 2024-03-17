(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring

val azurerm_spring_cloud_app_dynamics_application_performance_monitoring :
  ?agent_application_name:string ->
  ?agent_node_name:string ->
  ?agent_tier_name:string ->
  ?agent_unique_host_id:string ->
  ?controller_port:float ->
  ?controller_ssl_enabled:bool ->
  ?globally_enabled:bool ->
  ?id:string ->
  ?timeouts:
    azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts ->
  agent_account_access_key:string ->
  agent_account_name:string ->
  controller_host_name:string ->
  name:string ->
  spring_cloud_service_id:string ->
  string ->
  unit
