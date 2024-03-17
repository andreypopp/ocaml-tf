(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry__gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string;  (** file_path *)
  size_bytes : float;  (** size_bytes *)
}

type google_data_catalog_entry__gcs_fileset_spec
type google_data_catalog_entry__timeouts

type google_data_catalog_entry__bigquery_date_sharded_spec = {
  dataset : string;  (** dataset *)
  shard_count : float;  (** shard_count *)
  table_prefix : string;  (** table_prefix *)
}

type google_data_catalog_entry__bigquery_table_spec__view_spec = {
  view_query : string;  (** view_query *)
}

type google_data_catalog_entry__bigquery_table_spec__table_spec = {
  grouped_entry : string;  (** grouped_entry *)
}

type google_data_catalog_entry__bigquery_table_spec = {
  table_source_type : string;  (** table_source_type *)
  table_spec :
    google_data_catalog_entry__bigquery_table_spec__table_spec list;
      (** table_spec *)
  view_spec :
    google_data_catalog_entry__bigquery_table_spec__view_spec list;
      (** view_spec *)
}

type google_data_catalog_entry

val google_data_catalog_entry :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?linked_resource:string ->
  ?schema:string ->
  ?type_:string ->
  ?user_specified_system:string ->
  ?user_specified_type:string ->
  ?timeouts:google_data_catalog_entry__timeouts ->
  entry_group:string ->
  entry_id:string ->
  gcs_fileset_spec:google_data_catalog_entry__gcs_fileset_spec list ->
  string ->
  unit
