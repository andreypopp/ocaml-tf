(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bgp_settings

val bgp_settings :
  ?peer_weight:float prop ->
  asn:float prop ->
  bgp_peering_address:string prop ->
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

type azurerm_local_network_gateway

val azurerm_local_network_gateway :
  ?address_space:string prop list ->
  ?gateway_address:string prop ->
  ?gateway_fqdn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?bgp_settings:bgp_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_local_network_gateway

val yojson_of_azurerm_local_network_gateway :
  azurerm_local_network_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  address_space : string list prop;
  gateway_address : string prop;
  gateway_fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?address_space:string prop list ->
  ?gateway_address:string prop ->
  ?gateway_fqdn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?bgp_settings:bgp_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?address_space:string prop list ->
  ?gateway_address:string prop ->
  ?gateway_fqdn:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?bgp_settings:bgp_settings list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
