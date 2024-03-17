(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_iam_binding__condition
type google_storage_bucket_iam_binding

val google_storage_bucket_iam_binding :
  ?id:string ->
  bucket:string ->
  members:string list ->
  role:string ->
  condition:google_storage_bucket_iam_binding__condition list ->
  string ->
  unit
