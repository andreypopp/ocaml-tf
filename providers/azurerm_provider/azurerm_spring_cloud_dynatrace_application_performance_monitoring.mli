(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts

type azurerm_spring_cloud_dynatrace_application_performance_monitoring

val azurerm_spring_cloud_dynatrace_application_performance_monitoring :
  ?api_token:string ->
  ?api_url:string ->
  ?environment_id:string ->
  ?globally_enabled:bool ->
  ?timeouts:
    azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts ->
  connection_point:string ->
  name:string ->
  spring_cloud_service_id:string ->
  tenant:string ->
  tenant_token:string ->
  string ->
  unit
