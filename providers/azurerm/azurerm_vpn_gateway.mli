(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp_settings__instance_0_bgp_peering_address

val bgp_settings__instance_0_bgp_peering_address :
  custom_ips:string prop list ->
  unit ->
  bgp_settings__instance_0_bgp_peering_address

type bgp_settings__instance_1_bgp_peering_address

val bgp_settings__instance_1_bgp_peering_address :
  custom_ips:string prop list ->
  unit ->
  bgp_settings__instance_1_bgp_peering_address

type bgp_settings

val bgp_settings :
  asn:float prop ->
  peer_weight:float prop ->
  instance_0_bgp_peering_address:
    bgp_settings__instance_0_bgp_peering_address list ->
  instance_1_bgp_peering_address:
    bgp_settings__instance_1_bgp_peering_address list ->
  unit ->
  bgp_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vpn_gateway

val azurerm_vpn_gateway :
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?id:string prop ->
  ?routing_preference:string prop ->
  ?scale_unit:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_id:string prop ->
  bgp_settings:bgp_settings list ->
  unit ->
  azurerm_vpn_gateway

val yojson_of_azurerm_vpn_gateway : azurerm_vpn_gateway -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?id:string prop ->
  ?routing_preference:string prop ->
  ?scale_unit:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_id:string prop ->
  bgp_settings:bgp_settings list ->
  string ->
  t

val make :
  ?bgp_route_translation_for_nat_enabled:bool prop ->
  ?id:string prop ->
  ?routing_preference:string prop ->
  ?scale_unit:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  virtual_hub_id:string prop ->
  bgp_settings:bgp_settings list ->
  string ->
  t Tf_core.resource
