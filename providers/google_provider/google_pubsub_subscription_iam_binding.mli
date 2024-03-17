(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_subscription_iam_binding__condition
type google_pubsub_subscription_iam_binding

type t = private {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  subscription : string prop;
}

val google_pubsub_subscription_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  subscription:string prop ->
  condition:google_pubsub_subscription_iam_binding__condition list ->
  string ->
  t
