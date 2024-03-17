(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route_table__timeouts

type aws_route_table__route = {
  carrier_gateway_id : string prop;  (** carrier_gateway_id *)
  cidr_block : string prop;  (** cidr_block *)
  core_network_arn : string prop;  (** core_network_arn *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop;
      (** egress_only_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  local_gateway_id : string prop;  (** local_gateway_id *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}

type aws_route_table

val aws_route_table :
  ?id:string prop ->
  ?propagating_vgws:string prop list ->
  ?route:aws_route_table__route list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_route_table__timeouts ->
  vpc_id:string prop ->
  string ->
  unit
