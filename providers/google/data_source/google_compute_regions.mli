(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_regions

val google_compute_regions :
  ?id:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  unit ->
  google_compute_regions

val yojson_of_google_compute_regions : google_compute_regions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  names : string list prop;
  project : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?status:string prop ->
  string ->
  t Tf_core.resource
