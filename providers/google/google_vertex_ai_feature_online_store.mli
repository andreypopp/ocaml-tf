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
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
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
  effective_labels : (string * string) list prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?bigtable:bigtable list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
