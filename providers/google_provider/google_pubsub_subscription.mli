(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_subscription__bigquery_config
type google_pubsub_subscription__cloud_storage_config__avro_config
type google_pubsub_subscription__cloud_storage_config
type google_pubsub_subscription__dead_letter_policy
type google_pubsub_subscription__expiration_policy
type google_pubsub_subscription__push_config__no_wrapper
type google_pubsub_subscription__push_config__oidc_token
type google_pubsub_subscription__push_config
type google_pubsub_subscription__retry_policy
type google_pubsub_subscription__timeouts
type google_pubsub_subscription

val google_pubsub_subscription :
  ?ack_deadline_seconds:float ->
  ?enable_exactly_once_delivery:bool ->
  ?enable_message_ordering:bool ->
  ?filter:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?message_retention_duration:string ->
  ?project:string ->
  ?retain_acked_messages:bool ->
  ?timeouts:google_pubsub_subscription__timeouts ->
  name:string ->
  topic:string ->
  bigquery_config:google_pubsub_subscription__bigquery_config list ->
  cloud_storage_config:
    google_pubsub_subscription__cloud_storage_config list ->
  dead_letter_policy:
    google_pubsub_subscription__dead_letter_policy list ->
  expiration_policy:
    google_pubsub_subscription__expiration_policy list ->
  push_config:google_pubsub_subscription__push_config list ->
  retry_policy:google_pubsub_subscription__retry_policy list ->
  string ->
  unit
