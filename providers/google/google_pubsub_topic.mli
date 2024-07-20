(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ingestion_data_source_settings__aws_kinesis

val ingestion_data_source_settings__aws_kinesis :
  aws_role_arn:string prop ->
  consumer_arn:string prop ->
  gcp_service_account:string prop ->
  stream_arn:string prop ->
  unit ->
  ingestion_data_source_settings__aws_kinesis

type ingestion_data_source_settings

val ingestion_data_source_settings :
  ?aws_kinesis:ingestion_data_source_settings__aws_kinesis list ->
  unit ->
  ingestion_data_source_settings

type message_storage_policy

val message_storage_policy :
  allowed_persistence_regions:string prop list ->
  unit ->
  message_storage_policy

type schema_settings

val schema_settings :
  ?encoding:string prop ->
  schema:string prop ->
  unit ->
  schema_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_pubsub_topic

val google_pubsub_topic :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?ingestion_data_source_settings:ingestion_data_source_settings list ->
  ?message_storage_policy:message_storage_policy list ->
  ?schema_settings:schema_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_pubsub_topic

val yojson_of_google_pubsub_topic : google_pubsub_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?ingestion_data_source_settings:ingestion_data_source_settings list ->
  ?message_storage_policy:message_storage_policy list ->
  ?schema_settings:schema_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?labels:(string * string prop) list ->
  ?message_retention_duration:string prop ->
  ?project:string prop ->
  ?ingestion_data_source_settings:ingestion_data_source_settings list ->
  ?message_storage_policy:message_storage_policy list ->
  ?schema_settings:schema_settings list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
