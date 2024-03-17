(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_pubsub_topic__message_storage_policy
type google_pubsub_topic__schema_settings
type google_pubsub_topic__timeouts
type google_pubsub_topic

type t = private {
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val google_pubsub_topic :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?timeouts:google_pubsub_topic__timeouts ->
  name:string prop ->
  message_storage_policy:
    google_pubsub_topic__message_storage_policy list ->
  schema_settings:google_pubsub_topic__schema_settings list ->
  string ->
  t
