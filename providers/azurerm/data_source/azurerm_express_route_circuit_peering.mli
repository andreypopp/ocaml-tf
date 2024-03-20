(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_express_route_circuit_peering

val azurerm_express_route_circuit_peering :
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_express_route_circuit_peering

val yojson_of_azurerm_express_route_circuit_peering :
  azurerm_express_route_circuit_peering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  azure_asn : float prop;
  express_route_circuit_name : string prop;
  gateway_manager_etag : string prop;
  id : string prop;
  ipv4_enabled : bool prop;
  peer_asn : float prop;
  peering_type : string prop;
  primary_azure_port : string prop;
  primary_peer_address_prefix : string prop;
  resource_group_name : string prop;
  route_filter_id : string prop;
  secondary_azure_port : string prop;
  secondary_peer_address_prefix : string prop;
  shared_key : string prop;
  vlan_id : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
