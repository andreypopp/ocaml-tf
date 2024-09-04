(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type big_query__big_query_source

val big_query__big_query_source :
  input_uri:string prop -> unit -> big_query__big_query_source

type big_query

val big_query :
  ?entity_id_columns:string prop list ->
  big_query_source:big_query__big_query_source list ->
  unit ->
  big_query

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_feature_group

val google_vertex_ai_feature_group :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?big_query:big_query list ->
  ?timeouts:timeouts ->
  unit ->
  google_vertex_ai_feature_group

val yojson_of_google_vertex_ai_feature_group :
  google_vertex_ai_feature_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
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
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?big_query:big_query list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?big_query:big_query list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
