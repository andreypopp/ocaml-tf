(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_prefix_list_reference

type t = private {
  blackhole : bool prop;
  id : string prop;
  prefix_list_id : string prop;
  prefix_list_owner_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

val aws_ec2_transit_gateway_prefix_list_reference :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  prefix_list_id:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t
