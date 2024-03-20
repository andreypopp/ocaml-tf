(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_dynatrace_application_performance_monitoring

val azurerm_spring_cloud_dynatrace_application_performance_monitoring :
  ?api_token:string prop ->
  ?api_url:string prop ->
  ?environment_id:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_point:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  tenant:string prop ->
  tenant_token:string prop ->
  unit ->
  azurerm_spring_cloud_dynatrace_application_performance_monitoring

val yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring :
  azurerm_spring_cloud_dynatrace_application_performance_monitoring ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  api_token : string prop;
  api_url : string prop;
  connection_point : string prop;
  environment_id : string prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  tenant : string prop;
  tenant_token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_token:string prop ->
  ?api_url:string prop ->
  ?environment_id:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_point:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  tenant:string prop ->
  tenant_token:string prop ->
  string ->
  t

val make :
  ?api_token:string prop ->
  ?api_url:string prop ->
  ?environment_id:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  connection_point:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  tenant:string prop ->
  tenant_token:string prop ->
  string ->
  t Tf_core.resource
