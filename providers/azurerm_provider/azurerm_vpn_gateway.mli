(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_gateway__bgp_settings__instance_0_bgp_peering_address
type azurerm_vpn_gateway__bgp_settings__instance_1_bgp_peering_address
type azurerm_vpn_gateway__bgp_settings
type azurerm_vpn_gateway__timeouts
type azurerm_vpn_gateway

val azurerm_vpn_gateway :
  ?bgp_route_translation_for_nat_enabled:bool ->
  ?scale_unit:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_vpn_gateway__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  virtual_hub_id:string ->
  bgp_settings:azurerm_vpn_gateway__bgp_settings list ->
  string ->
  unit
