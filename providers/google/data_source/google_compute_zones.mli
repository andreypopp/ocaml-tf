(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_zones

val google_compute_zones :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  unit ->
  google_compute_zones

val yojson_of_google_compute_zones : google_compute_zones -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  names : string list prop;
  project : string prop;
  region : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?status:string prop ->
  string ->
  t Tf_core.resource
