(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings__minify = {
  css : string prop;
  html : string prop;
  js : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__minify) -> ()

let yojson_of_settings__minify =
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
    : settings__minify -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__minify

[@@@deriving.end]

type settings__mobile_redirect = {
  mobile_subdomain : string prop;
  status : string prop;
  strip_uri : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__mobile_redirect) -> ()

let yojson_of_settings__mobile_redirect =
  (function
   | {
       mobile_subdomain = v_mobile_subdomain;
       status = v_status;
       strip_uri = v_strip_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_strip_uri in
         ("strip_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mobile_subdomain
         in
         ("mobile_subdomain", arg) :: bnds
       in
       `Assoc bnds
    : settings__mobile_redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__mobile_redirect

[@@@deriving.end]

type settings__security_header = {
  enabled : bool prop option; [@option]
  include_subdomains : bool prop option; [@option]
  max_age : float prop option; [@option]
  nosniff : bool prop option; [@option]
  preload : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__security_header) -> ()

let yojson_of_settings__security_header =
  (function
   | {
       enabled = v_enabled;
       include_subdomains = v_include_subdomains;
       max_age = v_max_age;
       nosniff = v_nosniff;
       preload = v_preload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nosniff with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "nosniff", arg in
             bnd :: bnds
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
         match v_include_subdomains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_subdomains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings__security_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__security_header

[@@@deriving.end]

type settings = {
  always_online : string prop option; [@option]
  always_use_https : string prop option; [@option]
  automatic_https_rewrites : string prop option; [@option]
  binary_ast : string prop option; [@option]
  brotli : string prop option; [@option]
  browser_cache_ttl : float prop option; [@option]
  browser_check : string prop option; [@option]
  cache_level : string prop option; [@option]
  challenge_ttl : float prop option; [@option]
  ciphers : string prop list option; [@option]
  cname_flattening : string prop option; [@option]
  development_mode : string prop option; [@option]
  early_hints : string prop option; [@option]
  email_obfuscation : string prop option; [@option]
  filter_logs_to_cloudflare : string prop option; [@option]
  fonts : string prop option; [@option]
  h2_prioritization : string prop option; [@option]
  hotlink_protection : string prop option; [@option]
  http2 : string prop option; [@option]
  http3 : string prop option; [@option]
  image_resizing : string prop option; [@option]
  ip_geolocation : string prop option; [@option]
  ipv6 : string prop option; [@option]
  log_to_cloudflare : string prop option; [@option]
  max_upload : float prop option; [@option]
  min_tls_version : string prop option; [@option]
  mirage : string prop option; [@option]
  opportunistic_encryption : string prop option; [@option]
  opportunistic_onion : string prop option; [@option]
  orange_to_orange : string prop option; [@option]
  origin_error_page_pass_thru : string prop option; [@option]
  origin_max_http_version : string prop option; [@option]
  polish : string prop option; [@option]
  prefetch_preload : string prop option; [@option]
  privacy_pass : string prop option; [@option]
  proxy_read_timeout : string prop option; [@option]
  pseudo_ipv4 : string prop option; [@option]
  response_buffering : string prop option; [@option]
  rocket_loader : string prop option; [@option]
  security_level : string prop option; [@option]
  server_side_exclude : string prop option; [@option]
  sort_query_string_for_cache : string prop option; [@option]
  ssl : string prop option; [@option]
  tls_1_2_only : string prop option; [@option]
  tls_1_3 : string prop option; [@option]
  tls_client_auth : string prop option; [@option]
  true_client_ip_header : string prop option; [@option]
  universal_ssl : string prop option; [@option]
  visitor_ip : string prop option; [@option]
  waf : string prop option; [@option]
  webp : string prop option; [@option]
  websockets : string prop option; [@option]
  zero_rtt : string prop option; [@option]
  minify : settings__minify list;
  mobile_redirect : settings__mobile_redirect list;
  security_header : settings__security_header list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       always_online = v_always_online;
       always_use_https = v_always_use_https;
       automatic_https_rewrites = v_automatic_https_rewrites;
       binary_ast = v_binary_ast;
       brotli = v_brotli;
       browser_cache_ttl = v_browser_cache_ttl;
       browser_check = v_browser_check;
       cache_level = v_cache_level;
       challenge_ttl = v_challenge_ttl;
       ciphers = v_ciphers;
       cname_flattening = v_cname_flattening;
       development_mode = v_development_mode;
       early_hints = v_early_hints;
       email_obfuscation = v_email_obfuscation;
       filter_logs_to_cloudflare = v_filter_logs_to_cloudflare;
       fonts = v_fonts;
       h2_prioritization = v_h2_prioritization;
       hotlink_protection = v_hotlink_protection;
       http2 = v_http2;
       http3 = v_http3;
       image_resizing = v_image_resizing;
       ip_geolocation = v_ip_geolocation;
       ipv6 = v_ipv6;
       log_to_cloudflare = v_log_to_cloudflare;
       max_upload = v_max_upload;
       min_tls_version = v_min_tls_version;
       mirage = v_mirage;
       opportunistic_encryption = v_opportunistic_encryption;
       opportunistic_onion = v_opportunistic_onion;
       orange_to_orange = v_orange_to_orange;
       origin_error_page_pass_thru = v_origin_error_page_pass_thru;
       origin_max_http_version = v_origin_max_http_version;
       polish = v_polish;
       prefetch_preload = v_prefetch_preload;
       privacy_pass = v_privacy_pass;
       proxy_read_timeout = v_proxy_read_timeout;
       pseudo_ipv4 = v_pseudo_ipv4;
       response_buffering = v_response_buffering;
       rocket_loader = v_rocket_loader;
       security_level = v_security_level;
       server_side_exclude = v_server_side_exclude;
       sort_query_string_for_cache = v_sort_query_string_for_cache;
       ssl = v_ssl;
       tls_1_2_only = v_tls_1_2_only;
       tls_1_3 = v_tls_1_3;
       tls_client_auth = v_tls_client_auth;
       true_client_ip_header = v_true_client_ip_header;
       universal_ssl = v_universal_ssl;
       visitor_ip = v_visitor_ip;
       waf = v_waf;
       webp = v_webp;
       websockets = v_websockets;
       zero_rtt = v_zero_rtt;
       minify = v_minify;
       mobile_redirect = v_mobile_redirect;
       security_header = v_security_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__security_header
             v_security_header
         in
         ("security_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__mobile_redirect
             v_mobile_redirect
         in
         ("mobile_redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_settings__minify v_minify
         in
         ("minify", arg) :: bnds
       in
       let bnds =
         match v_zero_rtt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zero_rtt", arg in
             bnd :: bnds
       in
       let bnds =
         match v_websockets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "websockets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_webp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "webp", arg in
             bnd :: bnds
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
         match v_visitor_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "visitor_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_universal_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "universal_ssl", arg in
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
         match v_tls_client_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_client_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls_1_3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_1_3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls_1_2_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_1_2_only", arg in
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
         match v_pseudo_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pseudo_ipv4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxy_read_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_read_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privacy_pass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privacy_pass", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefetch_preload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefetch_preload", arg in
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
         match v_origin_max_http_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin_max_http_version", arg in
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
         match v_orange_to_orange with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "orange_to_orange", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opportunistic_onion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opportunistic_onion", arg in
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
         match v_min_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_tls_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_upload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_upload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_to_cloudflare with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_to_cloudflare", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6", arg in
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
         match v_image_resizing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_resizing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hotlink_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hotlink_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_h2_prioritization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "h2_prioritization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fonts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fonts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_logs_to_cloudflare with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_logs_to_cloudflare", arg in
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
         match v_early_hints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "early_hints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_development_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "development_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cname_flattening with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cname_flattening", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ciphers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ciphers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_challenge_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "challenge_ttl", arg in
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
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "browser_cache_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_brotli with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "brotli", arg in
             bnd :: bnds
       in
       let bnds =
         match v_binary_ast with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "binary_ast", arg in
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "always_use_https", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_online with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "always_online", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type initial_settings__security_header = {
  enabled : bool prop;
  include_subdomains : bool prop;
  max_age : float prop;
  nosniff : bool prop;
  preload : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_settings__security_header) -> ()

let yojson_of_initial_settings__security_header =
  (function
   | {
       enabled = v_enabled;
       include_subdomains = v_include_subdomains;
       max_age = v_max_age;
       nosniff = v_nosniff;
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
         let arg = yojson_of_prop yojson_of_bool v_nosniff in
         ("nosniff", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_include_subdomains
         in
         ("include_subdomains", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : initial_settings__security_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_settings__security_header

[@@@deriving.end]

type initial_settings__mobile_redirect = {
  mobile_subdomain : string prop;
  status : string prop;
  strip_uri : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_settings__mobile_redirect) -> ()

let yojson_of_initial_settings__mobile_redirect =
  (function
   | {
       mobile_subdomain = v_mobile_subdomain;
       status = v_status;
       strip_uri = v_strip_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_strip_uri in
         ("strip_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mobile_subdomain
         in
         ("mobile_subdomain", arg) :: bnds
       in
       `Assoc bnds
    : initial_settings__mobile_redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_settings__mobile_redirect

[@@@deriving.end]

type initial_settings__minify = {
  css : string prop;
  html : string prop;
  js : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_settings__minify) -> ()

let yojson_of_initial_settings__minify =
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
    : initial_settings__minify -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_settings__minify

[@@@deriving.end]

type initial_settings = {
  always_online : string prop;
  always_use_https : string prop;
  automatic_https_rewrites : string prop;
  binary_ast : string prop;
  brotli : string prop;
  browser_cache_ttl : float prop;
  browser_check : string prop;
  cache_level : string prop;
  challenge_ttl : float prop;
  ciphers : string prop list;
  cname_flattening : string prop;
  development_mode : string prop;
  early_hints : string prop;
  email_obfuscation : string prop;
  filter_logs_to_cloudflare : string prop;
  fonts : string prop;
  h2_prioritization : string prop;
  hotlink_protection : string prop;
  http2 : string prop;
  http3 : string prop;
  image_resizing : string prop;
  ip_geolocation : string prop;
  ipv6 : string prop;
  log_to_cloudflare : string prop;
  max_upload : float prop;
  min_tls_version : string prop;
  minify : initial_settings__minify list;
  mirage : string prop;
  mobile_redirect : initial_settings__mobile_redirect list;
  opportunistic_encryption : string prop;
  opportunistic_onion : string prop;
  orange_to_orange : string prop;
  origin_error_page_pass_thru : string prop;
  origin_max_http_version : string prop;
  polish : string prop;
  prefetch_preload : string prop;
  privacy_pass : string prop;
  proxy_read_timeout : string prop;
  pseudo_ipv4 : string prop;
  response_buffering : string prop;
  rocket_loader : string prop;
  security_header : initial_settings__security_header list;
  security_level : string prop;
  server_side_exclude : string prop;
  sort_query_string_for_cache : string prop;
  ssl : string prop;
  tls_1_2_only : string prop;
  tls_1_3 : string prop;
  tls_client_auth : string prop;
  true_client_ip_header : string prop;
  universal_ssl : string prop;
  visitor_ip : string prop;
  waf : string prop;
  webp : string prop;
  websockets : string prop;
  zero_rtt : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_settings) -> ()

let yojson_of_initial_settings =
  (function
   | {
       always_online = v_always_online;
       always_use_https = v_always_use_https;
       automatic_https_rewrites = v_automatic_https_rewrites;
       binary_ast = v_binary_ast;
       brotli = v_brotli;
       browser_cache_ttl = v_browser_cache_ttl;
       browser_check = v_browser_check;
       cache_level = v_cache_level;
       challenge_ttl = v_challenge_ttl;
       ciphers = v_ciphers;
       cname_flattening = v_cname_flattening;
       development_mode = v_development_mode;
       early_hints = v_early_hints;
       email_obfuscation = v_email_obfuscation;
       filter_logs_to_cloudflare = v_filter_logs_to_cloudflare;
       fonts = v_fonts;
       h2_prioritization = v_h2_prioritization;
       hotlink_protection = v_hotlink_protection;
       http2 = v_http2;
       http3 = v_http3;
       image_resizing = v_image_resizing;
       ip_geolocation = v_ip_geolocation;
       ipv6 = v_ipv6;
       log_to_cloudflare = v_log_to_cloudflare;
       max_upload = v_max_upload;
       min_tls_version = v_min_tls_version;
       minify = v_minify;
       mirage = v_mirage;
       mobile_redirect = v_mobile_redirect;
       opportunistic_encryption = v_opportunistic_encryption;
       opportunistic_onion = v_opportunistic_onion;
       orange_to_orange = v_orange_to_orange;
       origin_error_page_pass_thru = v_origin_error_page_pass_thru;
       origin_max_http_version = v_origin_max_http_version;
       polish = v_polish;
       prefetch_preload = v_prefetch_preload;
       privacy_pass = v_privacy_pass;
       proxy_read_timeout = v_proxy_read_timeout;
       pseudo_ipv4 = v_pseudo_ipv4;
       response_buffering = v_response_buffering;
       rocket_loader = v_rocket_loader;
       security_header = v_security_header;
       security_level = v_security_level;
       server_side_exclude = v_server_side_exclude;
       sort_query_string_for_cache = v_sort_query_string_for_cache;
       ssl = v_ssl;
       tls_1_2_only = v_tls_1_2_only;
       tls_1_3 = v_tls_1_3;
       tls_client_auth = v_tls_client_auth;
       true_client_ip_header = v_true_client_ip_header;
       universal_ssl = v_universal_ssl;
       visitor_ip = v_visitor_ip;
       waf = v_waf;
       webp = v_webp;
       websockets = v_websockets;
       zero_rtt = v_zero_rtt;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zero_rtt in
         ("zero_rtt", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_websockets in
         ("websockets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_webp in
         ("webp", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_waf in
         ("waf", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visitor_ip in
         ("visitor_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_universal_ssl in
         ("universal_ssl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_true_client_ip_header
         in
         ("true_client_ip_header", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tls_client_auth
         in
         ("tls_client_auth", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tls_1_3 in
         ("tls_1_3", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tls_1_2_only in
         ("tls_1_2_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ssl in
         ("ssl", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_sort_query_string_for_cache
         in
         ("sort_query_string_for_cache", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_side_exclude
         in
         ("server_side_exclude", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_level
         in
         ("security_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_initial_settings__security_header
             v_security_header
         in
         ("security_header", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rocket_loader in
         ("rocket_loader", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_response_buffering
         in
         ("response_buffering", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pseudo_ipv4 in
         ("pseudo_ipv4", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_proxy_read_timeout
         in
         ("proxy_read_timeout", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_privacy_pass in
         ("privacy_pass", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefetch_preload
         in
         ("prefetch_preload", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_polish in
         ("polish", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_origin_max_http_version
         in
         ("origin_max_http_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_origin_error_page_pass_thru
         in
         ("origin_error_page_pass_thru", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_orange_to_orange
         in
         ("orange_to_orange", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_opportunistic_onion
         in
         ("opportunistic_onion", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_opportunistic_encryption
         in
         ("opportunistic_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_initial_settings__mobile_redirect
             v_mobile_redirect
         in
         ("mobile_redirect", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mirage in
         ("mirage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_initial_settings__minify v_minify
         in
         ("minify", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_min_tls_version
         in
         ("min_tls_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_upload in
         ("max_upload", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_to_cloudflare
         in
         ("log_to_cloudflare", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6 in
         ("ipv6", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_geolocation
         in
         ("ip_geolocation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_resizing
         in
         ("image_resizing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http3 in
         ("http3", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http2 in
         ("http2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hotlink_protection
         in
         ("hotlink_protection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_h2_prioritization
         in
         ("h2_prioritization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fonts in
         ("fonts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_filter_logs_to_cloudflare
         in
         ("filter_logs_to_cloudflare", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_email_obfuscation
         in
         ("email_obfuscation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_early_hints in
         ("early_hints", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_development_mode
         in
         ("development_mode", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cname_flattening
         in
         ("cname_flattening", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_ciphers
         in
         ("ciphers", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_challenge_ttl in
         ("challenge_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cache_level in
         ("cache_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_browser_check in
         ("browser_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_browser_cache_ttl
         in
         ("browser_cache_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_brotli in
         ("brotli", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_binary_ast in
         ("binary_ast", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automatic_https_rewrites
         in
         ("automatic_https_rewrites", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_always_use_https
         in
         ("always_use_https", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_always_online in
         ("always_online", arg) :: bnds
       in
       `Assoc bnds
    : initial_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_settings

[@@@deriving.end]

type cloudflare_zone_settings_override = {
  id : string prop option; [@option]
  zone_id : string prop;
  settings : settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone_settings_override) -> ()

let yojson_of_cloudflare_zone_settings_override =
  (function
   | { id = v_id; zone_id = v_zone_id; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
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
    : cloudflare_zone_settings_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone_settings_override

[@@@deriving.end]

let settings__minify ~css ~html ~js () : settings__minify =
  { css; html; js }

let settings__mobile_redirect ~mobile_subdomain ~status ~strip_uri ()
    : settings__mobile_redirect =
  { mobile_subdomain; status; strip_uri }

let settings__security_header ?enabled ?include_subdomains ?max_age
    ?nosniff ?preload () : settings__security_header =
  { enabled; include_subdomains; max_age; nosniff; preload }

let settings ?always_online ?always_use_https
    ?automatic_https_rewrites ?binary_ast ?brotli ?browser_cache_ttl
    ?browser_check ?cache_level ?challenge_ttl ?ciphers
    ?cname_flattening ?development_mode ?early_hints
    ?email_obfuscation ?filter_logs_to_cloudflare ?fonts
    ?h2_prioritization ?hotlink_protection ?http2 ?http3
    ?image_resizing ?ip_geolocation ?ipv6 ?log_to_cloudflare
    ?max_upload ?min_tls_version ?mirage ?opportunistic_encryption
    ?opportunistic_onion ?orange_to_orange
    ?origin_error_page_pass_thru ?origin_max_http_version ?polish
    ?prefetch_preload ?privacy_pass ?proxy_read_timeout ?pseudo_ipv4
    ?response_buffering ?rocket_loader ?security_level
    ?server_side_exclude ?sort_query_string_for_cache ?ssl
    ?tls_1_2_only ?tls_1_3 ?tls_client_auth ?true_client_ip_header
    ?universal_ssl ?visitor_ip ?waf ?webp ?websockets ?zero_rtt
    ~minify ~mobile_redirect ~security_header () : settings =
  {
    always_online;
    always_use_https;
    automatic_https_rewrites;
    binary_ast;
    brotli;
    browser_cache_ttl;
    browser_check;
    cache_level;
    challenge_ttl;
    ciphers;
    cname_flattening;
    development_mode;
    early_hints;
    email_obfuscation;
    filter_logs_to_cloudflare;
    fonts;
    h2_prioritization;
    hotlink_protection;
    http2;
    http3;
    image_resizing;
    ip_geolocation;
    ipv6;
    log_to_cloudflare;
    max_upload;
    min_tls_version;
    mirage;
    opportunistic_encryption;
    opportunistic_onion;
    orange_to_orange;
    origin_error_page_pass_thru;
    origin_max_http_version;
    polish;
    prefetch_preload;
    privacy_pass;
    proxy_read_timeout;
    pseudo_ipv4;
    response_buffering;
    rocket_loader;
    security_level;
    server_side_exclude;
    sort_query_string_for_cache;
    ssl;
    tls_1_2_only;
    tls_1_3;
    tls_client_auth;
    true_client_ip_header;
    universal_ssl;
    visitor_ip;
    waf;
    webp;
    websockets;
    zero_rtt;
    minify;
    mobile_redirect;
    security_header;
  }

let cloudflare_zone_settings_override ?id ~zone_id ~settings () :
    cloudflare_zone_settings_override =
  { id; zone_id; settings }

type t = {
  id : string prop;
  initial_settings : initial_settings list prop;
  initial_settings_read_at : string prop;
  readonly_settings : string list prop;
  zone_id : string prop;
  zone_status : string prop;
  zone_type : string prop;
}

let make ?id ~zone_id ~settings __id =
  let __type = "cloudflare_zone_settings_override" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       initial_settings =
         Prop.computed __type __id "initial_settings";
       initial_settings_read_at =
         Prop.computed __type __id "initial_settings_read_at";
       readonly_settings =
         Prop.computed __type __id "readonly_settings";
       zone_id = Prop.computed __type __id "zone_id";
       zone_status = Prop.computed __type __id "zone_status";
       zone_type = Prop.computed __type __id "zone_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_settings_override
        (cloudflare_zone_settings_override ?id ~zone_id ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~zone_id ~settings __id =
  let (r : _ Tf_core.resource) = make ?id ~zone_id ~settings __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
