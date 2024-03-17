(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_topic_iam_member__condition
type google_pubsub_topic_iam_member

val google_pubsub_topic_iam_member :
  ?id:string ->
  ?project:string ->
  member:string ->
  role:string ->
  topic:string ->
  condition:google_pubsub_topic_iam_member__condition list ->
  string ->
  unit
