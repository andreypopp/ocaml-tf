(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_instance_group_membership

val google_compute_instance_group_membership :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  instance_group:string prop ->
  unit ->
  google_compute_instance_group_membership

val yojson_of_google_compute_instance_group_membership :
  google_compute_instance_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance : string prop;
  instance_group : string prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  instance_group:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  instance_group:string prop ->
  string ->
  t Tf_core.resource
