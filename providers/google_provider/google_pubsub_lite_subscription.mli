(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_lite_subscription__delivery_config
type google_pubsub_lite_subscription__timeouts
type google_pubsub_lite_subscription

val google_pubsub_lite_subscription :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?zone:string prop ->
  ?timeouts:google_pubsub_lite_subscription__timeouts ->
  name:string prop ->
  topic:string prop ->
  delivery_config:
    google_pubsub_lite_subscription__delivery_config list ->
  string ->
  unit
