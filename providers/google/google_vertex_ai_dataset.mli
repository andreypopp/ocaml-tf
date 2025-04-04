(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  unit ->
  google_vertex_ai_dataset

val yojson_of_google_vertex_ai_dataset :
  google_vertex_ai_dataset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?region:string prop ->
  ?encryption_spec:encryption_spec list ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  metadata_schema_uri:string prop ->
  string ->
  t Tf_core.resource
