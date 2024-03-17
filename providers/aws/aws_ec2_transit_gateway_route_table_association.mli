(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table_association

type t = private {
  id : string prop;
  replace_existing_association : bool prop;
  resource_id : string prop;
  resource_type : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

val aws_ec2_transit_gateway_route_table_association :
  ?id:string prop ->
  ?replace_existing_association:bool prop ->
  transit_gateway_attachment_id:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t
