(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_backend_bucket__cdn_policy__bypass_cache_on_request_headers

type google_compute_backend_bucket__cdn_policy__cache_key_policy

type google_compute_backend_bucket__cdn_policy__negative_caching_policy

type google_compute_backend_bucket__cdn_policy
type google_compute_backend_bucket__timeouts
type google_compute_backend_bucket

val google_compute_backend_bucket :
  ?compression_mode:string ->
  ?custom_response_headers:string list ->
  ?description:string ->
  ?edge_security_policy:string ->
  ?enable_cdn:bool ->
  ?timeouts:google_compute_backend_bucket__timeouts ->
  bucket_name:string ->
  name:string ->
  cdn_policy:google_compute_backend_bucket__cdn_policy list ->
  string ->
  unit
