(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts

type azurerm_spring_cloud_application_insights_application_performance_monitoring

val azurerm_spring_cloud_application_insights_application_performance_monitoring :
  ?connection_string:string ->
  ?globally_enabled:bool ->
  ?role_instance:string ->
  ?role_name:string ->
  ?sampling_percentage:float ->
  ?sampling_requests_per_second:float ->
  ?timeouts:
    azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts ->
  name:string ->
  spring_cloud_service_id:string ->
  string ->
  unit
