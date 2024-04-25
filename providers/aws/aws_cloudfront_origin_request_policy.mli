(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cookies_config__cookies

val cookies_config__cookies :
  ?items:string prop list -> unit -> cookies_config__cookies

type cookies_config

val cookies_config :
  ?cookies:cookies_config__cookies list ->
  cookie_behavior:string prop ->
  unit ->
  cookies_config

type headers_config__headers

val headers_config__headers :
  ?items:string prop list -> unit -> headers_config__headers

type headers_config

val headers_config :
  ?header_behavior:string prop ->
  ?headers:headers_config__headers list ->
  unit ->
  headers_config

type query_strings_config__query_strings

val query_strings_config__query_strings :
  ?items:string prop list ->
  unit ->
  query_strings_config__query_strings

type query_strings_config

val query_strings_config :
  ?query_strings:query_strings_config__query_strings list ->
  query_string_behavior:string prop ->
  unit ->
  query_strings_config

type aws_cloudfront_origin_request_policy

val aws_cloudfront_origin_request_policy :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  cookies_config:cookies_config list ->
  headers_config:headers_config list ->
  query_strings_config:query_strings_config list ->
  unit ->
  aws_cloudfront_origin_request_policy

val yojson_of_aws_cloudfront_origin_request_policy :
  aws_cloudfront_origin_request_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  cookies_config:cookies_config list ->
  headers_config:headers_config list ->
  query_strings_config:query_strings_config list ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  name:string prop ->
  cookies_config:cookies_config list ->
  headers_config:headers_config list ->
  query_strings_config:query_strings_config list ->
  string ->
  t Tf_core.resource
