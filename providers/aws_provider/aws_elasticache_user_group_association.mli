(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_user_group_association

type t = private {
  id : string prop;
  user_group_id : string prop;
  user_id : string prop;
}

val aws_elasticache_user_group_association :
  ?id:string prop ->
  user_group_id:string prop ->
  user_id:string prop ->
  string ->
  t
