(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_placement_group

val hcloud_placement_group :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  string ->
  unit
