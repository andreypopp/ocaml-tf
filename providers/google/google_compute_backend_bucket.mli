(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_backend_bucket__cdn_policy__bypass_cache_on_request_headers

type google_compute_backend_bucket__cdn_policy__cache_key_policy

type google_compute_backend_bucket__cdn_policy__negative_caching_policy

type google_compute_backend_bucket__cdn_policy
type google_compute_backend_bucket__timeouts
type google_compute_backend_bucket

type t = private {
  bucket_name : string prop;
  compression_mode : string prop;
  creation_timestamp : string prop;
  custom_response_headers : string list prop;
  description : string prop;
  edge_security_policy : string prop;
  enable_cdn : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val google_compute_backend_bucket :
  ?compression_mode:string prop ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_compute_backend_bucket__timeouts ->
  bucket_name:string prop ->
  name:string prop ->
  cdn_policy:google_compute_backend_bucket__cdn_policy list ->
  string ->
  t
