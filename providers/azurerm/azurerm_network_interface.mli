(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_configuration

val ip_configuration :
  ?gateway_load_balancer_frontend_ip_configuration_id:string prop ->
  ?primary:bool prop ->
  ?private_ip_address:string prop ->
  ?private_ip_address_version:string prop ->
  ?public_ip_address_id:string prop ->
  ?subnet_id:string prop ->
  name:string prop ->
  private_ip_address_allocation:string prop ->
  unit ->
  ip_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_interface

val azurerm_network_interface :
  ?accelerated_networking_enabled:bool prop ->
  ?auxiliary_mode:string prop ->
  ?auxiliary_sku:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?id:string prop ->
  ?internal_dns_name_label:string prop ->
  ?ip_forwarding_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  unit ->
  azurerm_network_interface

val yojson_of_azurerm_network_interface :
  azurerm_network_interface -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accelerated_networking_enabled : bool prop;
  applied_dns_servers : string list prop;
  auxiliary_mode : string prop;
  auxiliary_sku : string prop;
  dns_servers : string list prop;
  edge_zone : string prop;
  enable_accelerated_networking : bool prop;
  enable_ip_forwarding : bool prop;
  id : string prop;
  internal_dns_name_label : string prop;
  internal_domain_name_suffix : string prop;
  ip_forwarding_enabled : bool prop;
  location : string prop;
  mac_address : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accelerated_networking_enabled:bool prop ->
  ?auxiliary_mode:string prop ->
  ?auxiliary_sku:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?id:string prop ->
  ?internal_dns_name_label:string prop ->
  ?ip_forwarding_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  string ->
  t

val make :
  ?accelerated_networking_enabled:bool prop ->
  ?auxiliary_mode:string prop ->
  ?auxiliary_sku:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?id:string prop ->
  ?internal_dns_name_label:string prop ->
  ?ip_forwarding_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:ip_configuration list ->
  string ->
  t Tf_core.resource
