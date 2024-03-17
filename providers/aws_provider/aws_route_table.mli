(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route_table__timeouts

type aws_route_table__route = {
  carrier_gateway_id : string;  (** carrier_gateway_id *)
  cidr_block : string;  (** cidr_block *)
  core_network_arn : string;  (** core_network_arn *)
  destination_prefix_list_id : string;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string;  (** egress_only_gateway_id *)
  gateway_id : string;  (** gateway_id *)
  ipv6_cidr_block : string;  (** ipv6_cidr_block *)
  local_gateway_id : string;  (** local_gateway_id *)
  nat_gateway_id : string;  (** nat_gateway_id *)
  network_interface_id : string;  (** network_interface_id *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
}

type aws_route_table

val aws_route_table :
  ?id:string ->
  ?propagating_vgws:string list ->
  ?route:aws_route_table__route list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_route_table__timeouts ->
  vpc_id:string ->
  string ->
  unit
