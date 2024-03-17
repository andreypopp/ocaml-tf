(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_main_route_table_association__timeouts
type aws_main_route_table_association

type t = private {
  id : string prop;
  original_route_table_id : string prop;
  route_table_id : string prop;
  vpc_id : string prop;
}

val aws_main_route_table_association :
  ?id:string prop ->
  ?timeouts:aws_main_route_table_association__timeouts ->
  route_table_id:string prop ->
  vpc_id:string prop ->
  string ->
  t
