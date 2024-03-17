(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_index__metadata__config__algorithm_config__brute_force_config

type google_vertex_ai_index__metadata__config__algorithm_config__tree_ah_config

type google_vertex_ai_index__metadata__config__algorithm_config
type google_vertex_ai_index__metadata__config
type google_vertex_ai_index__metadata
type google_vertex_ai_index__timeouts

type google_vertex_ai_index__deployed_indexes = {
  deployed_index_id : string;  (** deployed_index_id *)
  index_endpoint : string;  (** index_endpoint *)
}

type google_vertex_ai_index__index_stats = {
  shards_count : float;  (** shards_count *)
  vectors_count : string;  (** vectors_count *)
}

type google_vertex_ai_index

val google_vertex_ai_index :
  ?description:string ->
  ?id:string ->
  ?index_update_method:string ->
  ?labels:(string * string) list ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_vertex_ai_index__timeouts ->
  display_name:string ->
  metadata:google_vertex_ai_index__metadata list ->
  string ->
  unit
