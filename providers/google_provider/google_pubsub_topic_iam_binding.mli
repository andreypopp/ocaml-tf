(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_topic_iam_binding__condition
type google_pubsub_topic_iam_binding

val google_pubsub_topic_iam_binding :
  ?id:string prop ->
  ?project:string prop ->
  members:string prop list ->
  role:string prop ->
  topic:string prop ->
  condition:google_pubsub_topic_iam_binding__condition list ->
  string ->
  unit
