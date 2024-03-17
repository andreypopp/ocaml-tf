(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_route

val aws_ec2_transit_gateway_route :
  ?blackhole:bool ->
  ?id:string ->
  ?transit_gateway_attachment_id:string ->
  destination_cidr_block:string ->
  transit_gateway_route_table_id:string ->
  string ->
  unit
