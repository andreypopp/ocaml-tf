(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_elasticache_user_group

val aws_elasticache_user_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  unit ->
  aws_elasticache_user_group

val yojson_of_aws_elasticache_user_group :
  aws_elasticache_user_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  engine : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
  user_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  string ->
  t
