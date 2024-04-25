(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigquery_date_sharded_spec = {
  dataset : string prop;  (** dataset *)
  shard_count : float prop;  (** shard_count *)
  table_prefix : string prop;  (** table_prefix *)
}

type bigquery_table_spec__view_spec = {
  view_query : string prop;  (** view_query *)
}

type bigquery_table_spec__table_spec = {
  grouped_entry : string prop;  (** grouped_entry *)
}

type bigquery_table_spec = {
  table_source_type : string prop;  (** table_source_type *)
  table_spec : bigquery_table_spec__table_spec list;
      (** table_spec *)
  view_spec : bigquery_table_spec__view_spec list;  (** view_spec *)
}

type gcs_fileset_spec__sample_gcs_file_specs = {
  file_path : string prop;  (** file_path *)
  size_bytes : float prop;  (** size_bytes *)
}

type gcs_fileset_spec

val gcs_fileset_spec :
  file_patterns:string prop list -> unit -> gcs_fileset_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?gcs_fileset_spec:gcs_fileset_spec list ->
  ?timeouts:timeouts ->
  entry_group:string prop ->
  entry_id:string prop ->
  unit ->
  google_data_catalog_entry

val yojson_of_google_data_catalog_entry :
  google_data_catalog_entry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bigquery_date_sharded_spec : bigquery_date_sharded_spec list prop;
  bigquery_table_spec : bigquery_table_spec list prop;
  description : string prop;
  display_name : string prop;
  entry_group : string prop;
  entry_id : string prop;
  id : string prop;
  integrated_system : string prop;
  linked_resource : string prop;
  name : string prop;
  schema : string prop;
  type_ : string prop;
  user_specified_system : string prop;
  user_specified_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?linked_resource:string prop ->
  ?schema:string prop ->
  ?type_:string prop ->
  ?user_specified_system:string prop ->
  ?user_specified_type:string prop ->
  ?gcs_fileset_spec:gcs_fileset_spec list ->
  ?timeouts:timeouts ->
  entry_group:string prop ->
  entry_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?linked_resource:string prop ->
  ?schema:string prop ->
  ?type_:string prop ->
  ?user_specified_system:string prop ->
  ?user_specified_type:string prop ->
  ?gcs_fileset_spec:gcs_fileset_spec list ->
  ?timeouts:timeouts ->
  entry_group:string prop ->
  entry_id:string prop ->
  string ->
  t Tf_core.resource
