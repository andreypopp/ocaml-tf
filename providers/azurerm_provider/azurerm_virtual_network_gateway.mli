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

val azurerm_virtual_network_gateway :
  ?bgp_route_translation_for_nat_enabled:bool ->
  ?default_local_network_gateway_id:string ->
  ?dns_forwarding_enabled:bool ->
  ?edge_zone:string ->
  ?ip_sec_replay_protection_enabled:bool ->
  ?private_ip_address_enabled:bool ->
  ?remote_vnet_traffic_enabled:bool ->
  ?tags:(string * string) list ->
  ?virtual_wan_traffic_enabled:bool ->
  ?vpn_type:string ->
  ?timeouts:azurerm_virtual_network_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  type_:string ->
  bgp_settings:azurerm_virtual_network_gateway__bgp_settings list ->
  custom_route:azurerm_virtual_network_gateway__custom_route list ->
  ip_configuration:
    azurerm_virtual_network_gateway__ip_configuration list ->
  policy_group:azurerm_virtual_network_gateway__policy_group list ->
  vpn_client_configuration:
    azurerm_virtual_network_gateway__vpn_client_configuration list ->
  string ->
  unit
