(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_prefix_list_reference

val aws_ec2_transit_gateway_prefix_list_reference :
  ?blackhole:bool ->
  ?id:string ->
  ?transit_gateway_attachment_id:string ->
  prefix_list_id:string ->
  transit_gateway_route_table_id:string ->
  string ->
  unit
