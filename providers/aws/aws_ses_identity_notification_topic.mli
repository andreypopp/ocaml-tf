(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ses_identity_notification_topic

val aws_ses_identity_notification_topic :
  ?id:string prop ->
  ?include_original_headers:bool prop ->
  ?topic_arn:string prop ->
  identity:string prop ->
  notification_type:string prop ->
  unit ->
  aws_ses_identity_notification_topic

val yojson_of_aws_ses_identity_notification_topic :
  aws_ses_identity_notification_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  identity : string prop;
  include_original_headers : bool prop;
  notification_type : string prop;
  topic_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_original_headers:bool prop ->
  ?topic_arn:string prop ->
  identity:string prop ->
  notification_type:string prop ->
  string ->
  t
