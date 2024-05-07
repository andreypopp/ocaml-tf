(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cookies_config__cookies = {
  items : string prop list;  (** items *)
}

type cookies_config = {
  cookie_behavior : string prop;  (** cookie_behavior *)
  cookies : cookies_config__cookies list;  (** cookies *)
}

type headers_config__headers = {
  items : string prop list;  (** items *)
}

type headers_config = {
  header_behavior : string prop;  (** header_behavior *)
  headers : headers_config__headers list;  (** headers *)
}

type query_strings_config__query_strings = {
  items : string prop list;  (** items *)
}

type query_strings_config = {
  query_string_behavior : string prop;  (** query_string_behavior *)
  query_strings : query_strings_config__query_strings list;
      (** query_strings *)
}

type aws_cloudfront_origin_request_policy

val aws_cloudfront_origin_request_policy :
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_cloudfront_origin_request_policy

val yojson_of_aws_cloudfront_origin_request_policy :
  aws_cloudfront_origin_request_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  comment : string prop;
  cookies_config : cookies_config list prop;
  etag : string prop;
  headers_config : headers_config list prop;
  id : string prop;
  name : string prop;
  query_strings_config : query_strings_config list prop;
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
