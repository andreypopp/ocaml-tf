(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route_table_association__timeouts
type aws_route_table_association

val aws_route_table_association :
  ?gateway_id:string ->
  ?id:string ->
  ?subnet_id:string ->
  ?timeouts:aws_route_table_association__timeouts ->
  route_table_id:string ->
  string ->
  unit
