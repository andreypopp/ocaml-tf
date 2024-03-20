(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors_config__access_control_expose_headers = {
  items : string prop list;  (** items *)
}

type cors_config__access_control_allow_origins = {
  items : string prop list;  (** items *)
}

type cors_config__access_control_allow_methods = {
  items : string prop list;  (** items *)
}

type cors_config__access_control_allow_headers = {
  items : string prop list;  (** items *)
}

type cors_config = {
  access_control_allow_credentials : bool prop;
      (** access_control_allow_credentials *)
  access_control_allow_headers :
    cors_config__access_control_allow_headers list;
      (** access_control_allow_headers *)
  access_control_allow_methods :
    cors_config__access_control_allow_methods list;
      (** access_control_allow_methods *)
  access_control_allow_origins :
    cors_config__access_control_allow_origins list;
      (** access_control_allow_origins *)
  access_control_expose_headers :
    cors_config__access_control_expose_headers list;
      (** access_control_expose_headers *)
  access_control_max_age_sec : float prop;
      (** access_control_max_age_sec *)
  origin_override : bool prop;  (** origin_override *)
}

type custom_headers_config__items = {
  header : string prop;  (** header *)
  override : bool prop;  (** override *)
  value : string prop;  (** value *)
}

type custom_headers_config = {
  items : custom_headers_config__items list;  (** items *)
}

type remove_headers_config__items = {
  header : string prop;  (** header *)
}

type remove_headers_config = {
  items : remove_headers_config__items list;  (** items *)
}

type security_headers_config__xss_protection = {
  mode_block : bool prop;  (** mode_block *)
  override : bool prop;  (** override *)
  protection : bool prop;  (** protection *)
  report_uri : string prop;  (** report_uri *)
}

type security_headers_config__strict_transport_security = {
  access_control_max_age_sec : float prop;
      (** access_control_max_age_sec *)
  include_subdomains : bool prop;  (** include_subdomains *)
  override : bool prop;  (** override *)
  preload : bool prop;  (** preload *)
}

type security_headers_config__referrer_policy = {
  override : bool prop;  (** override *)
  referrer_policy : string prop;  (** referrer_policy *)
}

type security_headers_config__frame_options = {
  frame_option : string prop;  (** frame_option *)
  override : bool prop;  (** override *)
}

type security_headers_config__content_type_options = {
  override : bool prop;  (** override *)
}

type security_headers_config__content_security_policy = {
  content_security_policy : string prop;
      (** content_security_policy *)
  override : bool prop;  (** override *)
}

type security_headers_config = {
  content_security_policy :
    security_headers_config__content_security_policy list;
      (** content_security_policy *)
  content_type_options :
    security_headers_config__content_type_options list;
      (** content_type_options *)
  frame_options : security_headers_config__frame_options list;
      (** frame_options *)
  referrer_policy : security_headers_config__referrer_policy list;
      (** referrer_policy *)
  strict_transport_security :
    security_headers_config__strict_transport_security list;
      (** strict_transport_security *)
  xss_protection : security_headers_config__xss_protection list;
      (** xss_protection *)
}

type server_timing_headers_config = {
  enabled : bool prop;  (** enabled *)
  sampling_rate : float prop;  (** sampling_rate *)
}

type aws_cloudfront_response_headers_policy

val aws_cloudfront_response_headers_policy :
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_cloudfront_response_headers_policy

val yojson_of_aws_cloudfront_response_headers_policy :
  aws_cloudfront_response_headers_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  comment : string prop;
  cors_config : cors_config list prop;
  custom_headers_config : custom_headers_config list prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  remove_headers_config : remove_headers_config list prop;
  security_headers_config : security_headers_config list prop;
  server_timing_headers_config :
    server_timing_headers_config list prop;
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
