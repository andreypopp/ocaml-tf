(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_cors_configuration__cors_rule
type aws_s3_bucket_cors_configuration

val aws_s3_bucket_cors_configuration :
  ?expected_bucket_owner:string ->
  bucket:string ->
  cors_rule:aws_s3_bucket_cors_configuration__cors_rule list ->
  string ->
  unit
