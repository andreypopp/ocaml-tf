(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_identity_notification_topic

type t = private {
  id : string prop;
  identity : string prop;
  include_original_headers : bool prop;
  notification_type : string prop;
  topic_arn : string prop;
}

val aws_ses_identity_notification_topic :
  ?id:string prop ->
  ?include_original_headers:bool prop ->
  ?topic_arn:string prop ->
  identity:string prop ->
  notification_type:string prop ->
  string ->
  t
