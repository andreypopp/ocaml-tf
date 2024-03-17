(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts

type azurerm_spring_cloud_application_insights_application_performance_monitoring

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

val azurerm_spring_cloud_application_insights_application_performance_monitoring :
  ?connection_string:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?role_instance:string prop ->
  ?role_name:string prop ->
  ?sampling_percentage:float prop ->
  ?sampling_requests_per_second:float prop ->
  ?timeouts:
    azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t
