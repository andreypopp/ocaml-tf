(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type inbound_network_dependencies = {
  description : string prop;  (** description *)
  ip_addresses : string prop list;  (** ip_addresses *)
  ports : string prop list;  (** ports *)
}

type cluster_setting

val cluster_setting :
  name:string prop -> value:string prop -> unit -> cluster_setting

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_app_service_environment_v3

val azurerm_app_service_environment_v3 :
  ?allow_new_private_endpoint_connections:bool prop ->
  ?dedicated_host_count:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  unit ->
  azurerm_app_service_environment_v3

val yojson_of_azurerm_app_service_environment_v3 :
  azurerm_app_service_environment_v3 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_new_private_endpoint_connections : bool prop;
  dedicated_host_count : float prop;
  dns_suffix : string prop;
  external_inbound_ip_addresses : string list prop;
  id : string prop;
  inbound_network_dependencies :
    inbound_network_dependencies list prop;
  internal_inbound_ip_addresses : string list prop;
  internal_load_balancing_mode : string prop;
  ip_ssl_address_count : float prop;
  linux_outbound_ip_addresses : string list prop;
  location : string prop;
  name : string prop;
  pricing_tier : string prop;
  remote_debugging_enabled : bool prop;
  resource_group_name : string prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  windows_outbound_ip_addresses : string list prop;
  zone_redundant : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_new_private_endpoint_connections:bool prop ->
  ?dedicated_host_count:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?allow_new_private_endpoint_connections:bool prop ->
  ?dedicated_host_count:float prop ->
  ?id:string prop ->
  ?internal_load_balancing_mode:string prop ->
  ?remote_debugging_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?zone_redundant:bool prop ->
  ?cluster_setting:cluster_setting list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource
