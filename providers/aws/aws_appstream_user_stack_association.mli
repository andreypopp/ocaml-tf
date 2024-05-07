(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appstream_user_stack_association

val aws_appstream_user_stack_association :
  ?id:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  stack_name:string prop ->
  user_name:string prop ->
  unit ->
  aws_appstream_user_stack_association

val yojson_of_aws_appstream_user_stack_association :
  aws_appstream_user_stack_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authentication_type : string prop;
  id : string prop;
  send_email_notification : bool prop;
  stack_name : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  stack_name:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?send_email_notification:bool prop ->
  authentication_type:string prop ->
  stack_name:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
