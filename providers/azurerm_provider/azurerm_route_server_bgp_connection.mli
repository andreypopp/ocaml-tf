(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_server_bgp_connection__timeouts
type azurerm_route_server_bgp_connection

val azurerm_route_server_bgp_connection :
  ?id:string prop ->
  ?timeouts:azurerm_route_server_bgp_connection__timeouts ->
  name:string prop ->
  peer_asn:float prop ->
  peer_ip:string prop ->
  route_server_id:string prop ->
  string ->
  unit
