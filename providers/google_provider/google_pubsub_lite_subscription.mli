(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_lite_subscription__delivery_config
type google_pubsub_lite_subscription__timeouts
type google_pubsub_lite_subscription

val google_pubsub_lite_subscription :
  ?region:string ->
  ?zone:string ->
  ?timeouts:google_pubsub_lite_subscription__timeouts ->
  name:string ->
  topic:string ->
  delivery_config:
    google_pubsub_lite_subscription__delivery_config list ->
  string ->
  unit
