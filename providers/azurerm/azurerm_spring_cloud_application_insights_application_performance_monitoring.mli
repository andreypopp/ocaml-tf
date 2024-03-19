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

type azurerm_spring_cloud_application_insights_application_performance_monitoring

val azurerm_spring_cloud_application_insights_application_performance_monitoring :
  ?connection_string:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?role_instance:string prop ->
  ?role_name:string prop ->
  ?sampling_percentage:float prop ->
  ?sampling_requests_per_second:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_application_insights_application_performance_monitoring

val yojson_of_azurerm_spring_cloud_application_insights_application_performance_monitoring :
  azurerm_spring_cloud_application_insights_application_performance_monitoring ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  connection_string : string prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  role_instance : string prop;
  role_name : string prop;
  sampling_percentage : float prop;
  sampling_requests_per_second : float prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connection_string:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?role_instance:string prop ->
  ?role_name:string prop ->
  ?sampling_percentage:float prop ->
  ?sampling_requests_per_second:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t
