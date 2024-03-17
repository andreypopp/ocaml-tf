(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vertex_ai_featurestore_entitytype_feature__timeouts
type google_vertex_ai_featurestore_entitytype_feature

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  entitytype : string prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  value_type : string prop;
}

val google_vertex_ai_featurestore_entitytype_feature :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:
    google_vertex_ai_featurestore_entitytype_feature__timeouts ->
  entitytype:string prop ->
  value_type:string prop ->
  string ->
  t
