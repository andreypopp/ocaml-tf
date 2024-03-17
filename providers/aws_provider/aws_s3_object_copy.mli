(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_object_copy__grant
type aws_s3_object_copy

val aws_s3_object_copy :
  ?checksum_algorithm:string ->
  ?copy_if_match:string ->
  ?copy_if_modified_since:string ->
  ?copy_if_none_match:string ->
  ?copy_if_unmodified_since:string ->
  ?customer_key:string ->
  ?expected_bucket_owner:string ->
  ?expected_source_bucket_owner:string ->
  ?expires:string ->
  ?force_destroy:bool ->
  ?metadata_directive:string ->
  ?request_payer:string ->
  ?source_customer_algorithm:string ->
  ?source_customer_key:string ->
  ?source_customer_key_md5:string ->
  ?tagging_directive:string ->
  ?tags:(string * string) list ->
  bucket:string ->
  key:string ->
  source:string ->
  grant:aws_s3_object_copy__grant list ->
  string ->
  unit
