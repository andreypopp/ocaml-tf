(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type monitoring_config__categorical_threshold_config

val monitoring_config__categorical_threshold_config :
  value:float prop ->
  unit ->
  monitoring_config__categorical_threshold_config

type monitoring_config__import_features_analysis

val monitoring_config__import_features_analysis :
  ?anomaly_detection_baseline:string prop ->
  ?state:string prop ->
  unit ->
  monitoring_config__import_features_analysis

type monitoring_config__numerical_threshold_config

val monitoring_config__numerical_threshold_config :
  value:float prop ->
  unit ->
  monitoring_config__numerical_threshold_config

type monitoring_config__snapshot_analysis

val monitoring_config__snapshot_analysis :
  ?disabled:bool prop ->
  ?monitoring_interval_days:float prop ->
  ?staleness_days:float prop ->
  unit ->
  monitoring_config__snapshot_analysis

type monitoring_config

val monitoring_config :
  ?categorical_threshold_config:
    monitoring_config__categorical_threshold_config list ->
  ?import_features_analysis:
    monitoring_config__import_features_analysis list ->
  ?numerical_threshold_config:
    monitoring_config__numerical_threshold_config list ->
  ?snapshot_analysis:monitoring_config__snapshot_analysis list ->
  unit ->
  monitoring_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_featurestore_entitytype

val google_vertex_ai_featurestore_entitytype :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?monitoring_config:monitoring_config list ->
  ?timeouts:timeouts ->
  featurestore:string prop ->
  unit ->
  google_vertex_ai_featurestore_entitytype

val yojson_of_google_vertex_ai_featurestore_entitytype :
  google_vertex_ai_featurestore_entitytype -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  featurestore : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?monitoring_config:monitoring_config list ->
  ?timeouts:timeouts ->
  featurestore:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?monitoring_config:monitoring_config list ->
  ?timeouts:timeouts ->
  featurestore:string prop ->
  string ->
  t Tf_core.resource
