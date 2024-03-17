(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_subscription_iam_binding__condition
type google_pubsub_subscription_iam_binding

val google_pubsub_subscription_iam_binding :
  members:string list ->
  role:string ->
  subscription:string ->
  condition:google_pubsub_subscription_iam_binding__condition list ->
  string ->
  unit
