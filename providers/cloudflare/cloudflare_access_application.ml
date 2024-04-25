(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_headers = {
  allow_all_headers : bool prop option; [@option]
  allow_all_methods : bool prop option; [@option]
  allow_all_origins : bool prop option; [@option]
  allow_credentials : bool prop option; [@option]
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list option; [@option]
  allowed_origins : string prop list option; [@option]
  max_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_headers) -> ()

let yojson_of_cors_headers =
  (function
   | {
       allow_all_headers = v_allow_all_headers;
       allow_all_methods = v_allow_all_methods;
       allow_all_origins = v_allow_all_origins;
       allow_credentials = v_allow_credentials;
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_headers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_headers

[@@@deriving.end]

type footer_links = {
  name : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : footer_links) -> ()

let yojson_of_footer_links =
  (function
   | { name = v_name; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : footer_links -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_footer_links

[@@@deriving.end]

type landing_page_design = {
  button_color : string prop option; [@option]
  button_text_color : string prop option; [@option]
  image_url : string prop option; [@option]
  message : string prop option; [@option]
  title : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : landing_page_design) -> ()

let yojson_of_landing_page_design =
  (function
   | {
       button_color = v_button_color;
       button_text_color = v_button_text_color;
       image_url = v_image_url;
       message = v_message;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_button_text_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "button_text_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_button_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "button_color", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : landing_page_design -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_landing_page_design

[@@@deriving.end]

type saas_app__custom_attribute__source = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_attribute__source) -> ()

let yojson_of_saas_app__custom_attribute__source =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : saas_app__custom_attribute__source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_attribute__source

[@@@deriving.end]

type saas_app__custom_attribute = {
  friendly_name : string prop option; [@option]
  name : string prop option; [@option]
  name_format : string prop option; [@option]
  required : bool prop option; [@option]
  source : saas_app__custom_attribute__source list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app__custom_attribute) -> ()

let yojson_of_saas_app__custom_attribute =
  (function
   | {
       friendly_name = v_friendly_name;
       name = v_name;
       name_format = v_name_format;
       required = v_required;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_saas_app__custom_attribute__source v_source
         in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_format", arg in
             bnd :: bnds
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
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app__custom_attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app__custom_attribute

[@@@deriving.end]

type saas_app = {
  app_launcher_url : string prop option; [@option]
  auth_type : string prop option; [@option]
  consumer_service_url : string prop option; [@option]
  default_relay_state : string prop option; [@option]
  grant_types : string prop list option; [@option]
  group_filter_regex : string prop option; [@option]
  name_id_format : string prop option; [@option]
  name_id_transform_jsonata : string prop option; [@option]
  redirect_uris : string prop list option; [@option]
  scopes : string prop list option; [@option]
  sp_entity_id : string prop option; [@option]
  custom_attribute : saas_app__custom_attribute list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saas_app) -> ()

let yojson_of_saas_app =
  (function
   | {
       app_launcher_url = v_app_launcher_url;
       auth_type = v_auth_type;
       consumer_service_url = v_consumer_service_url;
       default_relay_state = v_default_relay_state;
       grant_types = v_grant_types;
       group_filter_regex = v_group_filter_regex;
       name_id_format = v_name_id_format;
       name_id_transform_jsonata = v_name_id_transform_jsonata;
       redirect_uris = v_redirect_uris;
       scopes = v_scopes;
       sp_entity_id = v_sp_entity_id;
       custom_attribute = v_custom_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_saas_app__custom_attribute
             v_custom_attribute
         in
         ("custom_attribute", arg) :: bnds
       in
       let bnds =
         match v_sp_entity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sp_entity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_uris with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "redirect_uris", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_id_transform_jsonata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_id_transform_jsonata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_id_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_id_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_filter_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_filter_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_grant_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_relay_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_relay_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_service_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_service_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auth_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_launcher_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : saas_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saas_app

[@@@deriving.end]

type cloudflare_access_application = {
  account_id : string prop option; [@option]
  allow_authenticate_via_warp : bool prop option; [@option]
  allowed_idps : string prop list option; [@option]
  app_launcher_logo_url : string prop option; [@option]
  app_launcher_visible : bool prop option; [@option]
  auto_redirect_to_identity : bool prop option; [@option]
  bg_color : string prop option; [@option]
  custom_deny_message : string prop option; [@option]
  custom_deny_url : string prop option; [@option]
  custom_non_identity_deny_url : string prop option; [@option]
  custom_pages : string prop list option; [@option]
  domain : string prop option; [@option]
  enable_binding_cookie : bool prop option; [@option]
  header_bg_color : string prop option; [@option]
  http_only_cookie_attribute : bool prop option; [@option]
  id : string prop option; [@option]
  logo_url : string prop option; [@option]
  name : string prop option; [@option]
  same_site_cookie_attribute : string prop option; [@option]
  self_hosted_domains : string prop list option; [@option]
  service_auth_401_redirect : bool prop option; [@option]
  session_duration : string prop option; [@option]
  skip_interstitial : bool prop option; [@option]
  tags : string prop list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  zone_id : string prop option; [@option]
  cors_headers : cors_headers list;
  footer_links : footer_links list;
  landing_page_design : landing_page_design list;
  saas_app : saas_app list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_application) -> ()

let yojson_of_cloudflare_access_application =
  (function
   | {
       account_id = v_account_id;
       allow_authenticate_via_warp = v_allow_authenticate_via_warp;
       allowed_idps = v_allowed_idps;
       app_launcher_logo_url = v_app_launcher_logo_url;
       app_launcher_visible = v_app_launcher_visible;
       auto_redirect_to_identity = v_auto_redirect_to_identity;
       bg_color = v_bg_color;
       custom_deny_message = v_custom_deny_message;
       custom_deny_url = v_custom_deny_url;
       custom_non_identity_deny_url = v_custom_non_identity_deny_url;
       custom_pages = v_custom_pages;
       domain = v_domain;
       enable_binding_cookie = v_enable_binding_cookie;
       header_bg_color = v_header_bg_color;
       http_only_cookie_attribute = v_http_only_cookie_attribute;
       id = v_id;
       logo_url = v_logo_url;
       name = v_name;
       same_site_cookie_attribute = v_same_site_cookie_attribute;
       self_hosted_domains = v_self_hosted_domains;
       service_auth_401_redirect = v_service_auth_401_redirect;
       session_duration = v_session_duration;
       skip_interstitial = v_skip_interstitial;
       tags = v_tags;
       type_ = v_type_;
       zone_id = v_zone_id;
       cors_headers = v_cors_headers;
       footer_links = v_footer_links;
       landing_page_design = v_landing_page_design;
       saas_app = v_saas_app;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_saas_app v_saas_app in
         ("saas_app", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_landing_page_design
             v_landing_page_design
         in
         ("landing_page_design", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_footer_links v_footer_links
         in
         ("footer_links", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cors_headers v_cors_headers
         in
         ("cors_headers", arg) :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_interstitial with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_interstitial", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_auth_401_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_auth_401_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_self_hosted_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "self_hosted_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_same_site_cookie_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "same_site_cookie_attribute", arg in
             bnd :: bnds
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
         match v_logo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_url", arg in
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
       let bnds =
         match v_http_only_cookie_attribute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "http_only_cookie_attribute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_bg_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_bg_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_binding_cookie with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_binding_cookie", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_non_identity_deny_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_non_identity_deny_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_deny_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_deny_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_deny_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_deny_message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bg_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bg_color", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_redirect_to_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_redirect_to_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_visible with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "app_launcher_visible", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_launcher_logo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_launcher_logo_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_idps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_idps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_authenticate_via_warp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_authenticate_via_warp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_application

[@@@deriving.end]

let cors_headers ?allow_all_headers ?allow_all_methods
    ?allow_all_origins ?allow_credentials ?allowed_headers
    ?allowed_methods ?allowed_origins ?max_age () : cors_headers =
  {
    allow_all_headers;
    allow_all_methods;
    allow_all_origins;
    allow_credentials;
    allowed_headers;
    allowed_methods;
    allowed_origins;
    max_age;
  }

let footer_links ?name ?url () : footer_links = { name; url }

let landing_page_design ?button_color ?button_text_color ?image_url
    ?message ?title () : landing_page_design =
  { button_color; button_text_color; image_url; message; title }

let saas_app__custom_attribute__source ~name () :
    saas_app__custom_attribute__source =
  { name }

let saas_app__custom_attribute ?friendly_name ?name ?name_format
    ?required ~source () : saas_app__custom_attribute =
  { friendly_name; name; name_format; required; source }

let saas_app ?app_launcher_url ?auth_type ?consumer_service_url
    ?default_relay_state ?grant_types ?group_filter_regex
    ?name_id_format ?name_id_transform_jsonata ?redirect_uris ?scopes
    ?sp_entity_id ?(custom_attribute = []) () : saas_app =
  {
    app_launcher_url;
    auth_type;
    consumer_service_url;
    default_relay_state;
    grant_types;
    group_filter_regex;
    name_id_format;
    name_id_transform_jsonata;
    redirect_uris;
    scopes;
    sp_entity_id;
    custom_attribute;
  }

let cloudflare_access_application ?account_id
    ?allow_authenticate_via_warp ?allowed_idps ?app_launcher_logo_url
    ?app_launcher_visible ?auto_redirect_to_identity ?bg_color
    ?custom_deny_message ?custom_deny_url
    ?custom_non_identity_deny_url ?custom_pages ?domain
    ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?same_site_cookie_attribute ?self_hosted_domains
    ?service_auth_401_redirect ?session_duration ?skip_interstitial
    ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ~footer_links () :
    cloudflare_access_application =
  {
    account_id;
    allow_authenticate_via_warp;
    allowed_idps;
    app_launcher_logo_url;
    app_launcher_visible;
    auto_redirect_to_identity;
    bg_color;
    custom_deny_message;
    custom_deny_url;
    custom_non_identity_deny_url;
    custom_pages;
    domain;
    enable_binding_cookie;
    header_bg_color;
    http_only_cookie_attribute;
    id;
    logo_url;
    name;
    same_site_cookie_attribute;
    self_hosted_domains;
    service_auth_401_redirect;
    session_duration;
    skip_interstitial;
    tags;
    type_;
    zone_id;
    cors_headers;
    footer_links;
    landing_page_design;
    saas_app;
  }

type t = {
  account_id : string prop;
  allow_authenticate_via_warp : bool prop;
  allowed_idps : string list prop;
  app_launcher_logo_url : string prop;
  app_launcher_visible : bool prop;
  aud : string prop;
  auto_redirect_to_identity : bool prop;
  bg_color : string prop;
  custom_deny_message : string prop;
  custom_deny_url : string prop;
  custom_non_identity_deny_url : string prop;
  custom_pages : string list prop;
  domain : string prop;
  enable_binding_cookie : bool prop;
  header_bg_color : string prop;
  http_only_cookie_attribute : bool prop;
  id : string prop;
  logo_url : string prop;
  name : string prop;
  same_site_cookie_attribute : string prop;
  self_hosted_domains : string list prop;
  service_auth_401_redirect : bool prop;
  session_duration : string prop;
  skip_interstitial : bool prop;
  tags : string list prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?account_id ?allow_authenticate_via_warp ?allowed_idps
    ?app_launcher_logo_url ?app_launcher_visible
    ?auto_redirect_to_identity ?bg_color ?custom_deny_message
    ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
    ?domain ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?same_site_cookie_attribute ?self_hosted_domains
    ?service_auth_401_redirect ?session_duration ?skip_interstitial
    ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ~footer_links __id =
  let __type = "cloudflare_access_application" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       allow_authenticate_via_warp =
         Prop.computed __type __id "allow_authenticate_via_warp";
       allowed_idps = Prop.computed __type __id "allowed_idps";
       app_launcher_logo_url =
         Prop.computed __type __id "app_launcher_logo_url";
       app_launcher_visible =
         Prop.computed __type __id "app_launcher_visible";
       aud = Prop.computed __type __id "aud";
       auto_redirect_to_identity =
         Prop.computed __type __id "auto_redirect_to_identity";
       bg_color = Prop.computed __type __id "bg_color";
       custom_deny_message =
         Prop.computed __type __id "custom_deny_message";
       custom_deny_url = Prop.computed __type __id "custom_deny_url";
       custom_non_identity_deny_url =
         Prop.computed __type __id "custom_non_identity_deny_url";
       custom_pages = Prop.computed __type __id "custom_pages";
       domain = Prop.computed __type __id "domain";
       enable_binding_cookie =
         Prop.computed __type __id "enable_binding_cookie";
       header_bg_color = Prop.computed __type __id "header_bg_color";
       http_only_cookie_attribute =
         Prop.computed __type __id "http_only_cookie_attribute";
       id = Prop.computed __type __id "id";
       logo_url = Prop.computed __type __id "logo_url";
       name = Prop.computed __type __id "name";
       same_site_cookie_attribute =
         Prop.computed __type __id "same_site_cookie_attribute";
       self_hosted_domains =
         Prop.computed __type __id "self_hosted_domains";
       service_auth_401_redirect =
         Prop.computed __type __id "service_auth_401_redirect";
       session_duration =
         Prop.computed __type __id "session_duration";
       skip_interstitial =
         Prop.computed __type __id "skip_interstitial";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_application
        (cloudflare_access_application ?account_id
           ?allow_authenticate_via_warp ?allowed_idps
           ?app_launcher_logo_url ?app_launcher_visible
           ?auto_redirect_to_identity ?bg_color ?custom_deny_message
           ?custom_deny_url ?custom_non_identity_deny_url
           ?custom_pages ?domain ?enable_binding_cookie
           ?header_bg_color ?http_only_cookie_attribute ?id ?logo_url
           ?name ?same_site_cookie_attribute ?self_hosted_domains
           ?service_auth_401_redirect ?session_duration
           ?skip_interstitial ?tags ?type_ ?zone_id ~cors_headers
           ~landing_page_design ~saas_app ~footer_links ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?allow_authenticate_via_warp
    ?allowed_idps ?app_launcher_logo_url ?app_launcher_visible
    ?auto_redirect_to_identity ?bg_color ?custom_deny_message
    ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
    ?domain ?enable_binding_cookie ?header_bg_color
    ?http_only_cookie_attribute ?id ?logo_url ?name
    ?same_site_cookie_attribute ?self_hosted_domains
    ?service_auth_401_redirect ?session_duration ?skip_interstitial
    ?tags ?type_ ?zone_id ?(cors_headers = [])
    ?(landing_page_design = []) ?(saas_app = []) ~footer_links __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?allow_authenticate_via_warp ?allowed_idps
      ?app_launcher_logo_url ?app_launcher_visible
      ?auto_redirect_to_identity ?bg_color ?custom_deny_message
      ?custom_deny_url ?custom_non_identity_deny_url ?custom_pages
      ?domain ?enable_binding_cookie ?header_bg_color
      ?http_only_cookie_attribute ?id ?logo_url ?name
      ?same_site_cookie_attribute ?self_hosted_domains
      ?service_auth_401_redirect ?session_duration ?skip_interstitial
      ?tags ?type_ ?zone_id ~cors_headers ~landing_page_design
      ~saas_app ~footer_links __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
