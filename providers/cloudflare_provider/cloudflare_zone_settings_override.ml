(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_settings_override__settings__minify = {
  css : string prop;  (** css *)
  html : string prop;  (** html *)
  js : string prop;  (** js *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__minify *)

type cloudflare_zone_settings_override__settings__mobile_redirect = {
  mobile_subdomain : string prop;  (** mobile_subdomain *)
  status : string prop;  (** status *)
  strip_uri : bool prop;  (** strip_uri *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__mobile_redirect *)

type cloudflare_zone_settings_override__settings__security_header = {
  enabled : bool prop option; [@option]  (** enabled *)
  include_subdomains : bool prop option; [@option]
      (** include_subdomains *)
  max_age : float prop option; [@option]  (** max_age *)
  nosniff : bool prop option; [@option]  (** nosniff *)
  preload : bool prop option; [@option]  (** preload *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__security_header *)

type cloudflare_zone_settings_override__settings = {
  always_online : string prop option; [@option]  (** always_online *)
  always_use_https : string prop option; [@option]
      (** always_use_https *)
  automatic_https_rewrites : string prop option; [@option]
      (** automatic_https_rewrites *)
  binary_ast : string prop option; [@option]  (** binary_ast *)
  brotli : string prop option; [@option]  (** brotli *)
  browser_cache_ttl : float prop option; [@option]
      (** browser_cache_ttl *)
  browser_check : string prop option; [@option]  (** browser_check *)
  cache_level : string prop option; [@option]  (** cache_level *)
  challenge_ttl : float prop option; [@option]  (** challenge_ttl *)
  ciphers : string prop list option; [@option]  (** ciphers *)
  cname_flattening : string prop option; [@option]
      (** cname_flattening *)
  development_mode : string prop option; [@option]
      (** development_mode *)
  early_hints : string prop option; [@option]  (** early_hints *)
  email_obfuscation : string prop option; [@option]
      (** email_obfuscation *)
  filter_logs_to_cloudflare : string prop option; [@option]
      (** filter_logs_to_cloudflare *)
  fonts : string prop option; [@option]  (** fonts *)
  h2_prioritization : string prop option; [@option]
      (** h2_prioritization *)
  hotlink_protection : string prop option; [@option]
      (** hotlink_protection *)
  http2 : string prop option; [@option]  (** http2 *)
  http3 : string prop option; [@option]  (** http3 *)
  image_resizing : string prop option; [@option]
      (** image_resizing *)
  ip_geolocation : string prop option; [@option]
      (** ip_geolocation *)
  ipv6 : string prop option; [@option]  (** ipv6 *)
  log_to_cloudflare : string prop option; [@option]
      (** log_to_cloudflare *)
  max_upload : float prop option; [@option]  (** max_upload *)
  min_tls_version : string prop option; [@option]
      (** min_tls_version *)
  mirage : string prop option; [@option]  (** mirage *)
  opportunistic_encryption : string prop option; [@option]
      (** opportunistic_encryption *)
  opportunistic_onion : string prop option; [@option]
      (** opportunistic_onion *)
  orange_to_orange : string prop option; [@option]
      (** orange_to_orange *)
  origin_error_page_pass_thru : string prop option; [@option]
      (** origin_error_page_pass_thru *)
  origin_max_http_version : string prop option; [@option]
      (** origin_max_http_version *)
  polish : string prop option; [@option]  (** polish *)
  prefetch_preload : string prop option; [@option]
      (** prefetch_preload *)
  privacy_pass : string prop option; [@option]  (** privacy_pass *)
  proxy_read_timeout : string prop option; [@option]
      (** proxy_read_timeout *)
  pseudo_ipv4 : string prop option; [@option]  (** pseudo_ipv4 *)
  response_buffering : string prop option; [@option]
      (** response_buffering *)
  rocket_loader : string prop option; [@option]  (** rocket_loader *)
  security_level : string prop option; [@option]
      (** security_level *)
  server_side_exclude : string prop option; [@option]
      (** server_side_exclude *)
  sort_query_string_for_cache : string prop option; [@option]
      (** sort_query_string_for_cache *)
  ssl : string prop option; [@option]  (** ssl *)
  tls_1_2_only : string prop option; [@option]  (** tls_1_2_only *)
  tls_1_3 : string prop option; [@option]  (** tls_1_3 *)
  tls_client_auth : string prop option; [@option]
      (** tls_client_auth *)
  true_client_ip_header : string prop option; [@option]
      (** true_client_ip_header *)
  universal_ssl : string prop option; [@option]  (** universal_ssl *)
  visitor_ip : string prop option; [@option]  (** visitor_ip *)
  waf : string prop option; [@option]  (** waf *)
  webp : string prop option; [@option]  (** webp *)
  websockets : string prop option; [@option]  (** websockets *)
  zero_rtt : string prop option; [@option]  (** zero_rtt *)
  minify : cloudflare_zone_settings_override__settings__minify list;
  mobile_redirect :
    cloudflare_zone_settings_override__settings__mobile_redirect list;
  security_header :
    cloudflare_zone_settings_override__settings__security_header list;
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings *)

type cloudflare_zone_settings_override__initial_settings__security_header = {
  enabled : bool prop;  (** enabled *)
  include_subdomains : bool prop;  (** include_subdomains *)
  max_age : float prop;  (** max_age *)
  nosniff : bool prop;  (** nosniff *)
  preload : bool prop;  (** preload *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override__initial_settings__mobile_redirect = {
  mobile_subdomain : string prop;  (** mobile_subdomain *)
  status : string prop;  (** status *)
  strip_uri : bool prop;  (** strip_uri *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override__initial_settings__minify = {
  css : string prop;  (** css *)
  html : string prop;  (** html *)
  js : string prop;  (** js *)
}
[@@deriving yojson_of]

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
[@@deriving yojson_of]

type cloudflare_zone_settings_override = {
  id : string prop option; [@option]  (** id *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  settings : cloudflare_zone_settings_override__settings list;
}
[@@deriving yojson_of]
(** Provides a resource which customizes Cloudflare zone settings. *)

let cloudflare_zone_settings_override ?id ~zone_id ~settings
    __resource_id =
  let __resource_type = "cloudflare_zone_settings_override" in
  let __resource = { id; zone_id; settings } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_settings_override __resource);
  ()
