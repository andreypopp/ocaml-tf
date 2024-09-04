(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bigtable__auto_scaling

val bigtable__auto_scaling :
  ?cpu_utilization_target:float prop ->
  max_node_count:float prop ->
  min_node_count:float prop ->
  unit ->
  bigtable__auto_scaling

type bigtable

val bigtable :
  auto_scaling:bigtable__auto_scaling list -> unit -> bigtable

type dedicated_serving_endpoint__private_service_connect_config

val dedicated_serving_endpoint__private_service_connect_config :
  ?project_allowlist:string prop list ->
  enable_private_service_connect:bool prop ->
  unit ->
  dedicated_serving_endpoint__private_service_connect_config

type dedicated_serving_endpoint

val dedicated_serving_endpoint :
  ?private_service_connect_config:
    dedicated_serving_endpoint__private_service_connect_config list ->
  unit ->
  dedicated_serving_endpoint

type optimized

val optimized : unit -> optimized

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_feature_online_store

val google_vertex_ai_feature_online_store :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
  ?dedicated_serving_endpoint:dedicated_serving_endpoint list ->
  ?optimized:optimized list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_vertex_ai_feature_online_store

val yojson_of_google_vertex_ai_feature_online_store :
  google_vertex_ai_feature_online_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
  ?dedicated_serving_endpoint:dedicated_serving_endpoint list ->
  ?optimized:optimized list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
  ?dedicated_serving_endpoint:dedicated_serving_endpoint list ->
  ?optimized:optimized list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
