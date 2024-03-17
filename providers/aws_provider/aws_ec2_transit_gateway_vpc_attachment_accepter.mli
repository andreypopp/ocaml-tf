(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment_accepter

val aws_ec2_transit_gateway_vpc_attachment_accepter :
  ?tags:(string * string) list ->
  ?transit_gateway_default_route_table_association:bool ->
  ?transit_gateway_default_route_table_propagation:bool ->
  transit_gateway_attachment_id:string ->
  string ->
  unit
