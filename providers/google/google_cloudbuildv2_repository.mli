(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_cloudbuildv2_repository

val google_cloudbuildv2_repository :
  ?annotations:(string * string prop) list ->
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
  annotations : (string * string) list prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
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
  ?annotations:(string * string prop) list ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  parent_connection:string prop ->
  remote_uri:string prop ->
  string ->
  t
