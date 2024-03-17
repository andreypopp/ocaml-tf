(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_peering__ipv6__microsoft_peering
type azurerm_express_route_circuit_peering__ipv6
type azurerm_express_route_circuit_peering__microsoft_peering_config
type azurerm_express_route_circuit_peering__timeouts
type azurerm_express_route_circuit_peering

val azurerm_express_route_circuit_peering :
  ?id:string ->
  ?ipv4_enabled:bool ->
  ?peer_asn:float ->
  ?primary_peer_address_prefix:string ->
  ?route_filter_id:string ->
  ?secondary_peer_address_prefix:string ->
  ?shared_key:string ->
  ?timeouts:azurerm_express_route_circuit_peering__timeouts ->
  express_route_circuit_name:string ->
  peering_type:string ->
  resource_group_name:string ->
  vlan_id:float ->
  ipv6:azurerm_express_route_circuit_peering__ipv6 list ->
  microsoft_peering_config:
    azurerm_express_route_circuit_peering__microsoft_peering_config
    list ->
  string ->
  unit
