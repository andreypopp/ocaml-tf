(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_spaces_bucket_object

val digitalocean_spaces_bucket_object :
  ?id:string prop ->
  ?range:string prop ->
  ?version_id:string prop ->
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
  body : string prop;
  bucket : string prop;
  cache_control : string prop;
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
  metadata : string Tf_core.assoc prop;
  range : string prop;
  region : string prop;
  version_id : string prop;
  website_redirect_location : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?range:string prop ->
  ?version_id:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?range:string prop ->
  ?version_id:string prop ->
  bucket:string prop ->
  key:string prop ->
  region:string prop ->
  string ->
  t Tf_core.resource
