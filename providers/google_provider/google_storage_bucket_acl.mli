(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_acl

val google_storage_bucket_acl :
  ?default_acl:string ->
  ?id:string ->
  ?predefined_acl:string ->
  ?role_entity:string list ->
  bucket:string ->
  string ->
  unit
