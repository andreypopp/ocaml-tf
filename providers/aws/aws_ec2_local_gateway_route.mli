(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_local_gateway_route

val aws_ec2_local_gateway_route :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  local_gateway_route_table_id:string prop ->
  local_gateway_virtual_interface_group_id:string prop ->
  unit ->
  aws_ec2_local_gateway_route

val yojson_of_aws_ec2_local_gateway_route :
  aws_ec2_local_gateway_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  destination_cidr_block : string prop;
  id : string prop;
  local_gateway_route_table_id : string prop;
  local_gateway_virtual_interface_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  destination_cidr_block:string prop ->
  local_gateway_route_table_id:string prop ->
  local_gateway_virtual_interface_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  destination_cidr_block:string prop ->
  local_gateway_route_table_id:string prop ->
  local_gateway_virtual_interface_group_id:string prop ->
  string ->
  t Tf_core.resource
