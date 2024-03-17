(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_connection__timeouts
type azurerm_express_route_circuit_connection

val azurerm_express_route_circuit_connection :
  ?address_prefix_ipv6:string ->
  ?authorization_key:string ->
  ?id:string ->
  ?timeouts:azurerm_express_route_circuit_connection__timeouts ->
  address_prefix_ipv4:string ->
  name:string ->
  peer_peering_id:string ->
  peering_id:string ->
  string ->
  unit
