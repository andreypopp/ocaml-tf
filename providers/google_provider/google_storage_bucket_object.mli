(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_bucket_object__customer_encryption
type google_storage_bucket_object__retention
type google_storage_bucket_object__timeouts
type google_storage_bucket_object

val google_storage_bucket_object :
  ?cache_control:string ->
  ?content:string ->
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_language:string ->
  ?content_type:string ->
  ?detect_md5hash:string ->
  ?event_based_hold:bool ->
  ?id:string ->
  ?kms_key_name:string ->
  ?metadata:(string * string) list ->
  ?source:string ->
  ?storage_class:string ->
  ?temporary_hold:bool ->
  ?timeouts:google_storage_bucket_object__timeouts ->
  bucket:string ->
  name:string ->
  customer_encryption:
    google_storage_bucket_object__customer_encryption list ->
  retention:google_storage_bucket_object__retention list ->
  string ->
  unit
