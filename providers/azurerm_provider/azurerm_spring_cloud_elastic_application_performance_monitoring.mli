(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts

type azurerm_spring_cloud_elastic_application_performance_monitoring

val azurerm_spring_cloud_elastic_application_performance_monitoring :
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts ->
  application_packages:string prop list ->
  name:string prop ->
  server_url:string prop ->
  service_name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  unit
