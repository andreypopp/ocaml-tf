(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_zone_settings_override__settings__minify
type cloudflare_zone_settings_override__settings__mobile_redirect
type cloudflare_zone_settings_override__settings__security_header
type cloudflare_zone_settings_override__settings

type cloudflare_zone_settings_override__initial_settings__security_header = {
  enabled : bool prop;  (** enabled *)
  include_subdomains : bool prop;  (** include_subdomains *)
  max_age : float prop;  (** max_age *)
  nosniff : bool prop;  (** nosniff *)
  preload : bool prop;  (** preload *)
}

type cloudflare_zone_settings_override__initial_settings__mobile_redirect = {
  mobile_subdomain : string prop;  (** mobile_subdomain *)
  status : string prop;  (** status *)
  strip_uri : bool prop;  (** strip_uri *)
}

type cloudflare_zone_settings_override__initial_settings__minify = {
  css : string prop;  (** css *)
  html : string prop;  (** html *)
  js : string prop;  (** js *)
}

type cloudflare_zone_settings_override__initial_settings = {
  always_online : string prop;  (** always_online *)
  always_use_https : string prop;  (** always_use_https *)
  automatic_https_rewrites : string prop;
      (** automatic_https_rewrites *)
  binary_ast : string prop;  (** binary_ast *)
  brotli : string prop;  (** brotli *)
  browser_cache_ttl : float prop;  (** browser_cache_ttl *)
  browser_check : string prop;  (** browser_check *)
  cache_level : string prop;  (** cache_level *)
  challenge_ttl : float prop;  (** challenge_ttl *)
  ciphers : string prop list;  (** ciphers *)
  cname_flattening : string prop;  (** cname_flattening *)
  development_mode : string prop;  (** development_mode *)
  early_hints : string prop;  (** early_hints *)
  email_obfuscation : string prop;  (** email_obfuscation *)
  filter_logs_to_cloudflare : string prop;
      (** filter_logs_to_cloudflare *)
  fonts : string prop;  (** fonts *)
  h2_prioritization : string prop;  (** h2_prioritization *)
  hotlink_protection : string prop;  (** hotlink_protection *)
  http2 : string prop;  (** http2 *)
  http3 : string prop;  (** http3 *)
  image_resizing : string prop;  (** image_resizing *)
  ip_geolocation : string prop;  (** ip_geolocation *)
  ipv6 : string prop;  (** ipv6 *)
  log_to_cloudflare : string prop;  (** log_to_cloudflare *)
  max_upload : float prop;  (** max_upload *)
  min_tls_version : string prop;  (** min_tls_version *)
  minify :
    cloudflare_zone_settings_override__initial_settings__minify list;
      (** minify *)
  mirage : string prop;  (** mirage *)
  mobile_redirect :
    cloudflare_zone_settings_override__initial_settings__mobile_redirect
    list;
      (** mobile_redirect *)
  opportunistic_encryption : string prop;
      (** opportunistic_encryption *)
  opportunistic_onion : string prop;  (** opportunistic_onion *)
  orange_to_orange : string prop;  (** orange_to_orange *)
  origin_error_page_pass_thru : string prop;
      (** origin_error_page_pass_thru *)
  origin_max_http_version : string prop;
      (** origin_max_http_version *)
  polish : string prop;  (** polish *)
  prefetch_preload : string prop;  (** prefetch_preload *)
  privacy_pass : string prop;  (** privacy_pass *)
  proxy_read_timeout : string prop;  (** proxy_read_timeout *)
  pseudo_ipv4 : string prop;  (** pseudo_ipv4 *)
  response_buffering : string prop;  (** response_buffering *)
  rocket_loader : string prop;  (** rocket_loader *)
  security_header :
    cloudflare_zone_settings_override__initial_settings__security_header
    list;
      (** security_header *)
  security_level : string prop;  (** security_level *)
  server_side_exclude : string prop;  (** server_side_exclude *)
  sort_query_string_for_cache : string prop;
      (** sort_query_string_for_cache *)
  ssl : string prop;  (** ssl *)
  tls_1_2_only : string prop;  (** tls_1_2_only *)
  tls_1_3 : string prop;  (** tls_1_3 *)
  tls_client_auth : string prop;  (** tls_client_auth *)
  true_client_ip_header : string prop;  (** true_client_ip_header *)
  universal_ssl : string prop;  (** universal_ssl *)
  visitor_ip : string prop;  (** visitor_ip *)
  waf : string prop;  (** waf *)
  webp : string prop;  (** webp *)
  websockets : string prop;  (** websockets *)
  zero_rtt : string prop;  (** zero_rtt *)
}

type cloudflare_zone_settings_override

type t = private {
  id : string prop;
  initial_settings :
    cloudflare_zone_settings_override__initial_settings list prop;
  initial_settings_read_at : string prop;
  readonly_settings : string list prop;
  zone_id : string prop;
  zone_status : string prop;
  zone_type : string prop;
}

val cloudflare_zone_settings_override :
  ?id:string prop ->
  zone_id:string prop ->
  settings:cloudflare_zone_settings_override__settings list ->
  string ->
  t
