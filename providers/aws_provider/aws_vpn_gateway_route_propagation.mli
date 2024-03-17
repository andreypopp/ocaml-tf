(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_gateway_route_propagation__timeouts
type aws_vpn_gateway_route_propagation

val aws_vpn_gateway_route_propagation :
  ?id:string prop ->
  ?timeouts:aws_vpn_gateway_route_propagation__timeouts ->
  route_table_id:string prop ->
  vpn_gateway_id:string prop ->
  string ->
  unit
