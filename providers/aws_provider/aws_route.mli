(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route__timeouts
type aws_route

val aws_route :
  ?carrier_gateway_id:string ->
  ?core_network_arn:string ->
  ?destination_cidr_block:string ->
  ?destination_ipv6_cidr_block:string ->
  ?destination_prefix_list_id:string ->
  ?egress_only_gateway_id:string ->
  ?gateway_id:string ->
  ?id:string ->
  ?local_gateway_id:string ->
  ?nat_gateway_id:string ->
  ?network_interface_id:string ->
  ?transit_gateway_id:string ->
  ?vpc_endpoint_id:string ->
  ?vpc_peering_connection_id:string ->
  ?timeouts:aws_route__timeouts ->
  route_table_id:string ->
  string ->
  unit
