(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_point_to_site_vpn_gateway__connection_configuration__route__propagated_route_table

type azurerm_point_to_site_vpn_gateway__connection_configuration__route

type azurerm_point_to_site_vpn_gateway__connection_configuration__vpn_client_address_pool

type azurerm_point_to_site_vpn_gateway__connection_configuration
type azurerm_point_to_site_vpn_gateway__timeouts
type azurerm_point_to_site_vpn_gateway

val azurerm_point_to_site_vpn_gateway :
  ?dns_servers:string prop list ->
  ?id:string prop ->
  ?routing_preference_internet_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_point_to_site_vpn_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scale_unit:float prop ->
  virtual_hub_id:string prop ->
  vpn_server_configuration_id:string prop ->
  connection_configuration:
    azurerm_point_to_site_vpn_gateway__connection_configuration list ->
  string ->
  unit
