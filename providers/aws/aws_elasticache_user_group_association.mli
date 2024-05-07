(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elasticache_user_group_association

val aws_elasticache_user_group_association :
  ?id:string prop ->
  user_group_id:string prop ->
  user_id:string prop ->
  unit ->
  aws_elasticache_user_group_association

val yojson_of_aws_elasticache_user_group_association :
  aws_elasticache_user_group_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  user_group_id : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  user_group_id:string prop ->
  user_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  user_group_id:string prop ->
  user_id:string prop ->
  string ->
  t Tf_core.resource
