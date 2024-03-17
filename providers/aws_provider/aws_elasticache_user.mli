(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_user__authentication_mode
type aws_elasticache_user__timeouts
type aws_elasticache_user

val aws_elasticache_user :
  ?id:string prop ->
  ?no_password_required:bool prop ->
  ?passwords:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_elasticache_user__timeouts ->
  access_string:string prop ->
  engine:string prop ->
  user_id:string prop ->
  user_name:string prop ->
  authentication_mode:aws_elasticache_user__authentication_mode list ->
  string ->
  unit
