(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_spec

val encryption_spec :
  kms_key_name:string prop -> unit -> encryption_spec

type online_serving_config__scaling

val online_serving_config__scaling :
  max_node_count:float prop ->
  min_node_count:float prop ->
  unit ->
  online_serving_config__scaling

type online_serving_config

val online_serving_config :
  ?fixed_node_count:float prop ->
  ?scaling:online_serving_config__scaling list ->
  unit ->
  online_serving_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_featurestore

val google_vertex_ai_featurestore :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?online_serving_config:online_serving_config list ->
  ?timeouts:timeouts ->
  unit ->
  google_vertex_ai_featurestore

val yojson_of_google_vertex_ai_featurestore :
  google_vertex_ai_featurestore -> json

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
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?online_serving_config:online_serving_config list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?online_serving_config:online_serving_config list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
