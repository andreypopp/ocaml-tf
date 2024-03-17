(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_iam_member__condition
type google_storage_bucket_iam_member

type t = private {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

val google_storage_bucket_iam_member :
  ?id:string prop ->
  bucket:string prop ->
  member:string prop ->
  role:string prop ->
  condition:google_storage_bucket_iam_member__condition list ->
  string ->
  t
