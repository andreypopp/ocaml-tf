(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_ownership_controls__rule
type aws_s3_bucket_ownership_controls

val aws_s3_bucket_ownership_controls :
  ?id:string ->
  bucket:string ->
  rule:aws_s3_bucket_ownership_controls__rule list ->
  string ->
  unit
