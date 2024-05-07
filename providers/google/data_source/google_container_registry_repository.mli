(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_registry_repository

val google_container_registry_repository :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  unit ->
  google_container_registry_repository

val yojson_of_google_container_registry_repository :
  google_container_registry_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  project : string prop;
  region : string prop;
  repository_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
