(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns

val backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns :
  ?collation:string prop ->
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns

type backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables

val backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables :
  ?mysql_columns:
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables__mysql_columns
    list ->
  table:string prop ->
  unit ->
  backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables

type backfill_all__mysql_excluded_objects__mysql_databases

val backfill_all__mysql_excluded_objects__mysql_databases :
  ?mysql_tables:
    backfill_all__mysql_excluded_objects__mysql_databases__mysql_tables
    list ->
  database:string prop ->
  unit ->
  backfill_all__mysql_excluded_objects__mysql_databases

type backfill_all__mysql_excluded_objects

val backfill_all__mysql_excluded_objects :
  mysql_databases:
    backfill_all__mysql_excluded_objects__mysql_databases list ->
  unit ->
  backfill_all__mysql_excluded_objects

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns

val backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  unit ->
  backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns

type backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables

val backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables :
  ?oracle_columns:
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables__oracle_columns
    list ->
  table:string prop ->
  unit ->
  backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables

type backfill_all__oracle_excluded_objects__oracle_schemas

val backfill_all__oracle_excluded_objects__oracle_schemas :
  ?oracle_tables:
    backfill_all__oracle_excluded_objects__oracle_schemas__oracle_tables
    list ->
  schema:string prop ->
  unit ->
  backfill_all__oracle_excluded_objects__oracle_schemas

type backfill_all__oracle_excluded_objects

val backfill_all__oracle_excluded_objects :
  oracle_schemas:
    backfill_all__oracle_excluded_objects__oracle_schemas list ->
  unit ->
  backfill_all__oracle_excluded_objects

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns

val backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns

type backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables

val backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables :
  ?postgresql_columns:
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list ->
  table:string prop ->
  unit ->
  backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables

type backfill_all__postgresql_excluded_objects__postgresql_schemas

val backfill_all__postgresql_excluded_objects__postgresql_schemas :
  ?postgresql_tables:
    backfill_all__postgresql_excluded_objects__postgresql_schemas__postgresql_tables
    list ->
  schema:string prop ->
  unit ->
  backfill_all__postgresql_excluded_objects__postgresql_schemas

type backfill_all__postgresql_excluded_objects

val backfill_all__postgresql_excluded_objects :
  postgresql_schemas:
    backfill_all__postgresql_excluded_objects__postgresql_schemas
    list ->
  unit ->
  backfill_all__postgresql_excluded_objects

type backfill_all

val backfill_all :
  ?mysql_excluded_objects:backfill_all__mysql_excluded_objects list ->
  ?oracle_excluded_objects:backfill_all__oracle_excluded_objects list ->
  ?postgresql_excluded_objects:
    backfill_all__postgresql_excluded_objects list ->
  unit ->
  backfill_all

type backfill_none

val backfill_none : unit -> backfill_none

type destination_config__bigquery_destination_config__single_target_dataset

val destination_config__bigquery_destination_config__single_target_dataset :
  dataset_id:string prop ->
  unit ->
  destination_config__bigquery_destination_config__single_target_dataset

type destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template

val destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template :
  ?dataset_id_prefix:string prop ->
  ?kms_key_name:string prop ->
  location:string prop ->
  unit ->
  destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template

type destination_config__bigquery_destination_config__source_hierarchy_datasets

val destination_config__bigquery_destination_config__source_hierarchy_datasets :
  dataset_template:
    destination_config__bigquery_destination_config__source_hierarchy_datasets__dataset_template
    list ->
  unit ->
  destination_config__bigquery_destination_config__source_hierarchy_datasets

type destination_config__bigquery_destination_config

val destination_config__bigquery_destination_config :
  ?data_freshness:string prop ->
  ?single_target_dataset:
    destination_config__bigquery_destination_config__single_target_dataset
    list ->
  ?source_hierarchy_datasets:
    destination_config__bigquery_destination_config__source_hierarchy_datasets
    list ->
  unit ->
  destination_config__bigquery_destination_config

type destination_config__gcs_destination_config__avro_file_format

val destination_config__gcs_destination_config__avro_file_format :
  unit ->
  destination_config__gcs_destination_config__avro_file_format

type destination_config__gcs_destination_config__json_file_format

val destination_config__gcs_destination_config__json_file_format :
  ?compression:string prop ->
  ?schema_file_format:string prop ->
  unit ->
  destination_config__gcs_destination_config__json_file_format

type destination_config__gcs_destination_config

val destination_config__gcs_destination_config :
  ?file_rotation_interval:string prop ->
  ?file_rotation_mb:float prop ->
  ?path:string prop ->
  ?avro_file_format:
    destination_config__gcs_destination_config__avro_file_format list ->
  ?json_file_format:
    destination_config__gcs_destination_config__json_file_format list ->
  unit ->
  destination_config__gcs_destination_config

type destination_config

val destination_config :
  ?bigquery_destination_config:
    destination_config__bigquery_destination_config list ->
  ?gcs_destination_config:
    destination_config__gcs_destination_config list ->
  destination_connection_profile:string prop ->
  unit ->
  destination_config

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns

val source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns :
  ?collation:string prop ->
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns

type source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables

val source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables :
  ?mysql_columns:
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables__mysql_columns
    list ->
  table:string prop ->
  unit ->
  source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables

type source_config__mysql_source_config__exclude_objects__mysql_databases

val source_config__mysql_source_config__exclude_objects__mysql_databases :
  ?mysql_tables:
    source_config__mysql_source_config__exclude_objects__mysql_databases__mysql_tables
    list ->
  database:string prop ->
  unit ->
  source_config__mysql_source_config__exclude_objects__mysql_databases

type source_config__mysql_source_config__exclude_objects

val source_config__mysql_source_config__exclude_objects :
  mysql_databases:
    source_config__mysql_source_config__exclude_objects__mysql_databases
    list ->
  unit ->
  source_config__mysql_source_config__exclude_objects

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns

val source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns :
  ?collation:string prop ->
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns

type source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables

val source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables :
  ?mysql_columns:
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables__mysql_columns
    list ->
  table:string prop ->
  unit ->
  source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables

type source_config__mysql_source_config__include_objects__mysql_databases

val source_config__mysql_source_config__include_objects__mysql_databases :
  ?mysql_tables:
    source_config__mysql_source_config__include_objects__mysql_databases__mysql_tables
    list ->
  database:string prop ->
  unit ->
  source_config__mysql_source_config__include_objects__mysql_databases

type source_config__mysql_source_config__include_objects

val source_config__mysql_source_config__include_objects :
  mysql_databases:
    source_config__mysql_source_config__include_objects__mysql_databases
    list ->
  unit ->
  source_config__mysql_source_config__include_objects

type source_config__mysql_source_config

val source_config__mysql_source_config :
  ?max_concurrent_backfill_tasks:float prop ->
  ?max_concurrent_cdc_tasks:float prop ->
  ?exclude_objects:
    source_config__mysql_source_config__exclude_objects list ->
  ?include_objects:
    source_config__mysql_source_config__include_objects list ->
  unit ->
  source_config__mysql_source_config

type source_config__oracle_source_config__drop_large_objects

val source_config__oracle_source_config__drop_large_objects :
  unit -> source_config__oracle_source_config__drop_large_objects

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns

val source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  unit ->
  source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns

type source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables

val source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables :
  ?oracle_columns:
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables__oracle_columns
    list ->
  table:string prop ->
  unit ->
  source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables

type source_config__oracle_source_config__exclude_objects__oracle_schemas

val source_config__oracle_source_config__exclude_objects__oracle_schemas :
  ?oracle_tables:
    source_config__oracle_source_config__exclude_objects__oracle_schemas__oracle_tables
    list ->
  schema:string prop ->
  unit ->
  source_config__oracle_source_config__exclude_objects__oracle_schemas

type source_config__oracle_source_config__exclude_objects

val source_config__oracle_source_config__exclude_objects :
  oracle_schemas:
    source_config__oracle_source_config__exclude_objects__oracle_schemas
    list ->
  unit ->
  source_config__oracle_source_config__exclude_objects

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns

val source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  unit ->
  source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns

type source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables

val source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables :
  ?oracle_columns:
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables__oracle_columns
    list ->
  table:string prop ->
  unit ->
  source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables

type source_config__oracle_source_config__include_objects__oracle_schemas

val source_config__oracle_source_config__include_objects__oracle_schemas :
  ?oracle_tables:
    source_config__oracle_source_config__include_objects__oracle_schemas__oracle_tables
    list ->
  schema:string prop ->
  unit ->
  source_config__oracle_source_config__include_objects__oracle_schemas

type source_config__oracle_source_config__include_objects

val source_config__oracle_source_config__include_objects :
  oracle_schemas:
    source_config__oracle_source_config__include_objects__oracle_schemas
    list ->
  unit ->
  source_config__oracle_source_config__include_objects

type source_config__oracle_source_config__stream_large_objects

val source_config__oracle_source_config__stream_large_objects :
  unit -> source_config__oracle_source_config__stream_large_objects

type source_config__oracle_source_config

val source_config__oracle_source_config :
  ?max_concurrent_backfill_tasks:float prop ->
  ?max_concurrent_cdc_tasks:float prop ->
  ?drop_large_objects:
    source_config__oracle_source_config__drop_large_objects list ->
  ?exclude_objects:
    source_config__oracle_source_config__exclude_objects list ->
  ?include_objects:
    source_config__oracle_source_config__include_objects list ->
  ?stream_large_objects:
    source_config__oracle_source_config__stream_large_objects list ->
  unit ->
  source_config__oracle_source_config

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns

val source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables

val source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables :
  ?postgresql_columns:
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list ->
  table:string prop ->
  unit ->
  source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables

type source_config__postgresql_source_config__exclude_objects__postgresql_schemas

val source_config__postgresql_source_config__exclude_objects__postgresql_schemas :
  ?postgresql_tables:
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas__postgresql_tables
    list ->
  schema:string prop ->
  unit ->
  source_config__postgresql_source_config__exclude_objects__postgresql_schemas

type source_config__postgresql_source_config__exclude_objects

val source_config__postgresql_source_config__exclude_objects :
  postgresql_schemas:
    source_config__postgresql_source_config__exclude_objects__postgresql_schemas
    list ->
  unit ->
  source_config__postgresql_source_config__exclude_objects

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns

val source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns :
  ?column:string prop ->
  ?data_type:string prop ->
  ?nullable:bool prop ->
  ?ordinal_position:float prop ->
  ?primary_key:bool prop ->
  unit ->
  source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns

type source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables

val source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables :
  ?postgresql_columns:
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables__postgresql_columns
    list ->
  table:string prop ->
  unit ->
  source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables

type source_config__postgresql_source_config__include_objects__postgresql_schemas

val source_config__postgresql_source_config__include_objects__postgresql_schemas :
  ?postgresql_tables:
    source_config__postgresql_source_config__include_objects__postgresql_schemas__postgresql_tables
    list ->
  schema:string prop ->
  unit ->
  source_config__postgresql_source_config__include_objects__postgresql_schemas

type source_config__postgresql_source_config__include_objects

val source_config__postgresql_source_config__include_objects :
  postgresql_schemas:
    source_config__postgresql_source_config__include_objects__postgresql_schemas
    list ->
  unit ->
  source_config__postgresql_source_config__include_objects

type source_config__postgresql_source_config

val source_config__postgresql_source_config :
  ?max_concurrent_backfill_tasks:float prop ->
  ?exclude_objects:
    source_config__postgresql_source_config__exclude_objects list ->
  ?include_objects:
    source_config__postgresql_source_config__include_objects list ->
  publication:string prop ->
  replication_slot:string prop ->
  unit ->
  source_config__postgresql_source_config

type source_config

val source_config :
  ?mysql_source_config:source_config__mysql_source_config list ->
  ?oracle_source_config:source_config__oracle_source_config list ->
  ?postgresql_source_config:
    source_config__postgresql_source_config list ->
  source_connection_profile:string prop ->
  unit ->
  source_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_datastream_stream

val google_datastream_stream :
  ?create_without_validation:bool prop ->
  ?customer_managed_encryption_key:string prop ->
  ?desired_state:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?backfill_all:backfill_all list ->
  ?backfill_none:backfill_none list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  stream_id:string prop ->
  destination_config:destination_config list ->
  source_config:source_config list ->
  unit ->
  google_datastream_stream

val yojson_of_google_datastream_stream :
  google_datastream_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_without_validation : bool prop;
  customer_managed_encryption_key : string prop;
  desired_state : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  stream_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_without_validation:bool prop ->
  ?customer_managed_encryption_key:string prop ->
  ?desired_state:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?backfill_all:backfill_all list ->
  ?backfill_none:backfill_none list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  stream_id:string prop ->
  destination_config:destination_config list ->
  source_config:source_config list ->
  string ->
  t

val make :
  ?create_without_validation:bool prop ->
  ?customer_managed_encryption_key:string prop ->
  ?desired_state:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?backfill_all:backfill_all list ->
  ?backfill_none:backfill_none list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  location:string prop ->
  stream_id:string prop ->
  destination_config:destination_config list ->
  source_config:source_config list ->
  string ->
  t Tf_core.resource
