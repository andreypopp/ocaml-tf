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

type t = private {
  id : string prop;
  internet_security_enabled : bool prop;
  name : string prop;
  remote_vpn_site_id : string prop;
  vpn_gateway_id : string prop;
}

val azurerm_vpn_gateway_connection :
  ?id:string prop ->
  ?internet_security_enabled:bool prop ->
  ?timeouts:azurerm_vpn_gateway_connection__timeouts ->
  name:string prop ->
  remote_vpn_site_id:string prop ->
  vpn_gateway_id:string prop ->
  routing:azurerm_vpn_gateway_connection__routing list ->
  traffic_selector_policy:
    azurerm_vpn_gateway_connection__traffic_selector_policy list ->
  vpn_link:azurerm_vpn_gateway_connection__vpn_link list ->
  string ->
  t
