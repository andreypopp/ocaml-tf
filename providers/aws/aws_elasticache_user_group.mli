(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elasticache_user_group

val aws_elasticache_user_group :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  unit ->
  aws_elasticache_user_group

val yojson_of_aws_elasticache_user_group :
  aws_elasticache_user_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  engine : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_group_id : string prop;
  user_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?user_ids:string prop list ->
  engine:string prop ->
  user_group_id:string prop ->
  string ->
  t Tf_core.resource
