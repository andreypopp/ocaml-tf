(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type required_network_traffic_rules = {
  direction : string prop;  (** direction *)
  fqdns : string prop list;  (** fqdns *)
  ip_addresses : string prop list;  (** ip_addresses *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
}

[@@@deriving.end]

type config_server_git_setting__http_basic_auth

val config_server_git_setting__http_basic_auth :
  password:string prop ->
  username:string prop ->
  unit ->
  config_server_git_setting__http_basic_auth

type config_server_git_setting__repository__http_basic_auth

val config_server_git_setting__repository__http_basic_auth :
  password:string prop ->
  username:string prop ->
  unit ->
  config_server_git_setting__repository__http_basic_auth

type config_server_git_setting__repository__ssh_auth

val config_server_git_setting__repository__ssh_auth :
  ?host_key:string prop ->
  ?host_key_algorithm:string prop ->
  ?strict_host_key_checking_enabled:bool prop ->
  private_key:string prop ->
  unit ->
  config_server_git_setting__repository__ssh_auth

type config_server_git_setting__repository

val config_server_git_setting__repository :
  ?label:string prop ->
  ?pattern:string prop list ->
  ?search_paths:string prop list ->
  name:string prop ->
  uri:string prop ->
  http_basic_auth:
    config_server_git_setting__repository__http_basic_auth list ->
  ssh_auth:config_server_git_setting__repository__ssh_auth list ->
  unit ->
  config_server_git_setting__repository

type config_server_git_setting__ssh_auth

val config_server_git_setting__ssh_auth :
  ?host_key:string prop ->
  ?host_key_algorithm:string prop ->
  ?strict_host_key_checking_enabled:bool prop ->
  private_key:string prop ->
  unit ->
  config_server_git_setting__ssh_auth

type config_server_git_setting

val config_server_git_setting :
  ?label:string prop ->
  ?search_paths:string prop list ->
  uri:string prop ->
  http_basic_auth:config_server_git_setting__http_basic_auth list ->
  repository:config_server_git_setting__repository list ->
  ssh_auth:config_server_git_setting__ssh_auth list ->
  unit ->
  config_server_git_setting

type container_registry

val container_registry :
  name:string prop ->
  password:string prop ->
  server:string prop ->
  username:string prop ->
  unit ->
  container_registry

type default_build_service

val default_build_service :
  ?container_registry_name:string prop ->
  unit ->
  default_build_service

type marketplace

val marketplace :
  plan:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  marketplace

type network

val network :
  ?app_network_resource_group:string prop ->
  ?outbound_type:string prop ->
  ?read_timeout_seconds:float prop ->
  ?service_runtime_network_resource_group:string prop ->
  app_subnet_id:string prop ->
  cidr_ranges:string prop list ->
  service_runtime_subnet_id:string prop ->
  unit ->
  network

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type trace

val trace :
  ?connection_string:string prop ->
  ?sample_rate:float prop ->
  unit ->
  trace

type azurerm_spring_cloud_service

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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  config_server_git_setting:config_server_git_setting list ->
  container_registry:container_registry list ->
  default_build_service:default_build_service list ->
  marketplace:marketplace list ->
  network:network list ->
  trace:trace list ->
  unit ->
  azurerm_spring_cloud_service

val yojson_of_azurerm_spring_cloud_service :
  azurerm_spring_cloud_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  build_agent_pool_size : string prop;
  id : string prop;
  location : string prop;
  log_stream_public_endpoint_enabled : bool prop;
  managed_environment_id : string prop;
  name : string prop;
  outbound_public_ip_addresses : string list prop;
  required_network_traffic_rules :
    required_network_traffic_rules list prop;
  resource_group_name : string prop;
  service_registry_enabled : bool prop;
  service_registry_id : string prop;
  sku_name : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?build_agent_pool_size:string prop ->
  ?id:string prop ->
  ?log_stream_public_endpoint_enabled:bool prop ->
  ?managed_environment_id:string prop ->
  ?service_registry_enabled:bool prop ->
  ?sku_name:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  config_server_git_setting:config_server_git_setting list ->
  container_registry:container_registry list ->
  default_build_service:default_build_service list ->
  marketplace:marketplace list ->
  network:network list ->
  trace:trace list ->
  string ->
  t

val make :
  ?build_agent_pool_size:string prop ->
  ?id:string prop ->
  ?log_stream_public_endpoint_enabled:bool prop ->
  ?managed_environment_id:string prop ->
  ?service_registry_enabled:bool prop ->
  ?sku_name:string prop ->
  ?sku_tier:string prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  config_server_git_setting:config_server_git_setting list ->
  container_registry:container_registry list ->
  default_build_service:default_build_service list ->
  marketplace:marketplace list ->
  network:network list ->
  trace:trace list ->
  string ->
  t Tf_core.resource
