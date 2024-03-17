(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_topic__message_storage_policy
type google_pubsub_topic__schema_settings
type google_pubsub_topic__timeouts
type google_pubsub_topic

val google_pubsub_topic :
  ?kms_key_name:string ->
  ?labels:(string * string) list ->
  ?message_retention_duration:string ->
  ?timeouts:google_pubsub_topic__timeouts ->
  name:string ->
  message_storage_policy:
    google_pubsub_topic__message_storage_policy list ->
  schema_settings:google_pubsub_topic__schema_settings list ->
  string ->
  unit
