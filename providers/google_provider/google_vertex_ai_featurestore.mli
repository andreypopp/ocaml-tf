(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_featurestore__encryption_spec
type google_vertex_ai_featurestore__online_serving_config__scaling
type google_vertex_ai_featurestore__online_serving_config
type google_vertex_ai_featurestore__timeouts
type google_vertex_ai_featurestore

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
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_vertex_ai_featurestore :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_vertex_ai_featurestore__timeouts ->
  encryption_spec:google_vertex_ai_featurestore__encryption_spec list ->
  online_serving_config:
    google_vertex_ai_featurestore__online_serving_config list ->
  string ->
  t
