(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudfront_origin_request_policy__cookies_config__cookies
type aws_cloudfront_origin_request_policy__cookies_config
type aws_cloudfront_origin_request_policy__headers_config__headers
type aws_cloudfront_origin_request_policy__headers_config

type aws_cloudfront_origin_request_policy__query_strings_config__query_strings

type aws_cloudfront_origin_request_policy__query_strings_config
type aws_cloudfront_origin_request_policy

val aws_cloudfront_origin_request_policy :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  cookies_config:
    aws_cloudfront_origin_request_policy__cookies_config list ->
  headers_config:
    aws_cloudfront_origin_request_policy__headers_config list ->
  query_strings_config:
    aws_cloudfront_origin_request_policy__query_strings_config list ->
  string ->
  unit
