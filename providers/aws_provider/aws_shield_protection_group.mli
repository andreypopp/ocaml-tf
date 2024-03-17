(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_shield_protection_group

val aws_shield_protection_group :
  ?members:string list ->
  ?resource_type:string ->
  ?tags:(string * string) list ->
  aggregation:string ->
  pattern:string ->
  protection_group_id:string ->
  string ->
  unit
