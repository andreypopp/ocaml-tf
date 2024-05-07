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

type workload_profile

val workload_profile :
  maximum_count:float prop ->
  minimum_count:float prop ->
  name:string prop ->
  workload_profile_type:string prop ->
  unit ->
  workload_profile

type azurerm_container_app_environment

val azurerm_container_app_environment :
  ?dapr_application_insights_connection_string:string prop ->
  ?id:string prop ->
  ?infrastructure_resource_group_name:string prop ->
  ?infrastructure_subnet_id:string prop ->
  ?internal_load_balancer_enabled:bool prop ->
  ?log_analytics_workspace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workload_profile:workload_profile list ->
  unit ->
  azurerm_container_app_environment

val yojson_of_azurerm_container_app_environment :
  azurerm_container_app_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dapr_application_insights_connection_string : string prop;
  default_domain : string prop;
  docker_bridge_cidr : string prop;
  id : string prop;
  infrastructure_resource_group_name : string prop;
  infrastructure_subnet_id : string prop;
  internal_load_balancer_enabled : bool prop;
  location : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  platform_reserved_cidr : string prop;
  platform_reserved_dns_ip_address : string prop;
  resource_group_name : string prop;
  static_ip_address : string prop;
  tags : (string * string) list prop;
  zone_redundancy_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?dapr_application_insights_connection_string:string prop ->
  ?id:string prop ->
  ?infrastructure_resource_group_name:string prop ->
  ?infrastructure_subnet_id:string prop ->
  ?internal_load_balancer_enabled:bool prop ->
  ?log_analytics_workspace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workload_profile:workload_profile list ->
  string ->
  t

val make :
  ?dapr_application_insights_connection_string:string prop ->
  ?id:string prop ->
  ?infrastructure_resource_group_name:string prop ->
  ?infrastructure_subnet_id:string prop ->
  ?internal_load_balancer_enabled:bool prop ->
  ?log_analytics_workspace_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundancy_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  workload_profile:workload_profile list ->
  string ->
  t Tf_core.resource
