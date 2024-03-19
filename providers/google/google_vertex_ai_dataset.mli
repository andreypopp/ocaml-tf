(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type encryption_spec

val encryption_spec :
  ?kms_key_name:string prop -> unit -> encryption_spec

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vertex_ai_dataset

val google_vertex_ai_dataset :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  encryption_spec:encryption_spec list ->
  unit ->
  google_vertex_ai_dataset

val yojson_of_google_vertex_ai_dataset :
  google_vertex_ai_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  encryption_spec:encryption_spec list ->
  string ->
  t
