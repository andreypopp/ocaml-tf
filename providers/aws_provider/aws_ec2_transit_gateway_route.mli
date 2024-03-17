(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_route

val aws_ec2_transit_gateway_route :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  destination_cidr_block:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  unit
