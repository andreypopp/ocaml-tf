(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_acl__access_control_policy__grant__grantee
type aws_s3_bucket_acl__access_control_policy__grant
type aws_s3_bucket_acl__access_control_policy__owner
type aws_s3_bucket_acl__access_control_policy
type aws_s3_bucket_acl

type t = private {
  acl : string prop;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val aws_s3_bucket_acl :
  ?acl:string prop ->
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  access_control_policy:aws_s3_bucket_acl__access_control_policy list ->
  string ->
  t
