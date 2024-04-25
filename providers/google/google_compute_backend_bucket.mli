(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cdn_policy__bypass_cache_on_request_headers

val cdn_policy__bypass_cache_on_request_headers :
  ?header_name:string prop ->
  unit ->
  cdn_policy__bypass_cache_on_request_headers

type cdn_policy__cache_key_policy

val cdn_policy__cache_key_policy :
  ?include_http_headers:string prop list ->
  ?query_string_whitelist:string prop list ->
  unit ->
  cdn_policy__cache_key_policy

type cdn_policy__negative_caching_policy

val cdn_policy__negative_caching_policy :
  ?code:float prop ->
  ?ttl:float prop ->
  unit ->
  cdn_policy__negative_caching_policy

type cdn_policy

val cdn_policy :
  ?cache_mode:string prop ->
  ?client_ttl:float prop ->
  ?default_ttl:float prop ->
  ?max_ttl:float prop ->
  ?negative_caching:bool prop ->
  ?request_coalescing:bool prop ->
  ?serve_while_stale:float prop ->
  ?signed_url_cache_max_age_sec:float prop ->
  ?bypass_cache_on_request_headers:
    cdn_policy__bypass_cache_on_request_headers list ->
  ?cache_key_policy:cdn_policy__cache_key_policy list ->
  ?negative_caching_policy:cdn_policy__negative_caching_policy list ->
  unit ->
  cdn_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_backend_bucket

val google_compute_backend_bucket :
  ?compression_mode:string prop ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?cdn_policy:cdn_policy list ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  name:string prop ->
  unit ->
  google_compute_backend_bucket

val yojson_of_google_compute_backend_bucket :
  google_compute_backend_bucket -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?compression_mode:string prop ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?cdn_policy:cdn_policy list ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?compression_mode:string prop ->
  ?custom_response_headers:string prop list ->
  ?description:string prop ->
  ?edge_security_policy:string prop ->
  ?enable_cdn:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?cdn_policy:cdn_policy list ->
  ?timeouts:timeouts ->
  bucket_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
