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
  direction : string;  (** direction *)
  fqdns : string list;  (** fqdns *)
  ip_addresses : string list;  (** ip_addresses *)
  port : float;  (** port *)
  protocol : string;  (** protocol *)
}

type azurerm_spring_cloud_service

val azurerm_spring_cloud_service :
  ?build_agent_pool_size:string ->
  ?id:string ->
  ?log_stream_public_endpoint_enabled:bool ->
  ?managed_environment_id:string ->
  ?service_registry_enabled:bool ->
  ?sku_name:string ->
  ?sku_tier:string ->
  ?tags:(string * string) list ->
  ?zone_redundant:bool ->
  ?timeouts:azurerm_spring_cloud_service__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
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
  unit
