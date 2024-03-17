(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_user

type t = private {
  arn : string prop;
  authentication_type : string prop;
  created_time : string prop;
  enabled : bool prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  send_email_notification : bool prop;
  user_name : string prop;
}

val aws_appstream_user :
  ?enabled:bool prop ->
  ?first_name:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  user_name:string prop ->
  string ->
  t
