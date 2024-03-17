(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_network_gateway__bgp_settings__peering_addresses
type azurerm_virtual_network_gateway__bgp_settings
type azurerm_virtual_network_gateway__custom_route
type azurerm_virtual_network_gateway__ip_configuration
type azurerm_virtual_network_gateway__policy_group__policy_member
type azurerm_virtual_network_gateway__policy_group
type azurerm_virtual_network_gateway__timeouts

type azurerm_virtual_network_gateway__vpn_client_configuration__ipsec_policy

type azurerm_virtual_network_gateway__vpn_client_configuration__radius_server

type azurerm_virtual_network_gateway__vpn_client_configuration__revoked_certificate

type azurerm_virtual_network_gateway__vpn_client_configuration__root_certificate

type azurerm_virtual_network_gateway__vpn_client_configuration__virtual_network_gateway_client_connection

type azurerm_virtual_network_gateway__vpn_client_configuration
type azurerm_virtual_network_gateway

type t = private {
  active_active : bool prop;
  bgp_route_translation_for_nat_enabled : bool prop;
  default_local_network_gateway_id : string prop;
  dns_forwarding_enabled : bool prop;
  edge_zone : string prop;
  enable_bgp : bool prop;
  generation : string prop;
  id : string prop;
  ip_sec_replay_protection_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_ip_address_enabled : bool prop;
  remote_vnet_traffic_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  virtual_wan_traffic_enabled : bool prop;
  vpn_type : string prop;
}

val azurerm_virtual_network_gateway :
  ?active_active:bool prop ->
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?default_local_network_gateway_id:string prop ->
  ?dns_forwarding_enabled:bool prop ->
  ?edge_zone:string prop ->
  ?enable_bgp:bool prop ->
  ?generation:string prop ->
  ?id:string prop ->
  ?ip_sec_replay_protection_enabled:bool prop ->
  ?private_ip_address_enabled:bool prop ->
  ?remote_vnet_traffic_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?virtual_wan_traffic_enabled:bool prop ->
  ?vpn_type:string prop ->
  ?timeouts:azurerm_virtual_network_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku:string prop ->
  type_:string prop ->
  bgp_settings:azurerm_virtual_network_gateway__bgp_settings list ->
  custom_route:azurerm_virtual_network_gateway__custom_route list ->
  ip_configuration:
    azurerm_virtual_network_gateway__ip_configuration list ->
  policy_group:azurerm_virtual_network_gateway__policy_group list ->
  vpn_client_configuration:
    azurerm_virtual_network_gateway__vpn_client_configuration list ->
  string ->
  t
