(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket_object

val digitalocean_spaces_bucket_object :
  ?acl:string ->
  ?cache_control:string ->
  ?content:string ->
  ?content_base64:string ->
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_language:string ->
  ?force_destroy:bool ->
  ?metadata:(string * string) list ->
  ?source:string ->
  ?website_redirect:string ->
  bucket:string ->
  key:string ->
  region:string ->
  string ->
  unit
