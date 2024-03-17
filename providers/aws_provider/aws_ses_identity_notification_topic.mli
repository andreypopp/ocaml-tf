(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_identity_notification_topic

val aws_ses_identity_notification_topic :
  ?id:string prop ->
  ?include_original_headers:bool prop ->
  ?topic_arn:string prop ->
  identity:string prop ->
  notification_type:string prop ->
  string ->
  unit
