(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_user_group

val aws_elasticache_user_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  string ->
  unit
