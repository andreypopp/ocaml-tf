(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type buckets = {
  labels : string prop Tf_core.assoc;  (** labels *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  self_link : string prop;  (** self_link *)
  storage_class : string prop;  (** storage_class *)
}

type google_storage_buckets

val google_storage_buckets :
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  unit ->
  google_storage_buckets

val yojson_of_google_storage_buckets : google_storage_buckets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  buckets : buckets list prop;
  id : string prop;
  prefix : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?prefix:string prop ->
  ?project:string prop ->
  string ->
  t Tf_core.resource
