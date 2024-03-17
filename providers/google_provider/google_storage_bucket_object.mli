(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_object__customer_encryption
type google_storage_bucket_object__retention
type google_storage_bucket_object__timeouts
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
  ?metadata:(string * string prop) list ->
  ?source:string prop ->
  ?storage_class:string prop ->
  ?temporary_hold:bool prop ->
  ?timeouts:google_storage_bucket_object__timeouts ->
  bucket:string prop ->
  name:string prop ->
  customer_encryption:
    google_storage_bucket_object__customer_encryption list ->
  retention:google_storage_bucket_object__retention list ->
  string ->
  unit
