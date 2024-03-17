(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_user

val aws_appstream_user :
  ?enabled:bool ->
  ?first_name:string ->
  ?last_name:string ->
  ?send_email_notification:bool ->
  authentication_type:string ->
  user_name:string ->
  string ->
  unit
