(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_server_bgp_connection__timeouts
type azurerm_route_server_bgp_connection

val azurerm_route_server_bgp_connection :
  ?timeouts:azurerm_route_server_bgp_connection__timeouts ->
  name:string ->
  peer_asn:float ->
  peer_ip:string ->
  route_server_id:string ->
  string ->
  unit
