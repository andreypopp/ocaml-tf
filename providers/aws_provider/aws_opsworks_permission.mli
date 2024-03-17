(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_permission

type t = private {
  allow_ssh : bool prop;
  allow_sudo : bool prop;
  id : string prop;
  level : string prop;
  stack_id : string prop;
  user_arn : string prop;
}

val aws_opsworks_permission :
  ?allow_ssh:bool prop ->
  ?allow_sudo:bool prop ->
  ?id:string prop ->
  ?level:string prop ->
  stack_id:string prop ->
  user_arn:string prop ->
  string ->
  t
