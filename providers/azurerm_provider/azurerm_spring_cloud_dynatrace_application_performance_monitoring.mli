(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts

type azurerm_spring_cloud_dynatrace_application_performance_monitoring

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

val azurerm_spring_cloud_dynatrace_application_performance_monitoring :
  ?api_token:string prop ->
  ?api_url:string prop ->
  ?environment_id:string prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts ->
  connection_point:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  tenant:string prop ->
  tenant_token:string prop ->
  string ->
  t
