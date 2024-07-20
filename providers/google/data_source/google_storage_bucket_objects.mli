(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bucket_objects = {
  content_type : string prop;  (** content_type *)
  media_link : string prop;  (** media_link *)
  name : string prop;  (** name *)
  self_link : string prop;  (** self_link *)
  storage_class : string prop;  (** storage_class *)
}

type google_storage_bucket_objects

val google_storage_bucket_objects :
  ?id:string prop ->
  ?match_glob:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  unit ->
  google_storage_bucket_objects

val yojson_of_google_storage_bucket_objects :
  google_storage_bucket_objects -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  bucket_objects : bucket_objects list prop;
  id : string prop;
  match_glob : string prop;
  prefix : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?match_glob:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?match_glob:string prop ->
  ?prefix:string prop ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
