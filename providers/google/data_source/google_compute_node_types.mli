(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_compute_node_types

val google_compute_node_types :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  unit ->
  google_compute_node_types

val yojson_of_google_compute_node_types :
  google_compute_node_types -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  names : string list prop;
  project : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  string ->
  t Tf_core.resource
