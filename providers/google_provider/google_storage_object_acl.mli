(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_object_acl

val google_storage_object_acl :
  ?id:string prop ->
  ?predefined_acl:string prop ->
  ?role_entity:string prop list ->
  bucket:string prop ->
  object_:string prop ->
  string ->
  unit
