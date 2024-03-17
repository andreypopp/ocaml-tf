(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_interface__ip_configuration
type azurerm_network_interface__timeouts
type azurerm_network_interface

type t = private {
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
  location : string prop;
  mac_address : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_machine_id : string prop;
}

val azurerm_network_interface :
  ?auxiliary_mode:string prop ->
  ?auxiliary_sku:string prop ->
  ?dns_servers:string prop list ->
  ?edge_zone:string prop ->
  ?enable_accelerated_networking:bool prop ->
  ?enable_ip_forwarding:bool prop ->
  ?id:string prop ->
  ?internal_dns_name_label:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_network_interface__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  ip_configuration:azurerm_network_interface__ip_configuration list ->
  string ->
  t
