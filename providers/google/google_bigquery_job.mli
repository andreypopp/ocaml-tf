(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status__errors = {
  location : string prop;  (** location *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
}

type status__error_result = {
  location : string prop;  (** location *)
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
}

type status = {
  error_result : status__error_result list;
      [@default []] [@yojson_drop_default ( = )]
      (** error_result *)
  errors : status__errors list;
      [@default []] [@yojson_drop_default ( = )]
      (** errors *)
  state : string prop;  (** state *)
}

type copy__destination_encryption_configuration

val copy__destination_encryption_configuration :
  kms_key_name:string prop ->
  unit ->
  copy__destination_encryption_configuration

type copy__destination_table

val copy__destination_table :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  table_id:string prop ->
  unit ->
  copy__destination_table

type copy__source_tables

val copy__source_tables :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  table_id:string prop ->
  unit ->
  copy__source_tables

type copy

val copy :
  ?create_disposition:string prop ->
  ?write_disposition:string prop ->
  ?destination_encryption_configuration:
    copy__destination_encryption_configuration list ->
  ?destination_table:copy__destination_table list ->
  source_tables:copy__source_tables list ->
  unit ->
  copy

type extract__source_model

val extract__source_model :
  dataset_id:string prop ->
  model_id:string prop ->
  project_id:string prop ->
  unit ->
  extract__source_model

type extract__source_table

val extract__source_table :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  table_id:string prop ->
  unit ->
  extract__source_table

type extract

val extract :
  ?compression:string prop ->
  ?destination_format:string prop ->
  ?field_delimiter:string prop ->
  ?print_header:bool prop ->
  ?use_avro_logical_types:bool prop ->
  ?source_model:extract__source_model list ->
  ?source_table:extract__source_table list ->
  destination_uris:string prop list ->
  unit ->
  extract

type load__destination_encryption_configuration

val load__destination_encryption_configuration :
  kms_key_name:string prop ->
  unit ->
  load__destination_encryption_configuration

type load__destination_table

val load__destination_table :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  table_id:string prop ->
  unit ->
  load__destination_table

type load__parquet_options

val load__parquet_options :
  ?enable_list_inference:bool prop ->
  ?enum_as_string:bool prop ->
  unit ->
  load__parquet_options

type load__time_partitioning

val load__time_partitioning :
  ?expiration_ms:string prop ->
  ?field:string prop ->
  type_:string prop ->
  unit ->
  load__time_partitioning

type load

val load :
  ?allow_jagged_rows:bool prop ->
  ?allow_quoted_newlines:bool prop ->
  ?autodetect:bool prop ->
  ?create_disposition:string prop ->
  ?encoding:string prop ->
  ?field_delimiter:string prop ->
  ?ignore_unknown_values:bool prop ->
  ?json_extension:string prop ->
  ?max_bad_records:float prop ->
  ?null_marker:string prop ->
  ?projection_fields:string prop list ->
  ?quote:string prop ->
  ?schema_update_options:string prop list ->
  ?skip_leading_rows:float prop ->
  ?source_format:string prop ->
  ?write_disposition:string prop ->
  ?destination_encryption_configuration:
    load__destination_encryption_configuration list ->
  ?parquet_options:load__parquet_options list ->
  ?time_partitioning:load__time_partitioning list ->
  source_uris:string prop list ->
  destination_table:load__destination_table list ->
  unit ->
  load

type query__default_dataset

val query__default_dataset :
  ?project_id:string prop ->
  dataset_id:string prop ->
  unit ->
  query__default_dataset

type query__destination_encryption_configuration

val query__destination_encryption_configuration :
  kms_key_name:string prop ->
  unit ->
  query__destination_encryption_configuration

type query__destination_table

val query__destination_table :
  ?dataset_id:string prop ->
  ?project_id:string prop ->
  table_id:string prop ->
  unit ->
  query__destination_table

type query__script_options

val query__script_options :
  ?key_result_statement:string prop ->
  ?statement_byte_budget:string prop ->
  ?statement_timeout_ms:string prop ->
  unit ->
  query__script_options

type query__user_defined_function_resources

val query__user_defined_function_resources :
  ?inline_code:string prop ->
  ?resource_uri:string prop ->
  unit ->
  query__user_defined_function_resources

type query

val query :
  ?allow_large_results:bool prop ->
  ?create_disposition:string prop ->
  ?flatten_results:bool prop ->
  ?maximum_billing_tier:float prop ->
  ?maximum_bytes_billed:string prop ->
  ?parameter_mode:string prop ->
  ?priority:string prop ->
  ?schema_update_options:string prop list ->
  ?use_legacy_sql:bool prop ->
  ?use_query_cache:bool prop ->
  ?write_disposition:string prop ->
  ?default_dataset:query__default_dataset list ->
  ?destination_encryption_configuration:
    query__destination_encryption_configuration list ->
  ?destination_table:query__destination_table list ->
  ?script_options:query__script_options list ->
  ?user_defined_function_resources:
    query__user_defined_function_resources list ->
  query:string prop ->
  unit ->
  query

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_job

val google_bigquery_job :
  ?id:string prop ->
  ?job_timeout_ms:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?copy:copy list ->
  ?extract:extract list ->
  ?load:load list ->
  ?query:query list ->
  ?timeouts:timeouts ->
  job_id:string prop ->
  unit ->
  google_bigquery_job

val yojson_of_google_bigquery_job : google_bigquery_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  job_id : string prop;
  job_timeout_ms : string prop;
  job_type : string prop;
  labels : (string * string) list prop;
  location : string prop;
  project : string prop;
  status : status list prop;
  terraform_labels : (string * string) list prop;
  user_email : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?job_timeout_ms:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?copy:copy list ->
  ?extract:extract list ->
  ?load:load list ->
  ?query:query list ->
  ?timeouts:timeouts ->
  job_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?job_timeout_ms:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?copy:copy list ->
  ?extract:extract list ->
  ?load:load list ->
  ?query:query list ->
  ?timeouts:timeouts ->
  job_id:string prop ->
  string ->
  t Tf_core.resource
