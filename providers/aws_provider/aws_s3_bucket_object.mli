(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_bucket_object

val aws_s3_bucket_object :
  ?acl:string ->
  ?cache_control:string ->
  ?content:string ->
  ?content_base64:string ->
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_language:string ->
  ?force_destroy:bool ->
  ?metadata:(string * string) list ->
  ?object_lock_legal_hold_status:string ->
  ?object_lock_mode:string ->
  ?object_lock_retain_until_date:string ->
  ?source:string ->
  ?source_hash:string ->
  ?tags:(string * string) list ->
  ?website_redirect:string ->
  bucket:string ->
  key:string ->
  string ->
  unit
