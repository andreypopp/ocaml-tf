(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type google_project_usage_export_bucket

val google_project_usage_export_bucket :
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  unit ->
  google_project_usage_export_bucket

val yojson_of_google_project_usage_export_bucket :
  google_project_usage_export_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket_name : string prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  string ->
  t Tf_core.resource
