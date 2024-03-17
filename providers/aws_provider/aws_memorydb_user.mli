(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_memorydb_user__authentication_mode
type aws_memorydb_user

val aws_memorydb_user :
  ?tags:(string * string) list ->
  access_string:string ->
  user_name:string ->
  authentication_mode:aws_memorydb_user__authentication_mode list ->
  string ->
  unit
