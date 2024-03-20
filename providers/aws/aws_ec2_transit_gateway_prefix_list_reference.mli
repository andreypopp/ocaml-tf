(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_transit_gateway_prefix_list_reference

val aws_ec2_transit_gateway_prefix_list_reference :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  prefix_list_id:string prop ->
  transit_gateway_route_table_id:string prop ->
  unit ->
  aws_ec2_transit_gateway_prefix_list_reference

val yojson_of_aws_ec2_transit_gateway_prefix_list_reference :
  aws_ec2_transit_gateway_prefix_list_reference -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blackhole : bool prop;
  id : string prop;
  prefix_list_id : string prop;
  prefix_list_owner_id : string prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_route_table_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  prefix_list_id:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t

val make :
  ?blackhole:bool prop ->
  ?id:string prop ->
  ?transit_gateway_attachment_id:string prop ->
  prefix_list_id:string prop ->
  transit_gateway_route_table_id:string prop ->
  string ->
  t Tf_core.resource
