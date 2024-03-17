(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_acl__access_control_policy__grant__grantee
type aws_s3_bucket_acl__access_control_policy__grant
type aws_s3_bucket_acl__access_control_policy__owner
type aws_s3_bucket_acl__access_control_policy
type aws_s3_bucket_acl

val aws_s3_bucket_acl :
  ?acl:string ->
  ?expected_bucket_owner:string ->
  ?id:string ->
  bucket:string ->
  access_control_policy:aws_s3_bucket_acl__access_control_policy list ->
  string ->
  unit
