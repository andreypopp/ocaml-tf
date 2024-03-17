(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry__gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string prop;  (** file_path *)
  size_bytes : float prop;  (** size_bytes *)
}

type google_data_catalog_entry__gcs_fileset_spec
type google_data_catalog_entry__timeouts

type google_data_catalog_entry__bigquery_date_sharded_spec = {
  dataset : string prop;  (** dataset *)
  shard_count : float prop;  (** shard_count *)
  table_prefix : string prop;  (** table_prefix *)
}

type google_data_catalog_entry__bigquery_table_spec__view_spec = {
  view_query : string prop;  (** view_query *)
}

type google_data_catalog_entry__bigquery_table_spec__table_spec = {
  grouped_entry : string prop;  (** grouped_entry *)
}

type google_data_catalog_entry__bigquery_table_spec = {
  table_source_type : string prop;  (** table_source_type *)
  table_spec :
    google_data_catalog_entry__bigquery_table_spec__table_spec list;
      (** table_spec *)
  view_spec :
    google_data_catalog_entry__bigquery_table_spec__view_spec list;
      (** view_spec *)
}

type google_data_catalog_entry

val google_data_catalog_entry :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?linked_resource:string prop ->
  ?schema:string prop ->
  ?type_:string prop ->
  ?user_specified_system:string prop ->
  ?user_specified_type:string prop ->
  ?timeouts:google_data_catalog_entry__timeouts ->
  entry_group:string prop ->
  entry_id:string prop ->
  gcs_fileset_spec:google_data_catalog_entry__gcs_fileset_spec list ->
  string ->
  unit
