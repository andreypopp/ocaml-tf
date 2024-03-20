(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_project_service

val google_project_service :
  ?id:string prop ->
  ?project:string prop ->
  service:string prop ->
  unit ->
  google_project_service

val yojson_of_google_project_service : google_project_service -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disable_dependent_services : bool prop;
  disable_on_destroy : bool prop;
  id : string prop;
  project : string prop;
  service : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  service:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  service:string prop ->
  string ->
  t Tf_core.resource
