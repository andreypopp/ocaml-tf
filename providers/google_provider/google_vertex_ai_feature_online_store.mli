(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_online_store__bigtable__auto_scaling
type google_vertex_ai_feature_online_store__bigtable
type google_vertex_ai_feature_online_store__timeouts
type google_vertex_ai_feature_online_store

type t = private {
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

val google_vertex_ai_feature_online_store :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_feature_online_store__timeouts ->
  name:string prop ->
  bigtable:google_vertex_ai_feature_online_store__bigtable list ->
  string ->
  t
