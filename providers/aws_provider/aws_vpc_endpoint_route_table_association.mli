(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_route_table_association

type t = private {
  id : string prop;
  route_table_id : string prop;
  vpc_endpoint_id : string prop;
}

val aws_vpc_endpoint_route_table_association :
  ?id:string prop ->
  route_table_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  t
