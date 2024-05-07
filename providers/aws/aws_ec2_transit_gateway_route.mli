(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_route

val aws_ec2_transit_gateway_route :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  destination_cidr_block:string prop ->
  transit_gateway_route_table_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_route

val yojson_of_aws_ec2_transit_gateway_route :
  aws_ec2_transit_gateway_route -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  blackhole : bool prop;
  destination_cidr_block : string prop;
  id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  destination_cidr_block:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t

val make :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  destination_cidr_block:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t Tf_core.resource
