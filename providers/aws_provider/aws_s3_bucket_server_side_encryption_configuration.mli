(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default

type aws_s3_bucket_server_side_encryption_configuration__rule
type aws_s3_bucket_server_side_encryption_configuration

val aws_s3_bucket_server_side_encryption_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  rule:aws_s3_bucket_server_side_encryption_configuration__rule list ->
  string ->
  unit
