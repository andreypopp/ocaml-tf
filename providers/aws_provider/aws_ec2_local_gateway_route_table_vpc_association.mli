(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_local_gateway_route_table_vpc_association

val aws_ec2_local_gateway_route_table_vpc_association :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  local_gateway_route_table_id:string ->
  vpc_id:string ->
  string ->
  unit
