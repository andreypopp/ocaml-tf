(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appstream_user

val aws_appstream_user :
  ?enabled:bool prop ->
  ?first_name:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  user_name:string prop ->
  unit ->
  aws_appstream_user

val yojson_of_aws_appstream_user : aws_appstream_user -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?first_name:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?first_name:string prop ->
  ?id:string prop ->
  ?last_name:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
