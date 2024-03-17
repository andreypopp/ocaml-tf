(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_express_route_circuit_connection__timeouts
type azurerm_express_route_circuit_connection

val azurerm_express_route_circuit_connection :
  ?address_prefix_ipv6:string prop ->
  ?authorization_key:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_express_route_circuit_connection__timeouts ->
  address_prefix_ipv4:string prop ->
  name:string prop ->
  peer_peering_id:string prop ->
  peering_id:string prop ->
  string ->
  unit
