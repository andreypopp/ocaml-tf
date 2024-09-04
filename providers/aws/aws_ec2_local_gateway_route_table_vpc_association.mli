(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_local_gateway_route_table_vpc_association

val aws_ec2_local_gateway_route_table_vpc_association :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  local_gateway_route_table_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_ec2_local_gateway_route_table_vpc_association

val yojson_of_aws_ec2_local_gateway_route_table_vpc_association :
  aws_ec2_local_gateway_route_table_vpc_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  local_gateway_route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  local_gateway_route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
