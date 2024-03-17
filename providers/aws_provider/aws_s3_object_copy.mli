(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_object_copy__grant
type aws_s3_object_copy

val aws_s3_object_copy :
  ?acl:string prop ->
  ?bucket_key_enabled:bool prop ->
  ?cache_control:string prop ->
  ?checksum_algorithm:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?copy_if_match:string prop ->
  ?copy_if_modified_since:string prop ->
  ?copy_if_none_match:string prop ->
  ?copy_if_unmodified_since:string prop ->
  ?customer_algorithm:string prop ->
  ?customer_key:string prop ->
  ?customer_key_md5:string prop ->
  ?expected_bucket_owner:string prop ->
  ?expected_source_bucket_owner:string prop ->
  ?expires:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_encryption_context:string prop ->
  ?kms_key_id:string prop ->
  ?metadata:(string * string prop) list ->
  ?metadata_directive:string prop ->
  ?object_lock_legal_hold_status:string prop ->
  ?object_lock_mode:string prop ->
  ?object_lock_retain_until_date:string prop ->
  ?request_payer:string prop ->
  ?server_side_encryption:string prop ->
  ?source_customer_algorithm:string prop ->
  ?source_customer_key:string prop ->
  ?source_customer_key_md5:string prop ->
  ?storage_class:string prop ->
  ?tagging_directive:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  source:string prop ->
  grant:aws_s3_object_copy__grant list ->
  string ->
  unit
