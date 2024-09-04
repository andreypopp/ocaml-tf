(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_bucket_object

val aws_s3_bucket_object :
  ?acl:string prop ->
  ?bucket_key_enabled:bool prop ->
  ?cache_control:string prop ->
  ?content:string prop ->
  ?content_base64:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?etag:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?object_lock_legal_hold_status:string prop ->
  ?object_lock_mode:string prop ->
  ?object_lock_retain_until_date:string prop ->
  ?server_side_encryption:string prop ->
  ?source:string prop ->
  ?source_hash:string prop ->
  ?storage_class:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  unit ->
  aws_s3_bucket_object

val yojson_of_aws_s3_bucket_object : aws_s3_bucket_object -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  content : string prop;
  content_base64 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_key_id : string prop;
  metadata : string Tf_core.assoc prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_hash : string prop;
  storage_class : string prop;
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
  ?content:string prop ->
  ?content_base64:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?etag:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?object_lock_legal_hold_status:string prop ->
  ?object_lock_mode:string prop ->
  ?object_lock_retain_until_date:string prop ->
  ?server_side_encryption:string prop ->
  ?source:string prop ->
  ?source_hash:string prop ->
  ?storage_class:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  string ->
  t

val make :
  ?acl:string prop ->
  ?bucket_key_enabled:bool prop ->
  ?cache_control:string prop ->
  ?content:string prop ->
  ?content_base64:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?etag:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?object_lock_legal_hold_status:string prop ->
  ?object_lock_mode:string prop ->
  ?object_lock_retain_until_date:string prop ->
  ?server_side_encryption:string prop ->
  ?source:string prop ->
  ?source_hash:string prop ->
  ?storage_class:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  string ->
  t Tf_core.resource
