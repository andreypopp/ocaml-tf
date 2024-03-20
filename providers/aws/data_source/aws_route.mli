(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

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
  ?instance_id:string prop ->
  ?local_gateway_id:string prop ->
  ?nat_gateway_id:string prop ->
  ?network_interface_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_peering_connection_id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  unit ->
  aws_route

val yojson_of_aws_route : aws_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  carrier_gateway_id : string prop;
  core_network_arn : string prop;
  destination_cidr_block : string prop;
  destination_ipv6_cidr_block : string prop;
  destination_prefix_list_id : string prop;
  egress_only_gateway_id : string prop;
  gateway_id : string prop;
  id : string prop;
  instance_id : string prop;
  local_gateway_id : string prop;
  nat_gateway_id : string prop;
  network_interface_id : string prop;
  route_table_id : string prop;
  transit_gateway_id : string prop;
  vpc_peering_connection_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?carrier_gateway_id:string prop ->
  ?core_network_arn:string prop ->
  ?destination_cidr_block:string prop ->
  ?destination_ipv6_cidr_block:string prop ->
  ?destination_prefix_list_id:string prop ->
  ?egress_only_gateway_id:string prop ->
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?local_gateway_id:string prop ->
  ?nat_gateway_id:string prop ->
  ?network_interface_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_peering_connection_id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  string ->
  t

val make :
  ?carrier_gateway_id:string prop ->
  ?core_network_arn:string prop ->
  ?destination_cidr_block:string prop ->
  ?destination_ipv6_cidr_block:string prop ->
  ?destination_prefix_list_id:string prop ->
  ?egress_only_gateway_id:string prop ->
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?instance_id:string prop ->
  ?local_gateway_id:string prop ->
  ?nat_gateway_id:string prop ->
  ?network_interface_id:string prop ->
  ?transit_gateway_id:string prop ->
  ?vpc_peering_connection_id:string prop ->
  ?timeouts:timeouts ->
  route_table_id:string prop ->
  string ->
  t Tf_core.resource
