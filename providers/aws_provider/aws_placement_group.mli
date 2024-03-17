(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_placement_group

val aws_placement_group :
  ?id:string prop ->
  ?partition_count:float prop ->
  ?spread_level:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  strategy:string prop ->
  string ->
  unit
