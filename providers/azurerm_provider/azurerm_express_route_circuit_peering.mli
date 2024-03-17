(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_peering__ipv6__microsoft_peering
type azurerm_express_route_circuit_peering__ipv6
type azurerm_express_route_circuit_peering__microsoft_peering_config
type azurerm_express_route_circuit_peering__timeouts
type azurerm_express_route_circuit_peering

val azurerm_express_route_circuit_peering :
  ?id:string prop ->
  ?ipv4_enabled:bool prop ->
  ?peer_asn:float prop ->
  ?primary_peer_address_prefix:string prop ->
  ?route_filter_id:string prop ->
  ?secondary_peer_address_prefix:string prop ->
  ?shared_key:string prop ->
  ?timeouts:azurerm_express_route_circuit_peering__timeouts ->
  express_route_circuit_name:string prop ->
  peering_type:string prop ->
  resource_group_name:string prop ->
  vlan_id:float prop ->
  ipv6:azurerm_express_route_circuit_peering__ipv6 list ->
  microsoft_peering_config:
    azurerm_express_route_circuit_peering__microsoft_peering_config
    list ->
  string ->
  unit
