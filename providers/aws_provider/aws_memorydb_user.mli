(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_user__authentication_mode
type aws_memorydb_user

val aws_memorydb_user :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_string:string prop ->
  user_name:string prop ->
  authentication_mode:aws_memorydb_user__authentication_mode list ->
  string ->
  unit
