(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_opsworks_permission

val aws_opsworks_permission :
  ?allow_ssh:bool ->
  ?allow_sudo:bool ->
  ?id:string ->
  ?level:string ->
  stack_id:string ->
  user_arn:string ->
  string ->
  unit
