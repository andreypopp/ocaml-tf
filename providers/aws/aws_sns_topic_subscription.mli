(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sns_topic_subscription

type t = private {
  arn : string prop;
  confirmation_timeout_in_minutes : float prop;
  confirmation_was_authenticated : bool prop;
  delivery_policy : string prop;
  endpoint : string prop;
  endpoint_auto_confirms : bool prop;
  filter_policy : string prop;
  filter_policy_scope : string prop;
  id : string prop;
  owner_id : string prop;
  pending_confirmation : bool prop;
  protocol : string prop;
  raw_message_delivery : bool prop;
  redrive_policy : string prop;
  replay_policy : string prop;
  subscription_role_arn : string prop;
  topic_arn : string prop;
}

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
  t
