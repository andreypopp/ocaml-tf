(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association

val aws_ec2_local_gateway_route_table_vpc_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  local_gateway_route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  unit
