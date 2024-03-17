(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_gateway_connection__routing__propagated_route_table
type azurerm_vpn_gateway_connection__routing
type azurerm_vpn_gateway_connection__timeouts
type azurerm_vpn_gateway_connection__traffic_selector_policy
type azurerm_vpn_gateway_connection__vpn_link__custom_bgp_address
type azurerm_vpn_gateway_connection__vpn_link__ipsec_policy
type azurerm_vpn_gateway_connection__vpn_link
type azurerm_vpn_gateway_connection

val azurerm_vpn_gateway_connection :
  ?internet_security_enabled:bool ->
  ?timeouts:azurerm_vpn_gateway_connection__timeouts ->
  name:string ->
  remote_vpn_site_id:string ->
  vpn_gateway_id:string ->
  routing:azurerm_vpn_gateway_connection__routing list ->
  traffic_selector_policy:
    azurerm_vpn_gateway_connection__traffic_selector_policy list ->
  vpn_link:azurerm_vpn_gateway_connection__vpn_link list ->
  string ->
  unit
