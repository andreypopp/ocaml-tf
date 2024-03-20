(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_tpu_tensorflow_versions

val google_tpu_tensorflow_versions :
  ?id:string prop ->
  ?project:string prop ->
  ?zone:string prop ->
  unit ->
  google_tpu_tensorflow_versions

val yojson_of_google_tpu_tensorflow_versions :
  google_tpu_tensorflow_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  project : string prop;
  versions : string list prop;
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
