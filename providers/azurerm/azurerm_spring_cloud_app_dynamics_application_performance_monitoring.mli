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
  ?timeouts:timeouts ->
  agent_account_access_key:string prop ->
  agent_account_name:string prop ->
  controller_host_name:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  unit ->
  azurerm_spring_cloud_app_dynamics_application_performance_monitoring

val yojson_of_azurerm_spring_cloud_app_dynamics_application_performance_monitoring :
  azurerm_spring_cloud_app_dynamics_application_performance_monitoring ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_account_access_key : string prop;
  agent_account_name : string prop;
  agent_application_name : string prop;
  agent_node_name : string prop;
  agent_tier_name : string prop;
  agent_unique_host_id : string prop;
  controller_host_name : string prop;
  controller_port : float prop;
  controller_ssl_enabled : bool prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?agent_application_name:string prop ->
  ?agent_node_name:string prop ->
  ?agent_tier_name:string prop ->
  ?agent_unique_host_id:string prop ->
  ?controller_port:float prop ->
  ?controller_ssl_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  agent_account_access_key:string prop ->
  agent_account_name:string prop ->
  controller_host_name:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t

val make :
  ?agent_application_name:string prop ->
  ?agent_node_name:string prop ->
  ?agent_tier_name:string prop ->
  ?agent_unique_host_id:string prop ->
  ?controller_port:float prop ->
  ?controller_ssl_enabled:bool prop ->
  ?globally_enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  agent_account_access_key:string prop ->
  agent_account_name:string prop ->
  controller_host_name:string prop ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  string ->
  t Tf_core.resource
