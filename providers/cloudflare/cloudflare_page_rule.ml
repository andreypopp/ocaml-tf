(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__cache_key_fields__cookie = {
  check_presence : string prop list option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields__cookie) -> ()

let yojson_of_actions__cache_key_fields__cookie =
  (function
   | { check_presence = v_check_presence; include_ = v_include_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_presence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_presence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields__cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields__cookie

[@@@deriving.end]

type actions__cache_key_fields__header = {
  check_presence : string prop list option; [@option]
  exclude : string prop list option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields__header) -> ()

let yojson_of_actions__cache_key_fields__header =
  (function
   | {
       check_presence = v_check_presence;
       exclude = v_exclude;
       include_ = v_include_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_presence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_presence", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields__header

[@@@deriving.end]

type actions__cache_key_fields__host = {
  resolved : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields__host) -> ()

let yojson_of_actions__cache_key_fields__host =
  (function
   | { resolved = v_resolved } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resolved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "resolved", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields__host ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields__host

[@@@deriving.end]

type actions__cache_key_fields__query_string = {
  exclude : string prop list option; [@option]
  ignore : bool prop option; [@option]
  include_ : string prop list option; [@option] [@key "include"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields__query_string) -> ()

let yojson_of_actions__cache_key_fields__query_string =
  (function
   | {
       exclude = v_exclude;
       ignore = v_ignore;
       include_ = v_include_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields__query_string ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields__query_string

[@@@deriving.end]

type actions__cache_key_fields__user = {
  device_type : bool prop option; [@option]
  geo : bool prop option; [@option]
  lang : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields__user) -> ()

let yojson_of_actions__cache_key_fields__user =
  (function
   | { device_type = v_device_type; geo = v_geo; lang = v_lang } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lang with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lang", arg in
             bnd :: bnds
       in
       let bnds =
         match v_geo with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "geo", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "device_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields__user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields__user

[@@@deriving.end]

type actions__cache_key_fields = {
  cookie : actions__cache_key_fields__cookie list;
  header : actions__cache_key_fields__header list;
  host : actions__cache_key_fields__host list;
  query_string : actions__cache_key_fields__query_string list;
  user : actions__cache_key_fields__user list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_key_fields) -> ()

let yojson_of_actions__cache_key_fields =
  (function
   | {
       cookie = v_cookie;
       header = v_header;
       host = v_host;
       query_string = v_query_string;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_key_fields__user
             v_user
         in
         ("user", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_actions__cache_key_fields__query_string
             v_query_string
         in
         ("query_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_key_fields__host
             v_host
         in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_key_fields__header
             v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_key_fields__cookie
             v_cookie
         in
         ("cookie", arg) :: bnds
       in
       `Assoc bnds
    : actions__cache_key_fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_key_fields

[@@@deriving.end]

type actions__cache_ttl_by_status = {
  codes : string prop;
  ttl : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__cache_ttl_by_status) -> ()

let yojson_of_actions__cache_ttl_by_status =
  (function
   | { codes = v_codes; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_codes in
         ("codes", arg) :: bnds
       in
       `Assoc bnds
    : actions__cache_ttl_by_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__cache_ttl_by_status

[@@@deriving.end]

type actions__forwarding_url = {
  status_code : float prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__forwarding_url) -> ()

let yojson_of_actions__forwarding_url =
  (function
   | { status_code = v_status_code; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       `Assoc bnds
    : actions__forwarding_url -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__forwarding_url

[@@@deriving.end]

type actions__minify = {
  css : string prop;
  html : string prop;
  js : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__minify) -> ()

let yojson_of_actions__minify =
  (function
   | { css = v_css; html = v_html; js = v_js } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_js in
         ("js", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html in
         ("html", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_css in
         ("css", arg) :: bnds
       in
       `Assoc bnds
    : actions__minify -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__minify

[@@@deriving.end]

type actions = {
  always_use_https : bool prop option; [@option]
  automatic_https_rewrites : string prop option; [@option]
  browser_cache_ttl : string prop option; [@option]
  browser_check : string prop option; [@option]
  bypass_cache_on_cookie : string prop option; [@option]
  cache_by_device_type : string prop option; [@option]
  cache_deception_armor : string prop option; [@option]
  cache_level : string prop option; [@option]
  cache_on_cookie : string prop option; [@option]
  disable_apps : bool prop option; [@option]
  disable_performance : bool prop option; [@option]
  disable_railgun : bool prop option; [@option]
  disable_security : bool prop option; [@option]
  disable_zaraz : bool prop option; [@option]
  edge_cache_ttl : float prop option; [@option]
  email_obfuscation : string prop option; [@option]
  explicit_cache_control : string prop option; [@option]
  host_header_override : string prop option; [@option]
  ip_geolocation : string prop option; [@option]
  mirage : string prop option; [@option]
  opportunistic_encryption : string prop option; [@option]
  origin_error_page_pass_thru : string prop option; [@option]
  polish : string prop option; [@option]
  resolve_override : string prop option; [@option]
  respect_strong_etag : string prop option; [@option]
  response_buffering : string prop option; [@option]
  rocket_loader : string prop option; [@option]
  security_level : string prop option; [@option]
  server_side_exclude : string prop option; [@option]
  sort_query_string_for_cache : string prop option; [@option]
  ssl : string prop option; [@option]
  true_client_ip_header : string prop option; [@option]
  waf : string prop option; [@option]
  cache_key_fields : actions__cache_key_fields list;
  cache_ttl_by_status : actions__cache_ttl_by_status list;
  forwarding_url : actions__forwarding_url list;
  minify : actions__minify list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions) -> ()

let yojson_of_actions =
  (function
   | {
       always_use_https = v_always_use_https;
       automatic_https_rewrites = v_automatic_https_rewrites;
       browser_cache_ttl = v_browser_cache_ttl;
       browser_check = v_browser_check;
       bypass_cache_on_cookie = v_bypass_cache_on_cookie;
       cache_by_device_type = v_cache_by_device_type;
       cache_deception_armor = v_cache_deception_armor;
       cache_level = v_cache_level;
       cache_on_cookie = v_cache_on_cookie;
       disable_apps = v_disable_apps;
       disable_performance = v_disable_performance;
       disable_railgun = v_disable_railgun;
       disable_security = v_disable_security;
       disable_zaraz = v_disable_zaraz;
       edge_cache_ttl = v_edge_cache_ttl;
       email_obfuscation = v_email_obfuscation;
       explicit_cache_control = v_explicit_cache_control;
       host_header_override = v_host_header_override;
       ip_geolocation = v_ip_geolocation;
       mirage = v_mirage;
       opportunistic_encryption = v_opportunistic_encryption;
       origin_error_page_pass_thru = v_origin_error_page_pass_thru;
       polish = v_polish;
       resolve_override = v_resolve_override;
       respect_strong_etag = v_respect_strong_etag;
       response_buffering = v_response_buffering;
       rocket_loader = v_rocket_loader;
       security_level = v_security_level;
       server_side_exclude = v_server_side_exclude;
       sort_query_string_for_cache = v_sort_query_string_for_cache;
       ssl = v_ssl;
       true_client_ip_header = v_true_client_ip_header;
       waf = v_waf;
       cache_key_fields = v_cache_key_fields;
       cache_ttl_by_status = v_cache_ttl_by_status;
       forwarding_url = v_forwarding_url;
       minify = v_minify;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__minify v_minify
         in
         ("minify", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__forwarding_url
             v_forwarding_url
         in
         ("forwarding_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_ttl_by_status
             v_cache_ttl_by_status
         in
         ("cache_ttl_by_status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_actions__cache_key_fields
             v_cache_key_fields
         in
         ("cache_key_fields", arg) :: bnds
       in
       let bnds =
         match v_waf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "waf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_true_client_ip_header with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "true_client_ip_header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sort_query_string_for_cache with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sort_query_string_for_cache", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_side_exclude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_side_exclude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rocket_loader with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rocket_loader", arg in
             bnd :: bnds
       in
       let bnds =
         match v_response_buffering with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_buffering", arg in
             bnd :: bnds
       in
       let bnds =
         match v_respect_strong_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "respect_strong_etag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resolve_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolve_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_polish with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "polish", arg in
             bnd :: bnds
       in
       let bnds =
         match v_origin_error_page_pass_thru with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_error_page_pass_thru", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opportunistic_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opportunistic_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mirage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mirage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_geolocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_geolocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_header_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_header_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_explicit_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "explicit_cache_control", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email_obfuscation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_obfuscation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_cache_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "edge_cache_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_zaraz with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_zaraz", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_security with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_security", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_railgun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_railgun", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_performance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_performance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_apps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_on_cookie with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_on_cookie", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_deception_armor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_deception_armor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_by_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_by_device_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_cache_on_cookie with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bypass_cache_on_cookie", arg in
             bnd :: bnds
       in
       let bnds =
         match v_browser_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "browser_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_browser_cache_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "browser_cache_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_https_rewrites with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "automatic_https_rewrites", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_use_https with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_use_https", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions

[@@@deriving.end]

type cloudflare_page_rule = {
  id : string prop option; [@option]
  priority : float prop option; [@option]
  status : string prop option; [@option]
  target : string prop;
  zone_id : string prop;
  actions : actions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_page_rule) -> ()

let yojson_of_cloudflare_page_rule =
  (function
   | {
       id = v_id;
       priority = v_priority;
       status = v_status;
       target = v_target;
       zone_id = v_zone_id;
       actions = v_actions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_actions v_actions in
         ("actions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
    : cloudflare_page_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_page_rule

[@@@deriving.end]

let actions__cache_key_fields__cookie ?check_presence ?include_ () :
    actions__cache_key_fields__cookie =
  { check_presence; include_ }

let actions__cache_key_fields__header ?check_presence ?exclude
    ?include_ () : actions__cache_key_fields__header =
  { check_presence; exclude; include_ }

let actions__cache_key_fields__host ?resolved () :
    actions__cache_key_fields__host =
  { resolved }

let actions__cache_key_fields__query_string ?exclude ?ignore
    ?include_ () : actions__cache_key_fields__query_string =
  { exclude; ignore; include_ }

let actions__cache_key_fields__user ?device_type ?geo ?lang () :
    actions__cache_key_fields__user =
  { device_type; geo; lang }

let actions__cache_key_fields ?(cookie = []) ?(header = []) ~host
    ~query_string ~user () : actions__cache_key_fields =
  { cookie; header; host; query_string; user }

let actions__cache_ttl_by_status ~codes ~ttl () :
    actions__cache_ttl_by_status =
  { codes; ttl }

let actions__forwarding_url ~status_code ~url () :
    actions__forwarding_url =
  { status_code; url }

let actions__minify ~css ~html ~js () : actions__minify =
  { css; html; js }

let actions ?always_use_https ?automatic_https_rewrites
    ?browser_cache_ttl ?browser_check ?bypass_cache_on_cookie
    ?cache_by_device_type ?cache_deception_armor ?cache_level
    ?cache_on_cookie ?disable_apps ?disable_performance
    ?disable_railgun ?disable_security ?disable_zaraz ?edge_cache_ttl
    ?email_obfuscation ?explicit_cache_control ?host_header_override
    ?ip_geolocation ?mirage ?opportunistic_encryption
    ?origin_error_page_pass_thru ?polish ?resolve_override
    ?respect_strong_etag ?response_buffering ?rocket_loader
    ?security_level ?server_side_exclude ?sort_query_string_for_cache
    ?ssl ?true_client_ip_header ?waf ?(cache_key_fields = [])
    ?(forwarding_url = []) ?(minify = []) ~cache_ttl_by_status () :
    actions =
  {
    always_use_https;
    automatic_https_rewrites;
    browser_cache_ttl;
    browser_check;
    bypass_cache_on_cookie;
    cache_by_device_type;
    cache_deception_armor;
    cache_level;
    cache_on_cookie;
    disable_apps;
    disable_performance;
    disable_railgun;
    disable_security;
    disable_zaraz;
    edge_cache_ttl;
    email_obfuscation;
    explicit_cache_control;
    host_header_override;
    ip_geolocation;
    mirage;
    opportunistic_encryption;
    origin_error_page_pass_thru;
    polish;
    resolve_override;
    respect_strong_etag;
    response_buffering;
    rocket_loader;
    security_level;
    server_side_exclude;
    sort_query_string_for_cache;
    ssl;
    true_client_ip_header;
    waf;
    cache_key_fields;
    cache_ttl_by_status;
    forwarding_url;
    minify;
  }

let cloudflare_page_rule ?id ?priority ?status ~target ~zone_id
    ~actions () : cloudflare_page_rule =
  { id; priority; status; target; zone_id; actions }

type t = {
  tf_name : string;
  id : string prop;
  priority : float prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

let make ?id ?priority ?status ~target ~zone_id ~actions __id =
  let __type = "cloudflare_page_rule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       status = Prop.computed __type __id "status";
       target = Prop.computed __type __id "target";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_page_rule
        (cloudflare_page_rule ?id ?priority ?status ~target ~zone_id
           ~actions ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?priority ?status ~target ~zone_id
    ~actions __id =
  let (r : _ Tf_core.resource) =
    make ?id ?priority ?status ~target ~zone_id ~actions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
