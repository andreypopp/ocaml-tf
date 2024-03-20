(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_default_service_account

val google_compute_default_service_account :
  ?id:string prop ->
  ?project:string prop ->
  unit ->
  google_compute_default_service_account

val yojson_of_google_compute_default_service_account :
  google_compute_default_service_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
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
