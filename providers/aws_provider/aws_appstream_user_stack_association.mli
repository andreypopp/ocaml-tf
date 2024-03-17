(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_user_stack_association

val aws_appstream_user_stack_association :
  ?id:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  stack_name:string prop ->
  user_name:string prop ->
  string ->
  unit
