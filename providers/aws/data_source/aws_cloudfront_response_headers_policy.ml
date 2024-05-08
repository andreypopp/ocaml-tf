(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_config__access_control_expose_headers = {
  items : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_config__access_control_expose_headers) -> ()

let yojson_of_cors_config__access_control_expose_headers =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cors_config__access_control_expose_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_config__access_control_expose_headers

[@@@deriving.end]

type cors_config__access_control_allow_origins = {
  items : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_config__access_control_allow_origins) -> ()

let yojson_of_cors_config__access_control_allow_origins =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cors_config__access_control_allow_origins ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_config__access_control_allow_origins

[@@@deriving.end]

type cors_config__access_control_allow_methods = {
  items : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_config__access_control_allow_methods) -> ()

let yojson_of_cors_config__access_control_allow_methods =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cors_config__access_control_allow_methods ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_config__access_control_allow_methods

[@@@deriving.end]

type cors_config__access_control_allow_headers = {
  items : string prop list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_config__access_control_allow_headers) -> ()

let yojson_of_cors_config__access_control_allow_headers =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cors_config__access_control_allow_headers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_config__access_control_allow_headers

[@@@deriving.end]

type cors_config = {
  access_control_allow_credentials : bool prop;
  access_control_allow_headers :
    cors_config__access_control_allow_headers list;
      [@default []] [@yojson_drop_default ( = )]
  access_control_allow_methods :
    cors_config__access_control_allow_methods list;
      [@default []] [@yojson_drop_default ( = )]
  access_control_allow_origins :
    cors_config__access_control_allow_origins list;
      [@default []] [@yojson_drop_default ( = )]
  access_control_expose_headers :
    cors_config__access_control_expose_headers list;
      [@default []] [@yojson_drop_default ( = )]
  access_control_max_age_sec : float prop;
  origin_override : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_config) -> ()

let yojson_of_cors_config =
  (function
   | {
       access_control_allow_credentials =
         v_access_control_allow_credentials;
       access_control_allow_headers = v_access_control_allow_headers;
       access_control_allow_methods = v_access_control_allow_methods;
       access_control_allow_origins = v_access_control_allow_origins;
       access_control_expose_headers =
         v_access_control_expose_headers;
       access_control_max_age_sec = v_access_control_max_age_sec;
       origin_override = v_origin_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_origin_override in
         ("origin_override", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_access_control_max_age_sec
         in
         ("access_control_max_age_sec", arg) :: bnds
       in
       let bnds =
         if [] = v_access_control_expose_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cors_config__access_control_expose_headers)
               v_access_control_expose_headers
           in
           let bnd = "access_control_expose_headers", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_access_control_allow_origins then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cors_config__access_control_allow_origins)
               v_access_control_allow_origins
           in
           let bnd = "access_control_allow_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_access_control_allow_methods then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cors_config__access_control_allow_methods)
               v_access_control_allow_methods
           in
           let bnd = "access_control_allow_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_access_control_allow_headers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_cors_config__access_control_allow_headers)
               v_access_control_allow_headers
           in
           let bnd = "access_control_allow_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_access_control_allow_credentials
         in
         ("access_control_allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : cors_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_config

[@@@deriving.end]

type custom_headers_config__items = {
  header : string prop;
  override : bool prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_headers_config__items) -> ()

let yojson_of_custom_headers_config__items =
  (function
   | { header = v_header; override = v_override; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : custom_headers_config__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_headers_config__items

[@@@deriving.end]

type custom_headers_config = {
  items : custom_headers_config__items list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_headers_config) -> ()

let yojson_of_custom_headers_config =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_headers_config__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : custom_headers_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_headers_config

[@@@deriving.end]

type remove_headers_config__items = { header : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : remove_headers_config__items) -> ()

let yojson_of_remove_headers_config__items =
  (function
   | { header = v_header } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : remove_headers_config__items ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remove_headers_config__items

[@@@deriving.end]

type remove_headers_config = {
  items : remove_headers_config__items list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : remove_headers_config) -> ()

let yojson_of_remove_headers_config =
  (function
   | { items = v_items } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_remove_headers_config__items)
               v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : remove_headers_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_remove_headers_config

[@@@deriving.end]

type security_headers_config__xss_protection = {
  mode_block : bool prop;
  override : bool prop;
  protection : bool prop;
  report_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_headers_config__xss_protection) -> ()

let yojson_of_security_headers_config__xss_protection =
  (function
   | {
       mode_block = v_mode_block;
       override = v_override;
       protection = v_protection;
       report_uri = v_report_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_report_uri in
         ("report_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_protection in
         ("protection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_mode_block in
         ("mode_block", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__xss_protection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__xss_protection

[@@@deriving.end]

type security_headers_config__strict_transport_security = {
  access_control_max_age_sec : float prop;
  include_subdomains : bool prop;
  override : bool prop;
  preload : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : security_headers_config__strict_transport_security) -> ()

let yojson_of_security_headers_config__strict_transport_security =
  (function
   | {
       access_control_max_age_sec = v_access_control_max_age_sec;
       include_subdomains = v_include_subdomains;
       override = v_override;
       preload = v_preload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preload in
         ("preload", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_subdomains
         in
         ("include_subdomains", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_access_control_max_age_sec
         in
         ("access_control_max_age_sec", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__strict_transport_security ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__strict_transport_security

[@@@deriving.end]

type security_headers_config__referrer_policy = {
  override : bool prop;
  referrer_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_headers_config__referrer_policy) -> ()

let yojson_of_security_headers_config__referrer_policy =
  (function
   | { override = v_override; referrer_policy = v_referrer_policy }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_referrer_policy
         in
         ("referrer_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__referrer_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__referrer_policy

[@@@deriving.end]

type security_headers_config__frame_options = {
  frame_option : string prop;
  override : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_headers_config__frame_options) -> ()

let yojson_of_security_headers_config__frame_options =
  (function
   | { frame_option = v_frame_option; override = v_override } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frame_option in
         ("frame_option", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__frame_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__frame_options

[@@@deriving.end]

type security_headers_config__content_type_options = {
  override : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_headers_config__content_type_options) -> ()

let yojson_of_security_headers_config__content_type_options =
  (function
   | { override = v_override } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__content_type_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__content_type_options

[@@@deriving.end]

type security_headers_config__content_security_policy = {
  content_security_policy : string prop;
  override : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : security_headers_config__content_security_policy) -> ()

let yojson_of_security_headers_config__content_security_policy =
  (function
   | {
       content_security_policy = v_content_security_policy;
       override = v_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_override in
         ("override", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_content_security_policy
         in
         ("content_security_policy", arg) :: bnds
       in
       `Assoc bnds
    : security_headers_config__content_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config__content_security_policy

[@@@deriving.end]

type security_headers_config = {
  content_security_policy :
    security_headers_config__content_security_policy list;
      [@default []] [@yojson_drop_default ( = )]
  content_type_options :
    security_headers_config__content_type_options list;
      [@default []] [@yojson_drop_default ( = )]
  frame_options : security_headers_config__frame_options list;
      [@default []] [@yojson_drop_default ( = )]
  referrer_policy : security_headers_config__referrer_policy list;
      [@default []] [@yojson_drop_default ( = )]
  strict_transport_security :
    security_headers_config__strict_transport_security list;
      [@default []] [@yojson_drop_default ( = )]
  xss_protection : security_headers_config__xss_protection list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_headers_config) -> ()

let yojson_of_security_headers_config =
  (function
   | {
       content_security_policy = v_content_security_policy;
       content_type_options = v_content_type_options;
       frame_options = v_frame_options;
       referrer_policy = v_referrer_policy;
       strict_transport_security = v_strict_transport_security;
       xss_protection = v_xss_protection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_xss_protection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__xss_protection)
               v_xss_protection
           in
           let bnd = "xss_protection", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_strict_transport_security then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__strict_transport_security)
               v_strict_transport_security
           in
           let bnd = "strict_transport_security", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_referrer_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__referrer_policy)
               v_referrer_policy
           in
           let bnd = "referrer_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_frame_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__frame_options)
               v_frame_options
           in
           let bnd = "frame_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_content_type_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__content_type_options)
               v_content_type_options
           in
           let bnd = "content_type_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_content_security_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_headers_config__content_security_policy)
               v_content_security_policy
           in
           let bnd = "content_security_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_headers_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_headers_config

[@@@deriving.end]

type server_timing_headers_config = {
  enabled : bool prop;
  sampling_rate : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_timing_headers_config) -> ()

let yojson_of_server_timing_headers_config =
  (function
   | { enabled = v_enabled; sampling_rate = v_sampling_rate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sampling_rate in
         ("sampling_rate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : server_timing_headers_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_timing_headers_config

[@@@deriving.end]

type aws_cloudfront_response_headers_policy = {
  id : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_response_headers_policy) -> ()

let yojson_of_aws_cloudfront_response_headers_policy =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_response_headers_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_response_headers_policy

[@@@deriving.end]

let aws_cloudfront_response_headers_policy ?id ?name () :
    aws_cloudfront_response_headers_policy =
  { id; name }

type t = {
  tf_name : string;
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

let make ?id ?name __id =
  let __type = "aws_cloudfront_response_headers_policy" in
  let __attrs =
    ({
       tf_name = __id;
       comment = Prop.computed __type __id "comment";
       cors_config = Prop.computed __type __id "cors_config";
       custom_headers_config =
         Prop.computed __type __id "custom_headers_config";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       remove_headers_config =
         Prop.computed __type __id "remove_headers_config";
       security_headers_config =
         Prop.computed __type __id "security_headers_config";
       server_timing_headers_config =
         Prop.computed __type __id "server_timing_headers_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_response_headers_policy
        (aws_cloudfront_response_headers_policy ?id ?name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name __id =
  let (r : _ Tf_core.resource) = make ?id ?name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
