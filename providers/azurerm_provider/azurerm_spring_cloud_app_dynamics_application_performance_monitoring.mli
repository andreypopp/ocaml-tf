(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts

type azurerm_spring_cloud_app_dynamics_application_performance_monitoring

val azurerm_spring_cloud_app_dynamics_application_performance_monitoring :
  ?agent_application_name:string prop ->
  ?agent_node_name:string prop ->
  ?agent_tier_name:string prop ->
  ?agent_unique_host_id:string prop ->
  ?controller_port:float prop ->
  ?controller_ssl_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_spring_cloud_app_dynamics_application_performance_monitoring__timeouts ->
  agent_account_access_key:string prop ->
  agent_account_name:string prop ->
  controller_host_name:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  unit
