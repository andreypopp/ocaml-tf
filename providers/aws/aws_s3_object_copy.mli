(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type grant

val grant :
  ?email:string prop ->
  ?id:string prop ->
  ?uri:string prop ->
  permissions:string prop list ->
  type_:string prop ->
  unit ->
  grant

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
  ?metadata:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  source:string prop ->
  grant:grant list ->
  unit ->
  aws_s3_object_copy

val yojson_of_aws_s3_object_copy : aws_s3_object_copy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  checksum_algorithm : string prop;
  checksum_crc32 : string prop;
  checksum_crc32c : string prop;
  checksum_sha1 : string prop;
  checksum_sha256 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  copy_if_match : string prop;
  copy_if_modified_since : string prop;
  copy_if_none_match : string prop;
  copy_if_unmodified_since : string prop;
  customer_algorithm : string prop;
  customer_key : string prop;
  customer_key_md5 : string prop;
  etag : string prop;
  expected_bucket_owner : string prop;
  expected_source_bucket_owner : string prop;
  expiration : string prop;
  expires : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_encryption_context : string prop;
  kms_key_id : string prop;
  last_modified : string prop;
  metadata : string Tf_core.assoc prop;
  metadata_directive : string prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  request_charged : bool prop;
  request_payer : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_customer_algorithm : string prop;
  source_customer_key : string prop;
  source_customer_key_md5 : string prop;
  source_version_id : string prop;
  storage_class : string prop;
  tagging_directive : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version_id : string prop;
  website_redirect : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?metadata:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  source:string prop ->
  grant:grant list ->
  string ->
  t

val make :
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
  ?metadata:string prop Tf_core.assoc ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  source:string prop ->
  grant:grant list ->
  string ->
  t Tf_core.resource
