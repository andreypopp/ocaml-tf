(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cluster_setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type inbound_network_dependencies = {
  description : string prop;  (** description *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
  ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ports *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service_environment_v3

val azurerm_app_service_environment_v3 :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_environment_v3

val yojson_of_azurerm_app_service_environment_v3 :
  azurerm_app_service_environment_v3 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_new_private_endpoint_connections : bool prop;
  cluster_setting : cluster_setting list prop;
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
  tags : string Tf_core.assoc prop;
  windows_outbound_ip_addresses : string list prop;
  zone_redundant : bool prop;
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
