(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata : ?items:string prop Tf_core.assoc -> unit -> metadata

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_instance_settings

val google_compute_instance_settings :
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  zone:string prop ->
  unit ->
  google_compute_instance_settings

val yojson_of_google_compute_instance_settings :
  google_compute_instance_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  fingerprint : string prop;
  id : string prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?metadata:metadata list ->
  ?timeouts:timeouts ->
  zone:string prop ->
  string ->
  t Tf_core.resource
