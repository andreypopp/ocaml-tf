(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route__timeouts
type aws_route

val aws_route :
  ?carrier_gateway_id:string prop ->
  ?core_network_arn:string prop ->
  ?destination_cidr_block:string prop ->
  ?destination_ipv6_cidr_block:string prop ->
  ?destination_prefix_list_id:string prop ->
  ?egress_only_gateway_id:string prop ->
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?local_gateway_id:string prop ->
  ?nat_gateway_id:string prop ->
  ?network_interface_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_endpoint_id:string prop ->
  ?vpc_peering_connection_id:string prop ->
  ?timeouts:aws_route__timeouts ->
  route_table_id:string prop ->
  string ->
  unit
