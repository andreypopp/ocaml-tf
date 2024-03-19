(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type deployed_indexes = {
  deployed_index_id : string prop;  (** deployed_index_id *)
  index_endpoint : string prop;  (** index_endpoint *)
}

type index_stats = {
  shards_count : float prop;  (** shards_count *)
  vectors_count : string prop;  (** vectors_count *)
}

type metadata__config__algorithm_config__brute_force_config

val metadata__config__algorithm_config__brute_force_config :
  unit -> metadata__config__algorithm_config__brute_force_config

type metadata__config__algorithm_config__tree_ah_config

val metadata__config__algorithm_config__tree_ah_config :
  ?leaf_node_embedding_count:float prop ->
  ?leaf_nodes_to_search_percent:float prop ->
  unit ->
  metadata__config__algorithm_config__tree_ah_config

type metadata__config__algorithm_config

val metadata__config__algorithm_config :
  brute_force_config:
    metadata__config__algorithm_config__brute_force_config list ->
  tree_ah_config:
    metadata__config__algorithm_config__tree_ah_config list ->
  unit ->
  metadata__config__algorithm_config

type metadata__config

val metadata__config :
  ?approximate_neighbors_count:float prop ->
  ?distance_measure_type:string prop ->
  ?feature_norm_type:string prop ->
  ?shard_size:string prop ->
  dimensions:float prop ->
  algorithm_config:metadata__config__algorithm_config list ->
  unit ->
  metadata__config

type metadata

val metadata :
  ?is_complete_overwrite:bool prop ->
  contents_delta_uri:string prop ->
  config:metadata__config list ->
  unit ->
  metadata

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_index

val google_vertex_ai_index :
  ?description:string prop ->
  ?id:string prop ->
  ?index_update_method:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata:metadata list ->
  unit ->
  google_vertex_ai_index

val yojson_of_google_vertex_ai_index : google_vertex_ai_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  deployed_indexes : deployed_indexes list prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  index_stats : index_stats list prop;
  index_update_method : string prop;
  labels : (string * string) list prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?index_update_method:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata:metadata list ->
  string ->
  t
