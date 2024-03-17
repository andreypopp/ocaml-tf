(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_user_stack_association

type t = private {
  authentication_type : string prop;
  id : string prop;
  send_email_notification : bool prop;
  stack_name : string prop;
  user_name : string prop;
}

val aws_appstream_user_stack_association :
  ?id:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  stack_name:string prop ->
  user_name:string prop ->
  string ->
  t
