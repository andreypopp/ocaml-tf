(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_metric__filter
type aws_s3_bucket_metric

val aws_s3_bucket_metric :
  ?id:string ->
  bucket:string ->
  name:string ->
  filter:aws_s3_bucket_metric__filter list ->
  string ->
  unit
