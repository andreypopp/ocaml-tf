(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_object_lock_configuration__rule__default_retention
type aws_s3_bucket_object_lock_configuration__rule
type aws_s3_bucket_object_lock_configuration

val aws_s3_bucket_object_lock_configuration :
  ?expected_bucket_owner:string ->
  ?id:string ->
  ?object_lock_enabled:string ->
  ?token:string ->
  bucket:string ->
  rule:aws_s3_bucket_object_lock_configuration__rule list ->
  string ->
  unit
