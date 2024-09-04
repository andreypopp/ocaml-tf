(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_spaces_bucket_object

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
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  unit ->
  digitalocean_spaces_bucket_object

val yojson_of_digitalocean_spaces_bucket_object :
  digitalocean_spaces_bucket_object -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  metadata : string Tf_core.assoc prop;
  region : string prop;
  source : string prop;
  version_id : string prop;
  website_redirect : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  string ->
  t

val make :
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
  ?metadata:string prop Tf_core.assoc ->
  ?source:string prop ->
  ?website_redirect:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
