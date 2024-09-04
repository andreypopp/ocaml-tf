(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_cloudbuildv2_repository

val google_cloudbuildv2_repository :
  ?annotations:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_connection:string prop ->
  remote_uri:string prop ->
  unit ->
  google_cloudbuildv2_repository

val yojson_of_google_cloudbuildv2_repository :
  google_cloudbuildv2_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  create_time : string prop;
  effective_annotations : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent_connection : string prop;
  project : string prop;
  remote_uri : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_connection:string prop ->
  remote_uri:string prop ->
  string ->
  t

val make :
  ?annotations:string prop Tf_core.assoc ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_connection:string prop ->
  remote_uri:string prop ->
  string ->
  t Tf_core.resource
