(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_object_lock_configuration__rule__default_retention
type aws_s3_bucket_object_lock_configuration__rule
type aws_s3_bucket_object_lock_configuration

type t = private {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  object_lock_enabled : string prop;
  token : string prop;
}

val aws_s3_bucket_object_lock_configuration :
  ?expected_bucket_owner:string prop ->
  ?id:string prop ->
  ?object_lock_enabled:string prop ->
  ?token:string prop ->
  bucket:string prop ->
  rule:aws_s3_bucket_object_lock_configuration__rule list ->
  string ->
  t
