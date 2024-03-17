(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3_object__override_provider__default_tags
type aws_s3_object__override_provider
type aws_s3_object

val aws_s3_object :
  ?cache_control:string ->
  ?checksum_algorithm:string ->
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
  override_provider:aws_s3_object__override_provider list ->
  string ->
  unit
