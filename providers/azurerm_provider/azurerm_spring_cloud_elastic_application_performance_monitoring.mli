(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts

type azurerm_spring_cloud_elastic_application_performance_monitoring

val azurerm_spring_cloud_elastic_application_performance_monitoring :
  ?globally_enabled:bool ->
  ?timeouts:
    azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts ->
  application_packages:string list ->
  name:string ->
  server_url:string ->
  service_name:string ->
  spring_cloud_service_id:string ->
  string ->
  unit
