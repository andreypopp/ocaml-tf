(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vpn_gateway__bgp_settings__instance_0_bgp_peering_address
type azurerm_vpn_gateway__bgp_settings__instance_1_bgp_peering_address
type azurerm_vpn_gateway__bgp_settings
type azurerm_vpn_gateway__timeouts
type azurerm_vpn_gateway

type t = private {
  bgp_route_translation_for_nat_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  routing_preference : string prop;
  scale_unit : float prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

val azurerm_vpn_gateway :
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?id:string prop ->
  ?routing_preference:string prop ->
  ?scale_unit:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_vpn_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_id:string prop ->
  bgp_settings:azurerm_vpn_gateway__bgp_settings list ->
  string ->
  t
