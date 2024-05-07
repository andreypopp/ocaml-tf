(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_app_environment

val azurerm_container_app_environment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_app_environment

val yojson_of_azurerm_container_app_environment :
  azurerm_container_app_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_domain : string prop;
  docker_bridge_cidr : string prop;
  id : string prop;
  infrastructure_subnet_id : string prop;
  internal_load_balancer_enabled : bool prop;
  location : string prop;
  log_analytics_workspace_name : string prop;
  name : string prop;
  platform_reserved_cidr : string prop;
  platform_reserved_dns_ip_address : string prop;
  resource_group_name : string prop;
  static_ip_address : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
