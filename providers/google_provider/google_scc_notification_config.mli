(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_notification_config__streaming_config
type google_scc_notification_config__timeouts
type google_scc_notification_config

val google_scc_notification_config :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_notification_config__timeouts ->
  config_id:string prop ->
  organization:string prop ->
  pubsub_topic:string prop ->
  streaming_config:
    google_scc_notification_config__streaming_config list ->
  string ->
  unit
