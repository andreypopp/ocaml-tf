(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_project_metadata

val google_compute_project_metadata :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  metadata:(string * string prop) list ->
  unit ->
  google_compute_project_metadata

val yojson_of_google_compute_project_metadata :
  google_compute_project_metadata -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  metadata : (string * string) list prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  metadata:(string * string prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  metadata:(string * string prop) list ->
  string ->
  t Tf_core.resource
