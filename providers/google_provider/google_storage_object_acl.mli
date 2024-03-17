(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_object_acl

val google_storage_object_acl :
  ?id:string ->
  ?predefined_acl:string ->
  ?role_entity:string list ->
  bucket:string ->
  object_:string ->
  string ->
  unit
