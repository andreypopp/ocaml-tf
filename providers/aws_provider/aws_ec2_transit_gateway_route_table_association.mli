(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table_association

val aws_ec2_transit_gateway_route_table_association :
  ?replace_existing_association:bool ->
  transit_gateway_attachment_id:string ->
  transit_gateway_route_table_id:string ->
  string ->
  unit
