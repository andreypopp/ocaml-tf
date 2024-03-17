(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_object_copy__grant
type aws_s3_object_copy

val aws_s3_object_copy :
  ?acl:string ->
  ?bucket_key_enabled:bool ->
  ?cache_control:string ->
  ?checksum_algorithm:string ->
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_language:string ->
  ?content_type:string ->
  ?copy_if_match:string ->
  ?copy_if_modified_since:string ->
  ?copy_if_none_match:string ->
  ?copy_if_unmodified_since:string ->
  ?customer_algorithm:string ->
  ?customer_key:string ->
  ?customer_key_md5:string ->
  ?expected_bucket_owner:string ->
  ?expected_source_bucket_owner:string ->
  ?expires:string ->
  ?force_destroy:bool ->
  ?id:string ->
  ?kms_encryption_context:string ->
  ?kms_key_id:string ->
  ?metadata:(string * string) list ->
  ?metadata_directive:string ->
  ?object_lock_legal_hold_status:string ->
  ?object_lock_mode:string ->
  ?object_lock_retain_until_date:string ->
  ?request_payer:string ->
  ?server_side_encryption:string ->
  ?source_customer_algorithm:string ->
  ?source_customer_key:string ->
  ?source_customer_key_md5:string ->
  ?storage_class:string ->
  ?tagging_directive:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?website_redirect:string ->
  bucket:string ->
  key:string ->
  source:string ->
  grant:aws_s3_object_copy__grant list ->
  string ->
  unit
