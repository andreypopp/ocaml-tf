(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_container_registry

val google_container_registry :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  unit ->
  google_container_registry

val yojson_of_google_container_registry :
  google_container_registry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket_self_link : string prop;
  id : string prop;
  location : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  string ->
  t
