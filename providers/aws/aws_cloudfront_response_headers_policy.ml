(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_config__access_control_allow_headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** cors_config__access_control_allow_headers *)

type cors_config__access_control_allow_methods = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** cors_config__access_control_allow_methods *)

type cors_config__access_control_allow_origins = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** cors_config__access_control_allow_origins *)

type cors_config__access_control_expose_headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** cors_config__access_control_expose_headers *)

type cors_config = {
  access_control_allow_credentials : bool prop;
      (** access_control_allow_credentials *)
  access_control_max_age_sec : float prop option; [@option]
      (** access_control_max_age_sec *)
  origin_override : bool prop;  (** origin_override *)
  access_control_allow_headers :
    cors_config__access_control_allow_headers list;
  access_control_allow_methods :
    cors_config__access_control_allow_methods list;
  access_control_allow_origins :
    cors_config__access_control_allow_origins list;
  access_control_expose_headers :
    cors_config__access_control_expose_headers list;
}
[@@deriving yojson_of]
(** cors_config *)

type custom_headers_config__items = {
  header : string prop;  (** header *)
  override : bool prop;  (** override *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** custom_headers_config__items *)

type custom_headers_config = {
  items : custom_headers_config__items list;
}
[@@deriving yojson_of]
(** custom_headers_config *)

type remove_headers_config__items = {
  header : string prop;  (** header *)
}
[@@deriving yojson_of]
(** remove_headers_config__items *)

type remove_headers_config = {
  items : remove_headers_config__items list;
}
[@@deriving yojson_of]
(** remove_headers_config *)

type security_headers_config__content_security_policy = {
  content_security_policy : string prop;
      (** content_security_policy *)
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** security_headers_config__content_security_policy *)

type security_headers_config__content_type_options = {
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** security_headers_config__content_type_options *)

type security_headers_config__frame_options = {
  frame_option : string prop;  (** frame_option *)
  override : bool prop;  (** override *)
}
[@@deriving yojson_of]
(** security_headers_config__frame_options *)

type security_headers_config__referrer_policy = {
  override : bool prop;  (** override *)
  referrer_policy : string prop;  (** referrer_policy *)
}
[@@deriving yojson_of]
(** security_headers_config__referrer_policy *)

type security_headers_config__strict_transport_security = {
  access_control_max_age_sec : float prop;
      (** access_control_max_age_sec *)
  include_subdomains : bool prop option; [@option]
      (** include_subdomains *)
  override : bool prop;  (** override *)
  preload : bool prop option; [@option]  (** preload *)
}
[@@deriving yojson_of]
(** security_headers_config__strict_transport_security *)

type security_headers_config__xss_protection = {
  mode_block : bool prop option; [@option]  (** mode_block *)
  override : bool prop;  (** override *)
  protection : bool prop;  (** protection *)
  report_uri : string prop option; [@option]  (** report_uri *)
}
[@@deriving yojson_of]
(** security_headers_config__xss_protection *)

type security_headers_config = {
  content_security_policy :
    security_headers_config__content_security_policy list;
  content_type_options :
    security_headers_config__content_type_options list;
  frame_options : security_headers_config__frame_options list;
  referrer_policy : security_headers_config__referrer_policy list;
  strict_transport_security :
    security_headers_config__strict_transport_security list;
  xss_protection : security_headers_config__xss_protection list;
}
[@@deriving yojson_of]
(** security_headers_config *)

type server_timing_headers_config = {
  enabled : bool prop;  (** enabled *)
  sampling_rate : float prop;  (** sampling_rate *)
}
[@@deriving yojson_of]
(** server_timing_headers_config *)

type aws_cloudfront_response_headers_policy = {
  comment : string prop option; [@option]  (** comment *)
  etag : string prop option; [@option]  (** etag *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  cors_config : cors_config list;
  custom_headers_config : custom_headers_config list;
  remove_headers_config : remove_headers_config list;
  security_headers_config : security_headers_config list;
  server_timing_headers_config : server_timing_headers_config list;
}
[@@deriving yojson_of]
(** aws_cloudfront_response_headers_policy *)

let cors_config__access_control_allow_headers ?items () :
    cors_config__access_control_allow_headers =
  { items }

let cors_config__access_control_allow_methods ?items () :
    cors_config__access_control_allow_methods =
  { items }

let cors_config__access_control_allow_origins ?items () :
    cors_config__access_control_allow_origins =
  { items }

let cors_config__access_control_expose_headers ?items () :
    cors_config__access_control_expose_headers =
  { items }

let cors_config ?access_control_max_age_sec
    ~access_control_allow_credentials ~origin_override
    ~access_control_allow_headers ~access_control_allow_methods
    ~access_control_allow_origins ~access_control_expose_headers () :
    cors_config =
  {
    access_control_allow_credentials;
    access_control_max_age_sec;
    origin_override;
    access_control_allow_headers;
    access_control_allow_methods;
    access_control_allow_origins;
    access_control_expose_headers;
  }

let custom_headers_config__items ~header ~override ~value () :
    custom_headers_config__items =
  { header; override; value }

let custom_headers_config ~items () : custom_headers_config =
  { items }

let remove_headers_config__items ~header () :
    remove_headers_config__items =
  { header }

let remove_headers_config ~items () : remove_headers_config =
  { items }

let security_headers_config__content_security_policy
    ~content_security_policy ~override () :
    security_headers_config__content_security_policy =
  { content_security_policy; override }

let security_headers_config__content_type_options ~override () :
    security_headers_config__content_type_options =
  { override }

let security_headers_config__frame_options ~frame_option ~override ()
    : security_headers_config__frame_options =
  { frame_option; override }

let security_headers_config__referrer_policy ~override
    ~referrer_policy () : security_headers_config__referrer_policy =
  { override; referrer_policy }

let security_headers_config__strict_transport_security
    ?include_subdomains ?preload ~access_control_max_age_sec
    ~override () : security_headers_config__strict_transport_security
    =
  {
    access_control_max_age_sec;
    include_subdomains;
    override;
    preload;
  }

let security_headers_config__xss_protection ?mode_block ?report_uri
    ~override ~protection () :
    security_headers_config__xss_protection =
  { mode_block; override; protection; report_uri }

let security_headers_config ~content_security_policy
    ~content_type_options ~frame_options ~referrer_policy
    ~strict_transport_security ~xss_protection () :
    security_headers_config =
  {
    content_security_policy;
    content_type_options;
    frame_options;
    referrer_policy;
    strict_transport_security;
    xss_protection;
  }

let server_timing_headers_config ~enabled ~sampling_rate () :
    server_timing_headers_config =
  { enabled; sampling_rate }

let aws_cloudfront_response_headers_policy ?comment ?etag ?id ~name
    ~cors_config ~custom_headers_config ~remove_headers_config
    ~security_headers_config ~server_timing_headers_config () :
    aws_cloudfront_response_headers_policy =
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

type t = {
  comment : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
}

let make ?comment ?etag ?id ~name ~cors_config ~custom_headers_config
    ~remove_headers_config ~security_headers_config
    ~server_timing_headers_config __id =
  let __type = "aws_cloudfront_response_headers_policy" in
  let __attrs =
    ({
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_response_headers_policy
        (aws_cloudfront_response_headers_policy ?comment ?etag ?id
           ~name ~cors_config ~custom_headers_config
           ~remove_headers_config ~security_headers_config
           ~server_timing_headers_config ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?etag ?id ~name ~cors_config
    ~custom_headers_config ~remove_headers_config
    ~security_headers_config ~server_timing_headers_config __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?etag ?id ~name ~cors_config ~custom_headers_config
      ~remove_headers_config ~security_headers_config
      ~server_timing_headers_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
