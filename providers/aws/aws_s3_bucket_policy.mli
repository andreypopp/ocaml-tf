(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_policy

type t = private {
  bucket : string prop;
  id : string prop;
  policy : string prop;
}

val aws_s3_bucket_policy :
  ?id:string prop ->
  bucket:string prop ->
  policy:string prop ->
  string ->
  t
