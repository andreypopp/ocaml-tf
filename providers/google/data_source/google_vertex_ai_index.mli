

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type deployed_indexes = {
  deployed_index_id: string prop;  (** deployed_index_id *)
  index_endpoint: string prop;  (** index_endpoint *)
}
type index_stats = {
  shards_count: float prop;  (** shards_count *)
  vectors_count: string prop;  (** vectors_count *)
}
type metadata__config__algorithm_config__tree_ah_config = {
  leaf_node_embedding_count: float prop;  (** leaf_node_embedding_count *)
  leaf_nodes_to_search_percent: float prop;  (** leaf_nodes_to_search_percent *)
}
type metadata__config__algorithm_config__brute_force_config
type metadata__config__algorithm_config = {
  brute_force_config: metadata__config__algorithm_config__brute_force_config list; [@default []] [@yojson_drop_default ( = )] (** brute_force_config *)
  tree_ah_config: metadata__config__algorithm_config__tree_ah_config list; [@default []] [@yojson_drop_default ( = )] (** tree_ah_config *)
}
type metadata__config = {
  algorithm_config: metadata__config__algorithm_config list; [@default []] [@yojson_drop_default ( = )] (** algorithm_config *)
  approximate_neighbors_count: float prop;  (** approximate_neighbors_count *)
  dimensions: float prop;  (** dimensions *)
  distance_measure_type: string prop;  (** distance_measure_type *)
  feature_norm_type: string prop;  (** feature_norm_type *)
  shard_size: string prop;  (** shard_size *)
}
type metadata = {
  config: metadata__config list; [@default []] [@yojson_drop_default ( = )] (** config *)
  contents_delta_uri: string prop;  (** contents_delta_uri *)
  is_complete_overwrite: bool prop;  (** is_complete_overwrite *)
}
type google_vertex_ai_index

val google_vertex_ai_index :
    ?id:string prop ->
    ?project:string prop ->
    name:string prop ->
    region:string prop ->
    unit ->
    google_vertex_ai_index

val yojson_of_google_vertex_ai_index : google_vertex_ai_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  create_time: string prop;
  deployed_indexes: deployed_indexes list prop;
  description: string prop;
  display_name: string prop;
  effective_labels: (string * string) list prop;
  etag: string prop;
  id: string prop;
  index_stats: index_stats list prop;
  index_update_method: string prop;
  labels: (string * string) list prop;
  metadata: metadata list prop;
  metadata_schema_uri: string prop;
  name: string prop;
  project: string prop;
  region: string prop;
  terraform_labels: (string * string) list prop;
  update_time: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?id:string prop ->
    ?project:string prop ->
    name:string prop ->
    region:string prop ->
    string ->
    t

val make :
    ?id:string prop ->
    ?project:string prop ->
    name:string prop ->
    region:string prop ->
    string ->
    t Tf_core.resource

