(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elasticache_user__authentication_mode
type aws_elasticache_user__timeouts
type aws_elasticache_user

val aws_elasticache_user :
  ?id:string ->
  ?no_password_required:bool ->
  ?passwords:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_elasticache_user__timeouts ->
  access_string:string ->
  engine:string ->
  user_id:string ->
  user_name:string ->
  authentication_mode:aws_elasticache_user__authentication_mode list ->
  string ->
  unit
