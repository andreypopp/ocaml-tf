(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_metric__filter
type aws_s3_bucket_metric

type t = private {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

val aws_s3_bucket_metric :
  ?id:string prop ->
  bucket:string prop ->
  name:string prop ->
  filter:aws_s3_bucket_metric__filter list ->
  string ->
  t
