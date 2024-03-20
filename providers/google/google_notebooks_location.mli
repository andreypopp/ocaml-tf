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

type google_notebooks_location

val google_notebooks_location :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  unit ->
  google_notebooks_location

val yojson_of_google_notebooks_location :
  google_notebooks_location -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
