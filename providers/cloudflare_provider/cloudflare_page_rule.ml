(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_page_rule__actions__cache_key_fields__cookie = {
  check_presence : string list option; [@option]
      (** check_presence *)
  include_ : string list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields__cookie *)

type cloudflare_page_rule__actions__cache_key_fields__header = {
  check_presence : string list option; [@option]
      (** check_presence *)
  exclude : string list option; [@option]  (** exclude *)
  include_ : string list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields__header *)

type cloudflare_page_rule__actions__cache_key_fields__host = {
  resolved : bool option; [@option]  (** Defaults to `false`. *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields__host *)

type cloudflare_page_rule__actions__cache_key_fields__query_string = {
  exclude : string list option; [@option]  (** exclude *)
  ignore : bool option; [@option]  (** ignore *)
  include_ : string list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields__query_string *)

type cloudflare_page_rule__actions__cache_key_fields__user = {
  device_type : bool option; [@option]  (** device_type *)
  geo : bool option; [@option]  (** geo *)
  lang : bool option; [@option]  (** lang *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields__user *)

type cloudflare_page_rule__actions__cache_key_fields = {
  cookie :
    cloudflare_page_rule__actions__cache_key_fields__cookie list;
  header :
    cloudflare_page_rule__actions__cache_key_fields__header list;
  host : cloudflare_page_rule__actions__cache_key_fields__host list;
  query_string :
    cloudflare_page_rule__actions__cache_key_fields__query_string
    list;
  user : cloudflare_page_rule__actions__cache_key_fields__user list;
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_key_fields *)

type cloudflare_page_rule__actions__cache_ttl_by_status = {
  codes : string;  (** codes *)
  ttl : float;  (** ttl *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__cache_ttl_by_status *)

type cloudflare_page_rule__actions__forwarding_url = {
  status_code : float;  (** status_code *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__forwarding_url *)

type cloudflare_page_rule__actions__minify = {
  css : string;  (** css *)
  html : string;  (** html *)
  js : string;  (** js *)
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions__minify *)

type cloudflare_page_rule__actions = {
  always_use_https : bool option; [@option]
      (** Defaults to `false`. *)
  automatic_https_rewrites : string option; [@option]
      (** automatic_https_rewrites *)
  browser_cache_ttl : string option; [@option]
      (** browser_cache_ttl *)
  browser_check : string option; [@option]  (** browser_check *)
  bypass_cache_on_cookie : string option; [@option]
      (** bypass_cache_on_cookie *)
  cache_by_device_type : string option; [@option]
      (** cache_by_device_type *)
  cache_deception_armor : string option; [@option]
      (** cache_deception_armor *)
  cache_level : string option; [@option]  (** cache_level *)
  cache_on_cookie : string option; [@option]  (** cache_on_cookie *)
  disable_apps : bool option; [@option]  (** Defaults to `false`. *)
  disable_performance : bool option; [@option]
      (** Defaults to `false`. *)
  disable_railgun : bool option; [@option]
      (** Defaults to `false`. *)
  disable_security : bool option; [@option]
      (** Defaults to `false`. *)
  disable_zaraz : bool option; [@option]  (** Defaults to `false`. *)
  edge_cache_ttl : float option; [@option]  (** edge_cache_ttl *)
  email_obfuscation : string option; [@option]
      (** email_obfuscation *)
  explicit_cache_control : string option; [@option]
      (** explicit_cache_control *)
  host_header_override : string option; [@option]
      (** host_header_override *)
  ip_geolocation : string option; [@option]  (** ip_geolocation *)
  mirage : string option; [@option]  (** mirage *)
  opportunistic_encryption : string option; [@option]
      (** opportunistic_encryption *)
  origin_error_page_pass_thru : string option; [@option]
      (** origin_error_page_pass_thru *)
  polish : string option; [@option]  (** polish *)
  resolve_override : string option; [@option]
      (** resolve_override *)
  respect_strong_etag : string option; [@option]
      (** respect_strong_etag *)
  response_buffering : string option; [@option]
      (** response_buffering *)
  rocket_loader : string option; [@option]  (** rocket_loader *)
  security_level : string option; [@option]  (** security_level *)
  server_side_exclude : string option; [@option]
      (** server_side_exclude *)
  sort_query_string_for_cache : string option; [@option]
      (** sort_query_string_for_cache *)
  ssl : string option; [@option]  (** ssl *)
  true_client_ip_header : string option; [@option]
      (** true_client_ip_header *)
  waf : string option; [@option]  (** waf *)
  cache_key_fields :
    cloudflare_page_rule__actions__cache_key_fields list;
  cache_ttl_by_status :
    cloudflare_page_rule__actions__cache_ttl_by_status list;
  forwarding_url :
    cloudflare_page_rule__actions__forwarding_url list;
  minify : cloudflare_page_rule__actions__minify list;
}
[@@deriving yojson_of]
(** cloudflare_page_rule__actions *)

type cloudflare_page_rule = {
  priority : float option; [@option]  (** Defaults to `1`. *)
  status : string option; [@option]  (** Defaults to `active`. *)
  target : string;  (** target *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  actions : cloudflare_page_rule__actions list;
}
[@@deriving yojson_of]
(** cloudflare_page_rule *)

let cloudflare_page_rule ?priority ?status ~target ~zone_id ~actions
    __resource_id =
  let __resource_type = "cloudflare_page_rule" in
  let __resource = { priority; status; target; zone_id; actions } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_page_rule __resource);
  ()
