(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type big_query_source

val big_query_source :
  entity_id_columns:string prop list ->
  uri:string prop ->
  unit ->
  big_query_source

type feature_registry_source__feature_groups

val feature_registry_source__feature_groups :
  feature_group_id:string prop ->
  feature_ids:string prop list ->
  unit ->
  feature_registry_source__feature_groups

type feature_registry_source

val feature_registry_source :
  ?project_number:string prop ->
  feature_groups:feature_registry_source__feature_groups list ->
  unit ->
  feature_registry_source

type sync_config

val sync_config : ?cron:string prop -> unit -> sync_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_feature_online_store_featureview

val google_vertex_ai_feature_online_store_featureview :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?big_query_source:big_query_source list ->
  ?feature_registry_source:feature_registry_source list ->
  ?sync_config:sync_config list ->
  ?timeouts:timeouts ->
  feature_online_store:string prop ->
  region:string prop ->
  unit ->
  google_vertex_ai_feature_online_store_featureview

val yojson_of_google_vertex_ai_feature_online_store_featureview :
  google_vertex_ai_feature_online_store_featureview -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  feature_online_store : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?big_query_source:big_query_source list ->
  ?feature_registry_source:feature_registry_source list ->
  ?sync_config:sync_config list ->
  ?timeouts:timeouts ->
  feature_online_store:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?big_query_source:big_query_source list ->
  ?feature_registry_source:feature_registry_source list ->
  ?sync_config:sync_config list ->
  ?timeouts:timeouts ->
  feature_online_store:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
