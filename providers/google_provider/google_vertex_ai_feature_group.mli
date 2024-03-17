(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_group__big_query__big_query_source
type google_vertex_ai_feature_group__big_query
type google_vertex_ai_feature_group__timeouts
type google_vertex_ai_feature_group

val google_vertex_ai_feature_group :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_vertex_ai_feature_group__timeouts ->
  big_query:google_vertex_ai_feature_group__big_query list ->
  string ->
  unit
