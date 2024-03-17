(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_logging__target_grant__grantee
type aws_s3_bucket_logging__target_grant

type aws_s3_bucket_logging__target_object_key_format__partitioned_prefix

type aws_s3_bucket_logging__target_object_key_format__simple_prefix
type aws_s3_bucket_logging__target_object_key_format
type aws_s3_bucket_logging

val aws_s3_bucket_logging :
  ?expected_bucket_owner:string ->
  bucket:string ->
  target_bucket:string ->
  target_prefix:string ->
  target_grant:aws_s3_bucket_logging__target_grant list ->
  target_object_key_format:
    aws_s3_bucket_logging__target_object_key_format list ->
  string ->
  unit
