(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_featurestore_entitytype_feature

val google_vertex_ai_featurestore_entitytype_feature :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  entitytype:string prop ->
  value_type:string prop ->
  unit ->
  google_vertex_ai_featurestore_entitytype_feature

val yojson_of_google_vertex_ai_featurestore_entitytype_feature :
  google_vertex_ai_featurestore_entitytype_feature -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?timeouts:timeouts ->
  entitytype:string prop ->
  value_type:string prop ->
  string ->
  t
