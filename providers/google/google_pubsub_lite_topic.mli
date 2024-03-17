(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_lite_topic__partition_config__capacity
type google_pubsub_lite_topic__partition_config
type google_pubsub_lite_topic__reservation_config
type google_pubsub_lite_topic__retention_config
type google_pubsub_lite_topic__timeouts
type google_pubsub_lite_topic

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  zone : string prop;
}

val google_pubsub_lite_topic :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:google_pubsub_lite_topic__timeouts ->
  name:string prop ->
  partition_config:google_pubsub_lite_topic__partition_config list ->
  reservation_config:
    google_pubsub_lite_topic__reservation_config list ->
  retention_config:google_pubsub_lite_topic__retention_config list ->
  string ->
  t
