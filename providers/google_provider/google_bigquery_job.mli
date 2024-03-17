(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_job__copy__destination_encryption_configuration
type google_bigquery_job__copy__destination_table
type google_bigquery_job__copy__source_tables
type google_bigquery_job__copy
type google_bigquery_job__extract__source_model
type google_bigquery_job__extract__source_table
type google_bigquery_job__extract
type google_bigquery_job__load__destination_encryption_configuration
type google_bigquery_job__load__destination_table
type google_bigquery_job__load__parquet_options
type google_bigquery_job__load__time_partitioning
type google_bigquery_job__load
type google_bigquery_job__query__default_dataset
type google_bigquery_job__query__destination_encryption_configuration
type google_bigquery_job__query__destination_table
type google_bigquery_job__query__script_options
type google_bigquery_job__query__user_defined_function_resources
type google_bigquery_job__query
type google_bigquery_job__timeouts

type google_bigquery_job__status__errors = {
  location : string;  (** location *)
  message : string;  (** message *)
  reason : string;  (** reason *)
}

type google_bigquery_job__status__error_result = {
  location : string;  (** location *)
  message : string;  (** message *)
  reason : string;  (** reason *)
}

type google_bigquery_job__status = {
  error_result : google_bigquery_job__status__error_result list;
      (** error_result *)
  errors : google_bigquery_job__status__errors list;  (** errors *)
  state : string;  (** state *)
}

type google_bigquery_job

val google_bigquery_job :
  ?id:string ->
  ?job_timeout_ms:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?project:string ->
  ?timeouts:google_bigquery_job__timeouts ->
  job_id:string ->
  copy:google_bigquery_job__copy list ->
  extract:google_bigquery_job__extract list ->
  load:google_bigquery_job__load list ->
  query:google_bigquery_job__query list ->
  string ->
  unit
