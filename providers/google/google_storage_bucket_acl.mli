(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type google_storage_bucket_acl

val google_storage_bucket_acl :
  ?default_acl:string prop ->
  ?id:string prop ->
  ?predefined_acl:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  unit ->
  google_storage_bucket_acl

val yojson_of_google_storage_bucket_acl :
  google_storage_bucket_acl -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bucket : string prop;
  default_acl : string prop;
  id : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_acl:string prop ->
  ?id:string prop ->
  ?predefined_acl:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  string ->
  t
