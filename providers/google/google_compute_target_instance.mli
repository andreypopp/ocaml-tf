(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_target_instance

val google_compute_target_instance :
  ?description:string prop ->
  ?id:string prop ->
  ?nat_policy:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  unit ->
  google_compute_target_instance

val yojson_of_google_compute_target_instance :
  google_compute_target_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  instance : string prop;
  name : string prop;
  nat_policy : string prop;
  project : string prop;
  self_link : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?nat_policy:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?nat_policy:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  ?timeouts:timeouts ->
  instance:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
