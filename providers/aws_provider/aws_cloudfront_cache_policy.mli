(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin

type aws_cloudfront_cache_policy

val aws_cloudfront_cache_policy :
  ?comment:string prop ->
  ?default_ttl:float prop ->
  ?id:string prop ->
  ?max_ttl:float prop ->
  ?min_ttl:float prop ->
  name:string prop ->
  parameters_in_cache_key_and_forwarded_to_origin:
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin
    list ->
  string ->
  unit
