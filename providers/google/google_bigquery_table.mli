(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration

val encryption_configuration :
  kms_key_name:string prop -> unit -> encryption_configuration

type external_data_configuration__avro_options

val external_data_configuration__avro_options :
  use_avro_logical_types:bool prop ->
  unit ->
  external_data_configuration__avro_options

type external_data_configuration__csv_options

val external_data_configuration__csv_options :
  ?allow_jagged_rows:bool prop ->
  ?allow_quoted_newlines:bool prop ->
  ?encoding:string prop ->
  ?field_delimiter:string prop ->
  ?skip_leading_rows:float prop ->
  quote:string prop ->
  unit ->
  external_data_configuration__csv_options

type external_data_configuration__google_sheets_options

val external_data_configuration__google_sheets_options :
  ?range:string prop ->
  ?skip_leading_rows:float prop ->
  unit ->
  external_data_configuration__google_sheets_options

type external_data_configuration__hive_partitioning_options

val external_data_configuration__hive_partitioning_options :
  ?mode:string prop ->
  ?require_partition_filter:bool prop ->
  ?source_uri_prefix:string prop ->
  unit ->
  external_data_configuration__hive_partitioning_options

type external_data_configuration__json_options

val external_data_configuration__json_options :
  ?encoding:string prop ->
  unit ->
  external_data_configuration__json_options

type external_data_configuration__parquet_options

val external_data_configuration__parquet_options :
  ?enable_list_inference:bool prop ->
  ?enum_as_string:bool prop ->
  unit ->
  external_data_configuration__parquet_options

type external_data_configuration

val external_data_configuration :
  ?compression:string prop ->
  ?connection_id:string prop ->
  ?file_set_spec_type:string prop ->
  ?ignore_unknown_values:bool prop ->
  ?max_bad_records:float prop ->
  ?metadata_cache_mode:string prop ->
  ?object_metadata:string prop ->
  ?reference_file_schema_uri:string prop ->
  ?schema:string prop ->
  ?source_format:string prop ->
  autodetect:bool prop ->
  source_uris:string prop list ->
  avro_options:external_data_configuration__avro_options list ->
  csv_options:external_data_configuration__csv_options list ->
  google_sheets_options:
    external_data_configuration__google_sheets_options list ->
  hive_partitioning_options:
    external_data_configuration__hive_partitioning_options list ->
  json_options:external_data_configuration__json_options list ->
  parquet_options:external_data_configuration__parquet_options list ->
  unit ->
  external_data_configuration

type materialized_view

val materialized_view :
  ?allow_non_incremental_definition:bool prop ->
  ?enable_refresh:bool prop ->
  ?refresh_interval_ms:float prop ->
  query:string prop ->
  unit ->
  materialized_view

type range_partitioning__range

val range_partitioning__range :
  end_:float prop ->
  interval:float prop ->
  start:float prop ->
  unit ->
  range_partitioning__range

type range_partitioning

val range_partitioning :
  field:string prop ->
  range:range_partitioning__range list ->
  unit ->
  range_partitioning

type table_constraints__foreign_keys__column_references

val table_constraints__foreign_keys__column_references :
  referenced_column:string prop ->
  referencing_column:string prop ->
  unit ->
  table_constraints__foreign_keys__column_references

type table_constraints__foreign_keys__referenced_table

val table_constraints__foreign_keys__referenced_table :
  dataset_id:string prop ->
  project_id:string prop ->
  table_id:string prop ->
  unit ->
  table_constraints__foreign_keys__referenced_table

type table_constraints__foreign_keys

val table_constraints__foreign_keys :
  ?name:string prop ->
  column_references:
    table_constraints__foreign_keys__column_references list ->
  referenced_table:
    table_constraints__foreign_keys__referenced_table list ->
  unit ->
  table_constraints__foreign_keys

type table_constraints__primary_key

val table_constraints__primary_key :
  columns:string prop list -> unit -> table_constraints__primary_key

type table_constraints

val table_constraints :
  foreign_keys:table_constraints__foreign_keys list ->
  primary_key:table_constraints__primary_key list ->
  unit ->
  table_constraints

type table_replication_info

val table_replication_info :
  ?replication_interval_ms:float prop ->
  source_dataset_id:string prop ->
  source_project_id:string prop ->
  source_table_id:string prop ->
  unit ->
  table_replication_info

type time_partitioning

val time_partitioning :
  ?expiration_ms:float prop ->
  ?field:string prop ->
  ?require_partition_filter:bool prop ->
  type_:string prop ->
  unit ->
  time_partitioning

type view

val view :
  ?use_legacy_sql:bool prop -> query:string prop -> unit -> view

type google_bigquery_table

val google_bigquery_table :
  ?clustering:string prop list ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?expiration_time:float prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_staleness:string prop ->
  ?project:string prop ->
  ?require_partition_filter:bool prop ->
  ?schema:string prop ->
  dataset_id:string prop ->
  table_id:string prop ->
  encryption_configuration:encryption_configuration list ->
  external_data_configuration:external_data_configuration list ->
  materialized_view:materialized_view list ->
  range_partitioning:range_partitioning list ->
  table_constraints:table_constraints list ->
  table_replication_info:table_replication_info list ->
  time_partitioning:time_partitioning list ->
  view:view list ->
  unit ->
  google_bigquery_table

val yojson_of_google_bigquery_table : google_bigquery_table -> json

(** RESOURCE REGISTRATION *)

type t = private {
  clustering : string list prop;
  creation_time : float prop;
  dataset_id : string prop;
  deletion_protection : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  expiration_time : float prop;
  friendly_name : string prop;
  id : string prop;
  labels : (string * string) list prop;
  last_modified_time : float prop;
  location : string prop;
  max_staleness : string prop;
  num_bytes : float prop;
  num_long_term_bytes : float prop;
  num_rows : float prop;
  project : string prop;
  require_partition_filter : bool prop;
  schema : string prop;
  self_link : string prop;
  table_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?clustering:string prop list ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?expiration_time:float prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_staleness:string prop ->
  ?project:string prop ->
  ?require_partition_filter:bool prop ->
  ?schema:string prop ->
  dataset_id:string prop ->
  table_id:string prop ->
  encryption_configuration:encryption_configuration list ->
  external_data_configuration:external_data_configuration list ->
  materialized_view:materialized_view list ->
  range_partitioning:range_partitioning list ->
  table_constraints:table_constraints list ->
  table_replication_info:table_replication_info list ->
  time_partitioning:time_partitioning list ->
  view:view list ->
  string ->
  t

val make :
  ?clustering:string prop list ->
  ?deletion_protection:bool prop ->
  ?description:string prop ->
  ?expiration_time:float prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?max_staleness:string prop ->
  ?project:string prop ->
  ?require_partition_filter:bool prop ->
  ?schema:string prop ->
  dataset_id:string prop ->
  table_id:string prop ->
  encryption_configuration:encryption_configuration list ->
  external_data_configuration:external_data_configuration list ->
  materialized_view:materialized_view list ->
  range_partitioning:range_partitioning list ->
  table_constraints:table_constraints list ->
  table_replication_info:table_replication_info list ->
  time_partitioning:time_partitioning list ->
  view:view list ->
  string ->
  t Tf_core.resource
