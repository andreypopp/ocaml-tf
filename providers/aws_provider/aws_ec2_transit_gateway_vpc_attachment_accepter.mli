(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment_accepter

val aws_ec2_transit_gateway_vpc_attachment_accepter :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_default_route_table_association:bool prop ->
  ?transit_gateway_default_route_table_propagation:bool prop ->
  transit_gateway_attachment_id:string prop ->
  string ->
  unit
