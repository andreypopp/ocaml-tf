(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload

type aws_s3control_bucket_lifecycle_configuration__rule__expiration
type aws_s3control_bucket_lifecycle_configuration__rule__filter
type aws_s3control_bucket_lifecycle_configuration__rule
type aws_s3control_bucket_lifecycle_configuration

val aws_s3control_bucket_lifecycle_configuration :
  ?id:string prop ->
  bucket:string prop ->
  rule:aws_s3control_bucket_lifecycle_configuration__rule list ->
  string ->
  unit
