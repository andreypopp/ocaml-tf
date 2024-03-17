(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_default_object_acl

type t = private {
  bucket : string prop;
  id : string prop;
  role_entity : string list prop;
}

val google_storage_default_object_acl :
  ?id:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  string ->
  t
