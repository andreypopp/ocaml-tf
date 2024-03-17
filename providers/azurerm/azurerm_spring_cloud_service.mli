(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_service__config_server_git_setting__http_basic_auth

type azurerm_spring_cloud_service__config_server_git_setting__repository__http_basic_auth

type azurerm_spring_cloud_service__config_server_git_setting__repository__ssh_auth

type azurerm_spring_cloud_service__config_server_git_setting__repository

type azurerm_spring_cloud_service__config_server_git_setting__ssh_auth
type azurerm_spring_cloud_service__config_server_git_setting
type azurerm_spring_cloud_service__container_registry
type azurerm_spring_cloud_service__default_build_service
type azurerm_spring_cloud_service__marketplace
type azurerm_spring_cloud_service__network
type azurerm_spring_cloud_service__timeouts
type azurerm_spring_cloud_service__trace

type azurerm_spring_cloud_service__required_network_traffic_rules = {
  direction : string prop;  (** direction *)
  fqdns : string prop list;  (** fqdns *)
  ip_addresses : string prop list;  (** ip_addresses *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

type azurerm_spring_cloud_service

type t = private {
  build_agent_pool_size : string prop;
  id : string prop;
  location : string prop;
  log_stream_public_endpoint_enabled : bool prop;
  managed_environment_id : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    azurerm_spring_cloud_service__required_network_traffic_rules list
    prop;
  resource_group_name : string prop;
  service_registry_enabled : bool prop;
  service_registry_id : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val azurerm_spring_cloud_service :
  ?build_agent_pool_size:string prop ->
  ?id:string prop ->
  ?log_stream_public_endpoint_enabled:bool prop ->
  ?managed_environment_id:string prop ->
  ?service_registry_enabled:bool prop ->
  ?sku_name:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:azurerm_spring_cloud_service__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  config_server_git_setting:
    azurerm_spring_cloud_service__config_server_git_setting list ->
  container_registry:
    azurerm_spring_cloud_service__container_registry list ->
  default_build_service:
    azurerm_spring_cloud_service__default_build_service list ->
  marketplace:azurerm_spring_cloud_service__marketplace list ->
  network:azurerm_spring_cloud_service__network list ->
  trace:azurerm_spring_cloud_service__trace list ->
  string ->
  t
