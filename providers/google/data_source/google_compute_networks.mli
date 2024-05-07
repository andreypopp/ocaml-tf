(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_networks

val google_compute_networks :
  ?id:string prop ->
  ?project:string prop ->
  unit ->
  google_compute_networks

val yojson_of_google_compute_networks :
  google_compute_networks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  networks : string list prop;
  project : string prop;
  self_link : string prop;
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
