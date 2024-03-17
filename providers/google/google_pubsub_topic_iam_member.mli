(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_topic_iam_member__condition
type google_pubsub_topic_iam_member

type t = private {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  topic : string prop;
}

val google_pubsub_topic_iam_member :
  ?id:string prop ->
  ?project:string prop ->
  member:string prop ->
  role:string prop ->
  topic:string prop ->
  condition:google_pubsub_topic_iam_member__condition list ->
  string ->
  t
