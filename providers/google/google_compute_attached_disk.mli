(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_attached_disk

val google_compute_attached_disk :
  ?device_name:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  instance:string prop ->
  unit ->
  google_compute_attached_disk

val yojson_of_google_compute_attached_disk :
  google_compute_attached_disk -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  device_name : string prop;
  disk : string prop;
  id : string prop;
  instance : string prop;
  mode : string prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?device_name:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  instance:string prop ->
  string ->
  t

val make :
  ?device_name:string prop ->
  ?id:string prop ->
  ?mode:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  instance:string prop ->
  string ->
  t Tf_core.resource
