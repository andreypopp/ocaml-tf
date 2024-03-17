(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route_table_association__timeouts
type aws_route_table_association

val aws_route_table_association :
  ?gateway_id:string prop ->
  ?id:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:aws_route_table_association__timeouts ->
  route_table_id:string prop ->
  string ->
  unit
