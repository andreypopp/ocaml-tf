(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_elastic_application_performance_monitoring

val azurerm_spring_cloud_elastic_application_performance_monitoring :
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_packages:string prop list ->
  name:string prop ->
  server_url:string prop ->
  service_name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_elastic_application_performance_monitoring

val yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring :
  azurerm_spring_cloud_elastic_application_performance_monitoring ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  application_packages : string list prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  server_url : string prop;
  service_name : string prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  application_packages:string prop list ->
  name:string prop ->
  server_url:string prop ->
  service_name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t
