(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_config

val bigquery_config :
  ?drop_unknown_fields:bool prop ->
  ?use_table_schema:bool prop ->
  ?use_topic_schema:bool prop ->
  ?write_metadata:bool prop ->
  table:string prop ->
  unit ->
  bigquery_config

type cloud_storage_config__avro_config

val cloud_storage_config__avro_config :
  ?write_metadata:bool prop ->
  unit ->
  cloud_storage_config__avro_config

type cloud_storage_config

val cloud_storage_config :
  ?filename_prefix:string prop ->
  ?filename_suffix:string prop ->
  ?max_bytes:float prop ->
  ?max_duration:string prop ->
  ?avro_config:cloud_storage_config__avro_config list ->
  bucket:string prop ->
  unit ->
  cloud_storage_config

type dead_letter_policy

val dead_letter_policy :
  ?dead_letter_topic:string prop ->
  ?max_delivery_attempts:float prop ->
  unit ->
  dead_letter_policy

type expiration_policy

val expiration_policy : ttl:string prop -> unit -> expiration_policy

type push_config__no_wrapper

val push_config__no_wrapper :
  write_metadata:bool prop -> unit -> push_config__no_wrapper

type push_config__oidc_token

val push_config__oidc_token :
  ?audience:string prop ->
  service_account_email:string prop ->
  unit ->
  push_config__oidc_token

type push_config

val push_config :
  ?attributes:(string * string prop) list ->
  ?no_wrapper:push_config__no_wrapper list ->
  ?oidc_token:push_config__oidc_token list ->
  push_endpoint:string prop ->
  unit ->
  push_config

type retry_policy

val retry_policy :
  ?maximum_backoff:string prop ->
  ?minimum_backoff:string prop ->
  unit ->
  retry_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_pubsub_subscription

val google_pubsub_subscription :
  ?ack_deadline_seconds:float prop ->
  ?enable_exactly_once_delivery:bool prop ->
  ?enable_message_ordering:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?retain_acked_messages:bool prop ->
  ?bigquery_config:bigquery_config list ->
  ?cloud_storage_config:cloud_storage_config list ->
  ?dead_letter_policy:dead_letter_policy list ->
  ?expiration_policy:expiration_policy list ->
  ?push_config:push_config list ->
  ?retry_policy:retry_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  unit ->
  google_pubsub_subscription

val yojson_of_google_pubsub_subscription :
  google_pubsub_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ack_deadline_seconds : float prop;
  effective_labels : (string * string) list prop;
  enable_exactly_once_delivery : bool prop;
  enable_message_ordering : bool prop;
  filter : string prop;
  id : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  retain_acked_messages : bool prop;
  terraform_labels : (string * string) list prop;
  topic : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ack_deadline_seconds:float prop ->
  ?enable_exactly_once_delivery:bool prop ->
  ?enable_message_ordering:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?retain_acked_messages:bool prop ->
  ?bigquery_config:bigquery_config list ->
  ?cloud_storage_config:cloud_storage_config list ->
  ?dead_letter_policy:dead_letter_policy list ->
  ?expiration_policy:expiration_policy list ->
  ?push_config:push_config list ->
  ?retry_policy:retry_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  string ->
  t

val make :
  ?ack_deadline_seconds:float prop ->
  ?enable_exactly_once_delivery:bool prop ->
  ?enable_message_ordering:bool prop ->
  ?filter:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?retain_acked_messages:bool prop ->
  ?bigquery_config:bigquery_config list ->
  ?cloud_storage_config:cloud_storage_config list ->
  ?dead_letter_policy:dead_letter_policy list ->
  ?expiration_policy:expiration_policy list ->
  ?push_config:push_config list ->
  ?retry_policy:retry_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  topic:string prop ->
  string ->
  t Tf_core.resource
