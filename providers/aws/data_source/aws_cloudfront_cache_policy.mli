(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings = {
  items : string prop list;  (** items *)
}

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config = {
  query_string_behavior : string prop;  (** query_string_behavior *)
  query_strings :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    list;
      (** query_strings *)
}

type parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers = {
  items : string prop list;  (** items *)
}

type parameters_in_cache_key_and_forwarded_to_origin__headers_config = {
  header_behavior : string prop;  (** header_behavior *)
  headers :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list;
      (** headers *)
}

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies = {
  items : string prop list;  (** items *)
}

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config = {
  cookie_behavior : string prop;  (** cookie_behavior *)
  cookies :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    list;
      (** cookies *)
}

type parameters_in_cache_key_and_forwarded_to_origin = {
  cookies_config :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list;
      (** cookies_config *)
  enable_accept_encoding_brotli : bool prop;
      (** enable_accept_encoding_brotli *)
  enable_accept_encoding_gzip : bool prop;
      (** enable_accept_encoding_gzip *)
  headers_config :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list;
      (** headers_config *)
  query_strings_config :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list;
      (** query_strings_config *)
}

type aws_cloudfront_cache_policy

val aws_cloudfront_cache_policy :
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_cloudfront_cache_policy

val yojson_of_aws_cloudfront_cache_policy :
  aws_cloudfront_cache_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  comment : string prop;
  default_ttl : float prop;
  etag : string prop;
  id : string prop;
  max_ttl : float prop;
  min_ttl : float prop;
  name : string prop;
  parameters_in_cache_key_and_forwarded_to_origin :
    parameters_in_cache_key_and_forwarded_to_origin list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
