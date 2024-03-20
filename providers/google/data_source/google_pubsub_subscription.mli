(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_config = {
  drop_unknown_fields : bool prop;  (** drop_unknown_fields *)
  table : string prop;  (** table *)
  use_table_schema : bool prop;  (** use_table_schema *)
  use_topic_schema : bool prop;  (** use_topic_schema *)
  write_metadata : bool prop;  (** write_metadata *)
}

type cloud_storage_config__avro_config = {
  write_metadata : bool prop;  (** write_metadata *)
}

type cloud_storage_config = {
  avro_config : cloud_storage_config__avro_config list;
      (** avro_config *)
  bucket : string prop;  (** bucket *)
  filename_prefix : string prop;  (** filename_prefix *)
  filename_suffix : string prop;  (** filename_suffix *)
  max_bytes : float prop;  (** max_bytes *)
  max_duration : string prop;  (** max_duration *)
  state : string prop;  (** state *)
}

type dead_letter_policy = {
  dead_letter_topic : string prop;  (** dead_letter_topic *)
  max_delivery_attempts : float prop;  (** max_delivery_attempts *)
}

type expiration_policy = { ttl : string prop  (** ttl *) }

type push_config__oidc_token = {
  audience : string prop;  (** audience *)
  service_account_email : string prop;  (** service_account_email *)
}

type push_config__no_wrapper = {
  write_metadata : bool prop;  (** write_metadata *)
}

type push_config = {
  attributes : (string * string prop) list;  (** attributes *)
  no_wrapper : push_config__no_wrapper list;  (** no_wrapper *)
  oidc_token : push_config__oidc_token list;  (** oidc_token *)
  push_endpoint : string prop;  (** push_endpoint *)
}

type retry_policy = {
  maximum_backoff : string prop;  (** maximum_backoff *)
  minimum_backoff : string prop;  (** minimum_backoff *)
}

type google_pubsub_subscription

val google_pubsub_subscription :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_pubsub_subscription

val yojson_of_google_pubsub_subscription :
  google_pubsub_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  ack_deadline_seconds : float prop;
  bigquery_config : bigquery_config list prop;
  cloud_storage_config : cloud_storage_config list prop;
  dead_letter_policy : dead_letter_policy list prop;
  effective_labels : (string * string) list prop;
  enable_exactly_once_delivery : bool prop;
  enable_message_ordering : bool prop;
  expiration_policy : expiration_policy list prop;
  filter : string prop;
  id : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  push_config : push_config list prop;
  retain_acked_messages : bool prop;
  retry_policy : retry_policy list prop;
  terraform_labels : (string * string) list prop;
  topic : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
