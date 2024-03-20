(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_compute_region_disk_resource_policy_attachment

val google_compute_region_disk_resource_policy_attachment :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  name:string prop ->
  unit ->
  google_compute_region_disk_resource_policy_attachment

val yojson_of_google_compute_region_disk_resource_policy_attachment :
  google_compute_region_disk_resource_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disk : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:timeouts ->
  disk:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
