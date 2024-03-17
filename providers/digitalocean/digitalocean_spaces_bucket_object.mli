(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_spaces_bucket_object

type t = private {
  acl : string prop;
  bucket : string prop;
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
  metadata : (string * string) list prop;
  region : string prop;
  source : string prop;
  version_id : string prop;
  website_redirect : string prop;
}

val digitalocean_spaces_bucket_object :
  ?acl:string prop ->
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
  ?metadata:(string * string prop) list ->
  ?source:string prop ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  string ->
  t
