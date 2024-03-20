(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_endpoint_route_table_association

val aws_vpc_endpoint_route_table_association :
  ?id:string prop ->
  route_table_id:string prop ->
  vpc_endpoint_id:string prop ->
  unit ->
  aws_vpc_endpoint_route_table_association

val yojson_of_aws_vpc_endpoint_route_table_association :
  aws_vpc_endpoint_route_table_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  route_table_id : string prop;
  vpc_endpoint_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  route_table_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  route_table_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t Tf_core.resource
