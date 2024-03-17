(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_feature_group_feature__timeouts
type google_vertex_ai_feature_group_feature

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  feature_group : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  version_column_name : string prop;
}

val google_vertex_ai_feature_group_feature :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?version_column_name:string prop ->
  ?timeouts:google_vertex_ai_feature_group_feature__timeouts ->
  feature_group:string prop ->
  name:string prop ->
  region:string prop ->
  string ->
  t
