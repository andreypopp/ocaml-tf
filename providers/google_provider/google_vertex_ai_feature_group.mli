(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_group__big_query__big_query_source
type google_vertex_ai_feature_group__big_query
type google_vertex_ai_feature_group__timeouts
type google_vertex_ai_feature_group

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

val google_vertex_ai_feature_group :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_feature_group__timeouts ->
  big_query:google_vertex_ai_feature_group__big_query list ->
  string ->
  t
