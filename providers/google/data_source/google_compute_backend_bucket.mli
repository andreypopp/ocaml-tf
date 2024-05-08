(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cdn_policy__negative_caching_policy = {
  code : float prop;  (** code *)
  ttl : float prop;  (** ttl *)
}

type cdn_policy__cache_key_policy = {
  include_http_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** include_http_headers *)
  query_string_whitelist : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** query_string_whitelist *)
}

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop;  (** header_name *)
}

type cdn_policy = {
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
      [@default []] [@yojson_drop_default ( = )]
      (** bypass_cache_on_request_headers *)
  cache_key_policy : cdn_policy__cache_key_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** cache_key_policy *)
  cache_mode : string prop;  (** cache_mode *)
  client_ttl : float prop;  (** client_ttl *)
  default_ttl : float prop;  (** default_ttl *)
  max_ttl : float prop;  (** max_ttl *)
  negative_caching : bool prop;  (** negative_caching *)
  negative_caching_policy : cdn_policy__negative_caching_policy list;
      [@default []] [@yojson_drop_default ( = )]
      (** negative_caching_policy *)
  request_coalescing : bool prop;  (** request_coalescing *)
  serve_while_stale : float prop;  (** serve_while_stale *)
  signed_url_cache_max_age_sec : float prop;
      (** signed_url_cache_max_age_sec *)
}

type google_compute_backend_bucket

val google_compute_backend_bucket :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_compute_backend_bucket

val yojson_of_google_compute_backend_bucket :
  google_compute_backend_bucket -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket_name : string prop;
  cdn_policy : cdn_policy list prop;
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
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
