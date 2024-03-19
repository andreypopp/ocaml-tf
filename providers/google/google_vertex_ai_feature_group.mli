(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  big_query:big_query list ->
  unit ->
  google_vertex_ai_feature_group

val yojson_of_google_vertex_ai_feature_group :
  google_vertex_ai_feature_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
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
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  big_query:big_query list ->
  string ->
  t
