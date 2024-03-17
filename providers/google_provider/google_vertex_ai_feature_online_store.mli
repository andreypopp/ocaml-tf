(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_online_store__bigtable__auto_scaling
type google_vertex_ai_feature_online_store__bigtable
type google_vertex_ai_feature_online_store__timeouts
type google_vertex_ai_feature_online_store

val google_vertex_ai_feature_online_store :
  ?force_destroy:bool ->
  ?labels:(string * string) list ->
  ?timeouts:google_vertex_ai_feature_online_store__timeouts ->
  name:string ->
  bigtable:google_vertex_ai_feature_online_store__bigtable list ->
  string ->
  unit
