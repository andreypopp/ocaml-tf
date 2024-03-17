(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_local_gateway_route

type t = private {
  destination_cidr_block : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}

val aws_ec2_local_gateway_route :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  local_gateway_route_table_id:string prop ->
  local_gateway_virtual_interface_group_id:string prop ->
  string ->
  t
