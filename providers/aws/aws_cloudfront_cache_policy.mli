(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies

val parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies :
  ?items:string prop list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config

val parameters_in_cache_key_and_forwarded_to_origin__cookies_config :
  cookie_behavior:string prop ->
  cookies:
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__cookies_config

type parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers

val parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers :
  ?items:string prop list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers

type parameters_in_cache_key_and_forwarded_to_origin__headers_config

val parameters_in_cache_key_and_forwarded_to_origin__headers_config :
  ?header_behavior:string prop ->
  headers:
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__headers_config

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings

val parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings :
  ?items:string prop list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config

val parameters_in_cache_key_and_forwarded_to_origin__query_strings_config :
  query_string_behavior:string prop ->
  query_strings:
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin__query_strings_config

type parameters_in_cache_key_and_forwarded_to_origin

val parameters_in_cache_key_and_forwarded_to_origin :
  ?enable_accept_encoding_brotli:bool prop ->
  ?enable_accept_encoding_gzip:bool prop ->
  cookies_config:
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list ->
  headers_config:
    parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list ->
  query_strings_config:
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list ->
  unit ->
  parameters_in_cache_key_and_forwarded_to_origin

type aws_cloudfront_cache_policy

val aws_cloudfront_cache_policy :
  ?comment:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  name:string prop ->
  parameters_in_cache_key_and_forwarded_to_origin:
    parameters_in_cache_key_and_forwarded_to_origin list ->
  unit ->
  aws_cloudfront_cache_policy

val yojson_of_aws_cloudfront_cache_policy :
  aws_cloudfront_cache_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  comment : string prop;
  default_ttl : float prop;
  etag : string prop;
  id : string prop;
  max_ttl : float prop;
  min_ttl : float prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  name:string prop ->
  parameters_in_cache_key_and_forwarded_to_origin:
    parameters_in_cache_key_and_forwarded_to_origin list ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  name:string prop ->
  parameters_in_cache_key_and_forwarded_to_origin:
    parameters_in_cache_key_and_forwarded_to_origin list ->
  string ->
  t Tf_core.resource
