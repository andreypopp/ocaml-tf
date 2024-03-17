(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_response_headers_policy__cors_config__access_control_allow_headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__cors_config__access_control_allow_headers *)

type aws_cloudfront_response_headers_policy__cors_config__access_control_allow_methods = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__cors_config__access_control_allow_methods *)

type aws_cloudfront_response_headers_policy__cors_config__access_control_allow_origins = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__cors_config__access_control_allow_origins *)

type aws_cloudfront_response_headers_policy__cors_config__access_control_expose_headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__cors_config__access_control_expose_headers *)

type aws_cloudfront_response_headers_policy__cors_config = {
  access_control_allow_credentials : bool prop;
      (** access_control_allow_credentials *)
  access_control_max_age_sec : float prop option; [@option]
      (** access_control_max_age_sec *)
  origin_override : bool prop;  (** origin_override *)
  access_control_allow_headers :
    aws_cloudfront_response_headers_policy__cors_config__access_control_allow_headers
    list;
  access_control_allow_methods :
    aws_cloudfront_response_headers_policy__cors_config__access_control_allow_methods
    list;
  access_control_allow_origins :
    aws_cloudfront_response_headers_policy__cors_config__access_control_allow_origins
    list;
  access_control_expose_headers :
    aws_cloudfront_response_headers_policy__cors_config__access_control_expose_headers
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__cors_config *)

type aws_cloudfront_response_headers_policy__custom_headers_config__items = {
  header : string prop;  (** header *)
  override : bool prop;  (** override *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__custom_headers_config__items *)

type aws_cloudfront_response_headers_policy__custom_headers_config = {
  items :
    aws_cloudfront_response_headers_policy__custom_headers_config__items
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__custom_headers_config *)

type aws_cloudfront_response_headers_policy__remove_headers_config__items = {
  header : string prop;  (** header *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__remove_headers_config__items *)

type aws_cloudfront_response_headers_policy__remove_headers_config = {
  items :
    aws_cloudfront_response_headers_policy__remove_headers_config__items
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__remove_headers_config *)

type aws_cloudfront_response_headers_policy__security_headers_config__content_security_policy = {
  content_security_policy : string prop;
      (** content_security_policy *)
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__content_security_policy *)

type aws_cloudfront_response_headers_policy__security_headers_config__content_type_options = {
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__content_type_options *)

type aws_cloudfront_response_headers_policy__security_headers_config__frame_options = {
  frame_option : string prop;  (** frame_option *)
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__frame_options *)

type aws_cloudfront_response_headers_policy__security_headers_config__referrer_policy = {
  override : bool prop;  (** override *)
  referrer_policy : string prop;  (** referrer_policy *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__referrer_policy *)

type aws_cloudfront_response_headers_policy__security_headers_config__strict_transport_security = {
  access_control_max_age_sec : float prop;
      (** access_control_max_age_sec *)
  include_subdomains : bool prop option; [@option]
      (** include_subdomains *)
  override : bool prop;  (** override *)
  preload : bool prop option; [@option]  (** preload *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__strict_transport_security *)

type aws_cloudfront_response_headers_policy__security_headers_config__xss_protection = {
  mode_block : bool prop option; [@option]  (** mode_block *)
  override : bool prop;  (** override *)
  protection : bool prop;  (** protection *)
  report_uri : string prop option; [@option]  (** report_uri *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config__xss_protection *)

type aws_cloudfront_response_headers_policy__security_headers_config = {
  content_security_policy :
    aws_cloudfront_response_headers_policy__security_headers_config__content_security_policy
    list;
  content_type_options :
    aws_cloudfront_response_headers_policy__security_headers_config__content_type_options
    list;
  frame_options :
    aws_cloudfront_response_headers_policy__security_headers_config__frame_options
    list;
  referrer_policy :
    aws_cloudfront_response_headers_policy__security_headers_config__referrer_policy
    list;
  strict_transport_security :
    aws_cloudfront_response_headers_policy__security_headers_config__strict_transport_security
    list;
  xss_protection :
    aws_cloudfront_response_headers_policy__security_headers_config__xss_protection
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__security_headers_config *)

type aws_cloudfront_response_headers_policy__server_timing_headers_config = {
  enabled : bool prop;  (** enabled *)
  sampling_rate : float prop;  (** sampling_rate *)
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy__server_timing_headers_config *)

type aws_cloudfront_response_headers_policy = {
  comment : string prop option; [@option]  (** comment *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  cors_config :
    aws_cloudfront_response_headers_policy__cors_config list;
  custom_headers_config :
    aws_cloudfront_response_headers_policy__custom_headers_config
    list;
  remove_headers_config :
    aws_cloudfront_response_headers_policy__remove_headers_config
    list;
  security_headers_config :
    aws_cloudfront_response_headers_policy__security_headers_config
    list;
  server_timing_headers_config :
    aws_cloudfront_response_headers_policy__server_timing_headers_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy *)

let aws_cloudfront_response_headers_policy ?comment ?etag ?id ~name
    ~cors_config ~custom_headers_config ~remove_headers_config
    ~security_headers_config ~server_timing_headers_config
    __resource_id =
  let __resource_type = "aws_cloudfront_response_headers_policy" in
  let __resource =
    {
      comment;
      etag;
      id;
      name;
      cors_config;
      custom_headers_config;
      remove_headers_config;
      security_headers_config;
      server_timing_headers_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_response_headers_policy __resource);
  ()
