(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_stream

val event_stream :
  ?event_stream_expiration_time:string prop ->
  ?event_stream_start_time:string prop ->
  name:string prop ->
  unit ->
  event_stream

type notification_config

val notification_config :
  ?event_types:string prop list ->
  payload_format:string prop ->
  pubsub_topic:string prop ->
  unit ->
  notification_config

type schedule__schedule_end_date

val schedule__schedule_end_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  schedule__schedule_end_date

type schedule__schedule_start_date

val schedule__schedule_start_date :
  day:float prop ->
  month:float prop ->
  year:float prop ->
  unit ->
  schedule__schedule_start_date

type schedule__start_time_of_day

val schedule__start_time_of_day :
  hours:float prop ->
  minutes:float prop ->
  nanos:float prop ->
  seconds:float prop ->
  unit ->
  schedule__start_time_of_day

type schedule

val schedule :
  ?repeat_interval:string prop ->
  schedule_end_date:schedule__schedule_end_date list ->
  schedule_start_date:schedule__schedule_start_date list ->
  start_time_of_day:schedule__start_time_of_day list ->
  unit ->
  schedule

type transfer_spec__aws_s3_data_source__aws_access_key

val transfer_spec__aws_s3_data_source__aws_access_key :
  access_key_id:string prop ->
  secret_access_key:string prop ->
  unit ->
  transfer_spec__aws_s3_data_source__aws_access_key

type transfer_spec__aws_s3_data_source

val transfer_spec__aws_s3_data_source :
  ?path:string prop ->
  ?role_arn:string prop ->
  bucket_name:string prop ->
  aws_access_key:
    transfer_spec__aws_s3_data_source__aws_access_key list ->
  unit ->
  transfer_spec__aws_s3_data_source

type transfer_spec__azure_blob_storage_data_source__azure_credentials

val transfer_spec__azure_blob_storage_data_source__azure_credentials :
  sas_token:string prop ->
  unit ->
  transfer_spec__azure_blob_storage_data_source__azure_credentials

type transfer_spec__azure_blob_storage_data_source

val transfer_spec__azure_blob_storage_data_source :
  ?path:string prop ->
  container:string prop ->
  storage_account:string prop ->
  azure_credentials:
    transfer_spec__azure_blob_storage_data_source__azure_credentials
    list ->
  unit ->
  transfer_spec__azure_blob_storage_data_source

type transfer_spec__gcs_data_sink

val transfer_spec__gcs_data_sink :
  ?path:string prop ->
  bucket_name:string prop ->
  unit ->
  transfer_spec__gcs_data_sink

type transfer_spec__gcs_data_source

val transfer_spec__gcs_data_source :
  ?path:string prop ->
  bucket_name:string prop ->
  unit ->
  transfer_spec__gcs_data_source

type transfer_spec__http_data_source

val transfer_spec__http_data_source :
  list_url:string prop -> unit -> transfer_spec__http_data_source

type transfer_spec__object_conditions

val transfer_spec__object_conditions :
  ?exclude_prefixes:string prop list ->
  ?include_prefixes:string prop list ->
  ?last_modified_before:string prop ->
  ?last_modified_since:string prop ->
  ?max_time_elapsed_since_last_modification:string prop ->
  ?min_time_elapsed_since_last_modification:string prop ->
  unit ->
  transfer_spec__object_conditions

type transfer_spec__posix_data_sink

val transfer_spec__posix_data_sink :
  root_directory:string prop ->
  unit ->
  transfer_spec__posix_data_sink

type transfer_spec__posix_data_source

val transfer_spec__posix_data_source :
  root_directory:string prop ->
  unit ->
  transfer_spec__posix_data_source

type transfer_spec__transfer_options

val transfer_spec__transfer_options :
  ?delete_objects_from_source_after_transfer:bool prop ->
  ?delete_objects_unique_in_sink:bool prop ->
  ?overwrite_objects_already_existing_in_sink:bool prop ->
  ?overwrite_when:string prop ->
  unit ->
  transfer_spec__transfer_options

type transfer_spec

val transfer_spec :
  ?sink_agent_pool_name:string prop ->
  ?source_agent_pool_name:string prop ->
  aws_s3_data_source:transfer_spec__aws_s3_data_source list ->
  azure_blob_storage_data_source:
    transfer_spec__azure_blob_storage_data_source list ->
  gcs_data_sink:transfer_spec__gcs_data_sink list ->
  gcs_data_source:transfer_spec__gcs_data_source list ->
  http_data_source:transfer_spec__http_data_source list ->
  object_conditions:transfer_spec__object_conditions list ->
  posix_data_sink:transfer_spec__posix_data_sink list ->
  posix_data_source:transfer_spec__posix_data_source list ->
  transfer_options:transfer_spec__transfer_options list ->
  unit ->
  transfer_spec

type google_storage_transfer_job

val google_storage_transfer_job :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  description:string prop ->
  event_stream:event_stream list ->
  notification_config:notification_config list ->
  schedule:schedule list ->
  transfer_spec:transfer_spec list ->
  unit ->
  google_storage_transfer_job

val yojson_of_google_storage_transfer_job :
  google_storage_transfer_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_modification_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  description:string prop ->
  event_stream:event_stream list ->
  notification_config:notification_config list ->
  schedule:schedule list ->
  transfer_spec:transfer_spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  description:string prop ->
  event_stream:event_stream list ->
  notification_config:notification_config list ->
  schedule:schedule list ->
  transfer_spec:transfer_spec list ->
  string ->
  t Tf_core.resource
