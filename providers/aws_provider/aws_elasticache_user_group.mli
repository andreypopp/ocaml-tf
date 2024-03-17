(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_user_group

val aws_elasticache_user_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?user_ids:string list ->
  engine:string ->
  user_group_id:string ->
  string ->
  unit
