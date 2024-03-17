(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_iam_member__condition
type google_storage_bucket_iam_member

val google_storage_bucket_iam_member :
  ?id:string ->
  bucket:string ->
  member:string ->
  role:string ->
  condition:google_storage_bucket_iam_member__condition list ->
  string ->
  unit
