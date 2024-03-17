(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload

type aws_s3_bucket_lifecycle_configuration__rule__expiration
type aws_s3_bucket_lifecycle_configuration__rule__filter__and
type aws_s3_bucket_lifecycle_configuration__rule__filter__tag
type aws_s3_bucket_lifecycle_configuration__rule__filter

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition

type aws_s3_bucket_lifecycle_configuration__rule__transition
type aws_s3_bucket_lifecycle_configuration__rule
type aws_s3_bucket_lifecycle_configuration__timeouts
type aws_s3_bucket_lifecycle_configuration

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val aws_s3_bucket_lifecycle_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?timeouts:aws_s3_bucket_lifecycle_configuration__timeouts ->
  bucket:string prop ->
  rule:aws_s3_bucket_lifecycle_configuration__rule list ->
  string ->
  t
