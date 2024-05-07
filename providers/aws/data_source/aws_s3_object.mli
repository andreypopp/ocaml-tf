(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_s3_object

val aws_s3_object :
  ?checksum_mode:string prop ->
  ?id:string prop ->
  ?range:string prop ->
  ?tags:(string * string prop) list ->
  ?version_id:string prop ->
  bucket:string prop ->
  key:string prop ->
  unit ->
  aws_s3_object

val yojson_of_aws_s3_object : aws_s3_object -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  body : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  checksum_crc32 : string prop;
  checksum_crc32c : string prop;
  checksum_mode : string prop;
  checksum_sha1 : string prop;
  checksum_sha256 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_length : float prop;
  content_type : string prop;
  etag : string prop;
  expiration : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
  last_modified : string prop;
  metadata : (string * string) list prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  range : string prop;
  server_side_encryption : string prop;
  sse_kms_key_id : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  version_id : string prop;
  website_redirect_location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?checksum_mode:string prop ->
  ?id:string prop ->
  ?range:string prop ->
  ?tags:(string * string prop) list ->
  ?version_id:string prop ->
  bucket:string prop ->
  key:string prop ->
  string ->
  t

val make :
  ?checksum_mode:string prop ->
  ?id:string prop ->
  ?range:string prop ->
  ?tags:(string * string prop) list ->
  ?version_id:string prop ->
  bucket:string prop ->
  key:string prop ->
  string ->
  t Tf_core.resource
