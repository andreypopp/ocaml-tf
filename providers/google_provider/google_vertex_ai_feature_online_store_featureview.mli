(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_online_store_featureview__big_query_source

type google_vertex_ai_feature_online_store_featureview__feature_registry_source__feature_groups

type google_vertex_ai_feature_online_store_featureview__feature_registry_source

type google_vertex_ai_feature_online_store_featureview__sync_config
type google_vertex_ai_feature_online_store_featureview__timeouts
type google_vertex_ai_feature_online_store_featureview

val google_vertex_ai_feature_online_store_featureview :
  ?id:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  ?project:string ->
  ?timeouts:
    google_vertex_ai_feature_online_store_featureview__timeouts ->
  feature_online_store:string ->
  region:string ->
  big_query_source:
    google_vertex_ai_feature_online_store_featureview__big_query_source
    list ->
  feature_registry_source:
    google_vertex_ai_feature_online_store_featureview__feature_registry_source
    list ->
  sync_config:
    google_vertex_ai_feature_online_store_featureview__sync_config
    list ->
  string ->
  unit
