(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ingestion_data_source_settings__aws_kinesis = {
  aws_role_arn : string prop;  (** aws_role_arn *)
  consumer_arn : string prop;  (** consumer_arn *)
  gcp_service_account : string prop;  (** gcp_service_account *)
  stream_arn : string prop;  (** stream_arn *)
}

type ingestion_data_source_settings = {
  aws_kinesis : ingestion_data_source_settings__aws_kinesis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** aws_kinesis *)
}

type message_storage_policy = {
  allowed_persistence_regions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** allowed_persistence_regions *)
}

type schema_settings = {
  encoding : string prop;  (** encoding *)
  schema : string prop;  (** schema *)
}

type google_pubsub_topic

val google_pubsub_topic :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_pubsub_topic

val yojson_of_google_pubsub_topic : google_pubsub_topic -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  ingestion_data_source_settings :
    ingestion_data_source_settings list prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  message_retention_duration : string prop;
  message_storage_policy : message_storage_policy list prop;
  name : string prop;
  project : string prop;
  schema_settings : schema_settings list prop;
  terraform_labels : (string * string) list prop;
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
