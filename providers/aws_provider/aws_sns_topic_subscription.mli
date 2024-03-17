(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic_subscription

val aws_sns_topic_subscription :
  ?confirmation_timeout_in_minutes:float ->
  ?delivery_policy:string ->
  ?endpoint_auto_confirms:bool ->
  ?filter_policy:string ->
  ?filter_policy_scope:string ->
  ?id:string ->
  ?raw_message_delivery:bool ->
  ?redrive_policy:string ->
  ?replay_policy:string ->
  ?subscription_role_arn:string ->
  endpoint:string ->
  protocol:string ->
  topic_arn:string ->
  string ->
  unit
