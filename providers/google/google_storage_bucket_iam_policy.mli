(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_iam_policy

type t = private {
  bucket : string prop;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
}

val google_storage_bucket_iam_policy :
  ?id:string prop ->
  bucket:string prop ->
  policy_data:string prop ->
  string ->
  t
