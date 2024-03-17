(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_featurestore_entitytype__monitoring_config__categorical_threshold_config

type google_vertex_ai_featurestore_entitytype__monitoring_config__import_features_analysis

type google_vertex_ai_featurestore_entitytype__monitoring_config__numerical_threshold_config

type google_vertex_ai_featurestore_entitytype__monitoring_config__snapshot_analysis

type google_vertex_ai_featurestore_entitytype__monitoring_config
type google_vertex_ai_featurestore_entitytype__timeouts
type google_vertex_ai_featurestore_entitytype

val google_vertex_ai_featurestore_entitytype :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:google_vertex_ai_featurestore_entitytype__timeouts ->
  featurestore:string prop ->
  monitoring_config:
    google_vertex_ai_featurestore_entitytype__monitoring_config list ->
  string ->
  unit
