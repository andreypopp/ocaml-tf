(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cors_config__access_control_allow_headers

val cors_config__access_control_allow_headers :
  ?items:string prop list ->
  unit ->
  cors_config__access_control_allow_headers

type cors_config__access_control_allow_methods

val cors_config__access_control_allow_methods :
  ?items:string prop list ->
  unit ->
  cors_config__access_control_allow_methods

type cors_config__access_control_allow_origins

val cors_config__access_control_allow_origins :
  ?items:string prop list ->
  unit ->
  cors_config__access_control_allow_origins

type cors_config__access_control_expose_headers

val cors_config__access_control_expose_headers :
  ?items:string prop list ->
  unit ->
  cors_config__access_control_expose_headers

type cors_config

val cors_config :
  ?access_control_max_age_sec:float prop ->
  access_control_allow_credentials:bool prop ->
  origin_override:bool prop ->
  access_control_allow_headers:
    cors_config__access_control_allow_headers list ->
  access_control_allow_methods:
    cors_config__access_control_allow_methods list ->
  access_control_allow_origins:
    cors_config__access_control_allow_origins list ->
  access_control_expose_headers:
    cors_config__access_control_expose_headers list ->
  unit ->
  cors_config

type custom_headers_config__items

val custom_headers_config__items :
  header:string prop ->
  override:bool prop ->
  value:string prop ->
  unit ->
  custom_headers_config__items

type custom_headers_config

val custom_headers_config :
  items:custom_headers_config__items list ->
  unit ->
  custom_headers_config

type remove_headers_config__items

val remove_headers_config__items :
  header:string prop -> unit -> remove_headers_config__items

type remove_headers_config

val remove_headers_config :
  items:remove_headers_config__items list ->
  unit ->
  remove_headers_config

type security_headers_config__content_security_policy

val security_headers_config__content_security_policy :
  content_security_policy:string prop ->
  override:bool prop ->
  unit ->
  security_headers_config__content_security_policy

type security_headers_config__content_type_options

val security_headers_config__content_type_options :
  override:bool prop ->
  unit ->
  security_headers_config__content_type_options

type security_headers_config__frame_options

val security_headers_config__frame_options :
  frame_option:string prop ->
  override:bool prop ->
  unit ->
  security_headers_config__frame_options

type security_headers_config__referrer_policy

val security_headers_config__referrer_policy :
  override:bool prop ->
  referrer_policy:string prop ->
  unit ->
  security_headers_config__referrer_policy

type security_headers_config__strict_transport_security

val security_headers_config__strict_transport_security :
  ?include_subdomains:bool prop ->
  ?preload:bool prop ->
  access_control_max_age_sec:float prop ->
  override:bool prop ->
  unit ->
  security_headers_config__strict_transport_security

type security_headers_config__xss_protection

val security_headers_config__xss_protection :
  ?mode_block:bool prop ->
  ?report_uri:string prop ->
  override:bool prop ->
  protection:bool prop ->
  unit ->
  security_headers_config__xss_protection

type security_headers_config

val security_headers_config :
  content_security_policy:
    security_headers_config__content_security_policy list ->
  content_type_options:
    security_headers_config__content_type_options list ->
  frame_options:security_headers_config__frame_options list ->
  referrer_policy:security_headers_config__referrer_policy list ->
  strict_transport_security:
    security_headers_config__strict_transport_security list ->
  xss_protection:security_headers_config__xss_protection list ->
  unit ->
  security_headers_config

type server_timing_headers_config

val server_timing_headers_config :
  enabled:bool prop ->
  sampling_rate:float prop ->
  unit ->
  server_timing_headers_config

type aws_cloudfront_response_headers_policy

val aws_cloudfront_response_headers_policy :
  ?comment:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  name:string prop ->
  cors_config:cors_config list ->
  custom_headers_config:custom_headers_config list ->
  remove_headers_config:remove_headers_config list ->
  security_headers_config:security_headers_config list ->
  server_timing_headers_config:server_timing_headers_config list ->
  unit ->
  aws_cloudfront_response_headers_policy

val yojson_of_aws_cloudfront_response_headers_policy :
  aws_cloudfront_response_headers_policy -> json

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
  ?etag:string prop ->
  ?id:string prop ->
  name:string prop ->
  cors_config:cors_config list ->
  custom_headers_config:custom_headers_config list ->
  remove_headers_config:remove_headers_config list ->
  security_headers_config:security_headers_config list ->
  server_timing_headers_config:server_timing_headers_config list ->
  string ->
  t
