(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_placement_group

val aws_placement_group :
  ?id:string ->
  ?partition_count:float ->
  ?spread_level:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  strategy:string ->
  string ->
  unit
