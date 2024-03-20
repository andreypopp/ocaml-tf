(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_shared_vpc_host_project

val google_compute_shared_vpc_host_project :
  ?id:string prop ->
  ?timeouts:timeouts ->
  project:string prop ->
  unit ->
  google_compute_shared_vpc_host_project

val yojson_of_google_compute_shared_vpc_host_project :
  google_compute_shared_vpc_host_project -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; project : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  project:string prop ->
  string ->
  t Tf_core.resource
