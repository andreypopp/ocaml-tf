(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic_subscription

val aws_sns_topic_subscription :
  ?confirmation_timeout_in_minutes:float prop ->
  ?delivery_policy:string prop ->
  ?endpoint_auto_confirms:bool prop ->
  ?filter_policy:string prop ->
  ?filter_policy_scope:string prop ->
  ?id:string prop ->
  ?raw_message_delivery:bool prop ->
  ?redrive_policy:string prop ->
  ?replay_policy:string prop ->
  ?subscription_role_arn:string prop ->
  endpoint:string prop ->
  protocol:string prop ->
  topic_arn:string prop ->
  string ->
  unit
