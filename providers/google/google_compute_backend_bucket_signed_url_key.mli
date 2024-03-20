(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_backend_bucket_signed_url_key

val google_compute_backend_bucket_signed_url_key :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  backend_bucket:string prop ->
  key_value:string prop ->
  name:string prop ->
  unit ->
  google_compute_backend_bucket_signed_url_key

val yojson_of_google_compute_backend_bucket_signed_url_key :
  google_compute_backend_bucket_signed_url_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backend_bucket : string prop;
  id : string prop;
  key_value : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  backend_bucket:string prop ->
  key_value:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  backend_bucket:string prop ->
  key_value:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
