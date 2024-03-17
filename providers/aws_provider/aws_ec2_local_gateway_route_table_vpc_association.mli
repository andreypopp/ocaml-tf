(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association

type t = private {
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_ec2_local_gateway_route_table_vpc_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  local_gateway_route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t
