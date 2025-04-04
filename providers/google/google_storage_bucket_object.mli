(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type customer_encryption

val customer_encryption :
  ?encryption_algorithm:string prop ->
  encryption_key:string prop ->
  unit ->
  customer_encryption

type retention

val retention :
  mode:string prop ->
  retain_until_time:string prop ->
  unit ->
  retention

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_storage_bucket_object

val google_storage_bucket_object :
  ?cache_control:string prop ->
  ?content:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?detect_md5hash:string prop ->
  ?event_based_hold:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?storage_class:string prop ->
  ?temporary_hold:bool prop ->
  ?customer_encryption:customer_encryption list ->
  ?retention:retention list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  unit ->
  google_storage_bucket_object

val yojson_of_google_storage_bucket_object :
  google_storage_bucket_object -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  cache_control : string prop;
  content : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  crc32c : string prop;
  detect_md5hash : string prop;
  event_based_hold : bool prop;
  id : string prop;
  kms_key_name : string prop;
  md5hash : string prop;
  media_link : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  output_name : string prop;
  self_link : string prop;
  source : string prop;
  storage_class : string prop;
  temporary_hold : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?cache_control:string prop ->
  ?content:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?detect_md5hash:string prop ->
  ?event_based_hold:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?storage_class:string prop ->
  ?temporary_hold:bool prop ->
  ?customer_encryption:customer_encryption list ->
  ?retention:retention list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?cache_control:string prop ->
  ?content:string prop ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_language:string prop ->
  ?content_type:string prop ->
  ?detect_md5hash:string prop ->
  ?event_based_hold:bool prop ->
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?storage_class:string prop ->
  ?temporary_hold:bool prop ->
  ?customer_encryption:customer_encryption list ->
  ?retention:retention list ->
  ?timeouts:timeouts ->
  bucket:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
