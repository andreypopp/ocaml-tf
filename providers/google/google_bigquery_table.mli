(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_bigquery_table__encryption_configuration
type google_bigquery_table__external_data_configuration__avro_options
type google_bigquery_table__external_data_configuration__csv_options

type google_bigquery_table__external_data_configuration__google_sheets_options

type google_bigquery_table__external_data_configuration__hive_partitioning_options

type google_bigquery_table__external_data_configuration__json_options

type google_bigquery_table__external_data_configuration__parquet_options

type google_bigquery_table__external_data_configuration
type google_bigquery_table__materialized_view
type google_bigquery_table__range_partitioning__range
type google_bigquery_table__range_partitioning

type google_bigquery_table__table_constraints__foreign_keys__column_references

type google_bigquery_table__table_constraints__foreign_keys__referenced_table

type google_bigquery_table__table_constraints__foreign_keys
type google_bigquery_table__table_constraints__primary_key
type google_bigquery_table__table_constraints
type google_bigquery_table__table_replication_info
type google_bigquery_table__time_partitioning
type google_bigquery_table__view
type google_bigquery_table

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
  encryption_configuration:
    google_bigquery_table__encryption_configuration list ->
  external_data_configuration:
    google_bigquery_table__external_data_configuration list ->
  materialized_view:google_bigquery_table__materialized_view list ->
  range_partitioning:google_bigquery_table__range_partitioning list ->
  table_constraints:google_bigquery_table__table_constraints list ->
  table_replication_info:
    google_bigquery_table__table_replication_info list ->
  time_partitioning:google_bigquery_table__time_partitioning list ->
  view:google_bigquery_table__view list ->
  string ->
  t
