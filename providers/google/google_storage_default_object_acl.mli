(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_storage_default_object_acl

val google_storage_default_object_acl :
  ?id:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  unit ->
  google_storage_default_object_acl

val yojson_of_google_storage_default_object_acl :
  google_storage_default_object_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  role_entity : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  string ->
  t Tf_core.resource
