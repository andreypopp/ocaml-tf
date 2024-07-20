(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_project_cloud_armor_tier

val google_compute_project_cloud_armor_tier :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cloud_armor_tier:string prop ->
  unit ->
  google_compute_project_cloud_armor_tier

val yojson_of_google_compute_project_cloud_armor_tier :
  google_compute_project_cloud_armor_tier -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cloud_armor_tier : string prop;
  id : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cloud_armor_tier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cloud_armor_tier:string prop ->
  string ->
  t Tf_core.resource
