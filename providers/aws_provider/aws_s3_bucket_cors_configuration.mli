(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_cors_configuration__cors_rule
type aws_s3_bucket_cors_configuration

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

val aws_s3_bucket_cors_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  cors_rule:aws_s3_bucket_cors_configuration__cors_rule list ->
  string ->
  t
