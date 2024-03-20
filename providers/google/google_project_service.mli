(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_project_service

val google_project_service :
  ?disable_dependent_services:bool prop ->
  ?disable_on_destroy:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
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
  ?disable_dependent_services:bool prop ->
  ?disable_on_destroy:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  string ->
  t

val make :
  ?disable_dependent_services:bool prop ->
  ?disable_on_destroy:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  service:string prop ->
  string ->
  t Tf_core.resource
