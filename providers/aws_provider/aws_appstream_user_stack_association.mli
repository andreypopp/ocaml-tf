(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_user_stack_association

val aws_appstream_user_stack_association :
  ?send_email_notification:bool ->
  authentication_type:string ->
  stack_name:string ->
  user_name:string ->
  string ->
  unit
