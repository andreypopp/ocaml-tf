(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_kms_key_ring

val google_kms_key_ring :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_kms_key_ring

val yojson_of_google_kms_key_ring : google_kms_key_ring -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
