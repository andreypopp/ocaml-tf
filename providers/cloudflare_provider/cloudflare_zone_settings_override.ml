(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_settings_override__settings__minify = {
  css : string;  (** css *)
  html : string;  (** html *)
  js : string;  (** js *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__minify *)

type cloudflare_zone_settings_override__settings__mobile_redirect = {
  mobile_subdomain : string;  (** mobile_subdomain *)
  status : string;  (** status *)
  strip_uri : bool;  (** strip_uri *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__mobile_redirect *)

type cloudflare_zone_settings_override__settings__security_header = {
  enabled : bool option; [@option]  (** enabled *)
  include_subdomains : bool option; [@option]
      (** include_subdomains *)
  max_age : float option; [@option]  (** max_age *)
  nosniff : bool option; [@option]  (** nosniff *)
  preload : bool option; [@option]  (** preload *)
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings__security_header *)

type cloudflare_zone_settings_override__settings = {
  always_online : string option; [@option]  (** always_online *)
  always_use_https : string option; [@option]
      (** always_use_https *)
  automatic_https_rewrites : string option; [@option]
      (** automatic_https_rewrites *)
  binary_ast : string option; [@option]  (** binary_ast *)
  brotli : string option; [@option]  (** brotli *)
  browser_cache_ttl : float option; [@option]
      (** browser_cache_ttl *)
  browser_check : string option; [@option]  (** browser_check *)
  cache_level : string option; [@option]  (** cache_level *)
  challenge_ttl : float option; [@option]  (** challenge_ttl *)
  ciphers : string list option; [@option]  (** ciphers *)
  cname_flattening : string option; [@option]
      (** cname_flattening *)
  development_mode : string option; [@option]
      (** development_mode *)
  early_hints : string option; [@option]  (** early_hints *)
  email_obfuscation : string option; [@option]
      (** email_obfuscation *)
  filter_logs_to_cloudflare : string option; [@option]
      (** filter_logs_to_cloudflare *)
  fonts : string option; [@option]  (** fonts *)
  h2_prioritization : string option; [@option]
      (** h2_prioritization *)
  hotlink_protection : string option; [@option]
      (** hotlink_protection *)
  http2 : string option; [@option]  (** http2 *)
  http3 : string option; [@option]  (** http3 *)
  image_resizing : string option; [@option]  (** image_resizing *)
  ip_geolocation : string option; [@option]  (** ip_geolocation *)
  ipv6 : string option; [@option]  (** ipv6 *)
  log_to_cloudflare : string option; [@option]
      (** log_to_cloudflare *)
  max_upload : float option; [@option]  (** max_upload *)
  min_tls_version : string option; [@option]  (** min_tls_version *)
  mirage : string option; [@option]  (** mirage *)
  opportunistic_encryption : string option; [@option]
      (** opportunistic_encryption *)
  opportunistic_onion : string option; [@option]
      (** opportunistic_onion *)
  orange_to_orange : string option; [@option]
      (** orange_to_orange *)
  origin_error_page_pass_thru : string option; [@option]
      (** origin_error_page_pass_thru *)
  origin_max_http_version : string option; [@option]
      (** origin_max_http_version *)
  polish : string option; [@option]  (** polish *)
  prefetch_preload : string option; [@option]
      (** prefetch_preload *)
  privacy_pass : string option; [@option]  (** privacy_pass *)
  proxy_read_timeout : string option; [@option]
      (** proxy_read_timeout *)
  pseudo_ipv4 : string option; [@option]  (** pseudo_ipv4 *)
  response_buffering : string option; [@option]
      (** response_buffering *)
  rocket_loader : string option; [@option]  (** rocket_loader *)
  security_level : string option; [@option]  (** security_level *)
  server_side_exclude : string option; [@option]
      (** server_side_exclude *)
  sort_query_string_for_cache : string option; [@option]
      (** sort_query_string_for_cache *)
  ssl : string option; [@option]  (** ssl *)
  tls_1_2_only : string option; [@option]  (** tls_1_2_only *)
  tls_1_3 : string option; [@option]  (** tls_1_3 *)
  tls_client_auth : string option; [@option]  (** tls_client_auth *)
  true_client_ip_header : string option; [@option]
      (** true_client_ip_header *)
  universal_ssl : string option; [@option]  (** universal_ssl *)
  visitor_ip : string option; [@option]  (** visitor_ip *)
  waf : string option; [@option]  (** waf *)
  webp : string option; [@option]  (** webp *)
  websockets : string option; [@option]  (** websockets *)
  zero_rtt : string option; [@option]  (** zero_rtt *)
  minify : cloudflare_zone_settings_override__settings__minify list;
  mobile_redirect :
    cloudflare_zone_settings_override__settings__mobile_redirect list;
  security_header :
    cloudflare_zone_settings_override__settings__security_header list;
}
[@@deriving yojson_of]
(** cloudflare_zone_settings_override__settings *)

type cloudflare_zone_settings_override__initial_settings__security_header = {
  enabled : bool;  (** enabled *)
  include_subdomains : bool;  (** include_subdomains *)
  max_age : float;  (** max_age *)
  nosniff : bool;  (** nosniff *)
  preload : bool;  (** preload *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override__initial_settings__mobile_redirect = {
  mobile_subdomain : string;  (** mobile_subdomain *)
  status : string;  (** status *)
  strip_uri : bool;  (** strip_uri *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override__initial_settings__minify = {
  css : string;  (** css *)
  html : string;  (** html *)
  js : string;  (** js *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override__initial_settings = {
  always_online : string;  (** always_online *)
  always_use_https : string;  (** always_use_https *)
  automatic_https_rewrites : string;  (** automatic_https_rewrites *)
  binary_ast : string;  (** binary_ast *)
  brotli : string;  (** brotli *)
  browser_cache_ttl : float;  (** browser_cache_ttl *)
  browser_check : string;  (** browser_check *)
  cache_level : string;  (** cache_level *)
  challenge_ttl : float;  (** challenge_ttl *)
  ciphers : string list;  (** ciphers *)
  cname_flattening : string;  (** cname_flattening *)
  development_mode : string;  (** development_mode *)
  early_hints : string;  (** early_hints *)
  email_obfuscation : string;  (** email_obfuscation *)
  filter_logs_to_cloudflare : string;
      (** filter_logs_to_cloudflare *)
  fonts : string;  (** fonts *)
  h2_prioritization : string;  (** h2_prioritization *)
  hotlink_protection : string;  (** hotlink_protection *)
  http2 : string;  (** http2 *)
  http3 : string;  (** http3 *)
  image_resizing : string;  (** image_resizing *)
  ip_geolocation : string;  (** ip_geolocation *)
  ipv6 : string;  (** ipv6 *)
  log_to_cloudflare : string;  (** log_to_cloudflare *)
  max_upload : float;  (** max_upload *)
  min_tls_version : string;  (** min_tls_version *)
  minify :
    cloudflare_zone_settings_override__initial_settings__minify list;
      (** minify *)
  mirage : string;  (** mirage *)
  mobile_redirect :
    cloudflare_zone_settings_override__initial_settings__mobile_redirect
    list;
      (** mobile_redirect *)
  opportunistic_encryption : string;  (** opportunistic_encryption *)
  opportunistic_onion : string;  (** opportunistic_onion *)
  orange_to_orange : string;  (** orange_to_orange *)
  origin_error_page_pass_thru : string;
      (** origin_error_page_pass_thru *)
  origin_max_http_version : string;  (** origin_max_http_version *)
  polish : string;  (** polish *)
  prefetch_preload : string;  (** prefetch_preload *)
  privacy_pass : string;  (** privacy_pass *)
  proxy_read_timeout : string;  (** proxy_read_timeout *)
  pseudo_ipv4 : string;  (** pseudo_ipv4 *)
  response_buffering : string;  (** response_buffering *)
  rocket_loader : string;  (** rocket_loader *)
  security_header :
    cloudflare_zone_settings_override__initial_settings__security_header
    list;
      (** security_header *)
  security_level : string;  (** security_level *)
  server_side_exclude : string;  (** server_side_exclude *)
  sort_query_string_for_cache : string;
      (** sort_query_string_for_cache *)
  ssl : string;  (** ssl *)
  tls_1_2_only : string;  (** tls_1_2_only *)
  tls_1_3 : string;  (** tls_1_3 *)
  tls_client_auth : string;  (** tls_client_auth *)
  true_client_ip_header : string;  (** true_client_ip_header *)
  universal_ssl : string;  (** universal_ssl *)
  visitor_ip : string;  (** visitor_ip *)
  waf : string;  (** waf *)
  webp : string;  (** webp *)
  websockets : string;  (** websockets *)
  zero_rtt : string;  (** zero_rtt *)
}
[@@deriving yojson_of]

type cloudflare_zone_settings_override = {
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  settings : cloudflare_zone_settings_override__settings list;
}
[@@deriving yojson_of]
(** Provides a resource which customizes Cloudflare zone settings. *)

let cloudflare_zone_settings_override ~zone_id ~settings
    __resource_id =
  let __resource_type = "cloudflare_zone_settings_override" in
  let __resource = { zone_id; settings } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_settings_override __resource);
  ()
