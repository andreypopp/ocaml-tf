(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_acl

type t = private {
  bucket : string prop;
  default_acl : string prop;
  id : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

val google_storage_bucket_acl :
  ?default_acl:string prop ->
  ?id:string prop ->
  ?predefined_acl:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  string ->
  t
