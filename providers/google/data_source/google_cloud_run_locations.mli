(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_cloud_run_locations

val google_cloud_run_locations :
  ?id:string prop ->
  ?project:string prop ->
  unit ->
  google_cloud_run_locations

val yojson_of_google_cloud_run_locations :
  google_cloud_run_locations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  locations : string list prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
