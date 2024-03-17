(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_online_store_featureview__big_query_source

type google_vertex_ai_feature_online_store_featureview__feature_registry_source__feature_groups

type google_vertex_ai_feature_online_store_featureview__feature_registry_source

type google_vertex_ai_feature_online_store_featureview__sync_config
type google_vertex_ai_feature_online_store_featureview__timeouts
type google_vertex_ai_feature_online_store_featureview

type t = private {
  create_time : string prop;
  effective_labels : (string * string) list prop;
  feature_online_store : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_vertex_ai_feature_online_store_featureview :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_vertex_ai_feature_online_store_featureview__timeouts ->
  feature_online_store:string prop ->
  region:string prop ->
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
  t
