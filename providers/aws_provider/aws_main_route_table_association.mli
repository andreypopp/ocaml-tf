(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_main_route_table_association__timeouts
type aws_main_route_table_association

val aws_main_route_table_association :
  ?timeouts:aws_main_route_table_association__timeouts ->
  route_table_id:string ->
  vpc_id:string ->
  string ->
  unit
