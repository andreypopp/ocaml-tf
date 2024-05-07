(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_container_registry_image

val google_container_registry_image :
  ?digest:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?tag:string prop ->
  name:string prop ->
  unit ->
  google_container_registry_image

val yojson_of_google_container_registry_image :
  google_container_registry_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  digest : string prop;
  id : string prop;
  image_url : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  tag : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?digest:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?tag:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?digest:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?tag:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
