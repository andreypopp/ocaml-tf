(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_index__metadata__config__algorithm_config__brute_force_config

type google_vertex_ai_index__metadata__config__algorithm_config__tree_ah_config

type google_vertex_ai_index__metadata__config__algorithm_config
type google_vertex_ai_index__metadata__config
type google_vertex_ai_index__metadata
type google_vertex_ai_index__timeouts

type google_vertex_ai_index__deployed_indexes = {
  deployed_index_id : string prop;  (** deployed_index_id *)
  index_endpoint : string prop;  (** index_endpoint *)
}

type google_vertex_ai_index__index_stats = {
  shards_count : float prop;  (** shards_count *)
  vectors_count : string prop;  (** vectors_count *)
}

type google_vertex_ai_index

val google_vertex_ai_index :
  ?description:string prop ->
  ?id:string prop ->
  ?index_update_method:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_index__timeouts ->
  display_name:string prop ->
  metadata:google_vertex_ai_index__metadata list ->
  string ->
  unit
