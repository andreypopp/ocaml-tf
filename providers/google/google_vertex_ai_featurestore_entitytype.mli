(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  categorical_threshold_config:
    monitoring_config__categorical_threshold_config list ->
  import_features_analysis:
    monitoring_config__import_features_analysis list ->
  numerical_threshold_config:
    monitoring_config__numerical_threshold_config list ->
  snapshot_analysis:monitoring_config__snapshot_analysis list ->
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
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  featurestore:string prop ->
  monitoring_config:monitoring_config list ->
  unit ->
  google_vertex_ai_featurestore_entitytype

val yojson_of_google_vertex_ai_featurestore_entitytype :
  google_vertex_ai_featurestore_entitytype -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  featurestore : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  featurestore:string prop ->
  monitoring_config:monitoring_config list ->
  string ->
  t
