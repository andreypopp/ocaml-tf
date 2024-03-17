(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_versioning__versioning_configuration
type aws_s3_bucket_versioning

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  mfa : string prop;
}

val aws_s3_bucket_versioning :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?mfa:string prop ->
  bucket:string prop ->
  versioning_configuration:
    aws_s3_bucket_versioning__versioning_configuration list ->
  string ->
  t
