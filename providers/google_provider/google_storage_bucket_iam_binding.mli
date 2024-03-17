(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_iam_binding__condition
type google_storage_bucket_iam_binding

type t = private {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

val google_storage_bucket_iam_binding :
  ?id:string prop ->
  bucket:string prop ->
  members:string prop list ->
  role:string prop ->
  condition:google_storage_bucket_iam_binding__condition list ->
  string ->
  t
