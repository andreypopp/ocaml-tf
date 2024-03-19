(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type actions__cache_key_fields__cookie = {
  check_presence : string prop list option; [@option]
      (** check_presence *)
  include_ : string prop list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** actions__cache_key_fields__cookie *)

type actions__cache_key_fields__header = {
  check_presence : string prop list option; [@option]
      (** check_presence *)
  exclude : string prop list option; [@option]  (** exclude *)
  include_ : string prop list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** actions__cache_key_fields__header *)

type actions__cache_key_fields__host = {
  resolved : bool prop option; [@option]  (** Defaults to `false`. *)
}
[@@deriving yojson_of]
(** actions__cache_key_fields__host *)

type actions__cache_key_fields__query_string = {
  exclude : string prop list option; [@option]  (** exclude *)
  ignore : bool prop option; [@option]  (** ignore *)
  include_ : string prop list option; [@option] [@key "include"]
      (** include *)
}
[@@deriving yojson_of]
(** actions__cache_key_fields__query_string *)

type actions__cache_key_fields__user = {
  device_type : bool prop option; [@option]  (** device_type *)
  geo : bool prop option; [@option]  (** geo *)
  lang : bool prop option; [@option]  (** lang *)
}
[@@deriving yojson_of]
(** actions__cache_key_fields__user *)

type actions__cache_key_fields = {
  cookie : actions__cache_key_fields__cookie list;
  header : actions__cache_key_fields__header list;
  host : actions__cache_key_fields__host list;
  query_string : actions__cache_key_fields__query_string list;
  user : actions__cache_key_fields__user list;
}
[@@deriving yojson_of]
(** actions__cache_key_fields *)

type actions__cache_ttl_by_status = {
  codes : string prop;  (** codes *)
  ttl : float prop;  (** ttl *)
}
[@@deriving yojson_of]
(** actions__cache_ttl_by_status *)

type actions__forwarding_url = {
  status_code : float prop;  (** status_code *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** actions__forwarding_url *)

type actions__minify = {
  css : string prop;  (** css *)
  html : string prop;  (** html *)
  js : string prop;  (** js *)
}
[@@deriving yojson_of]
(** actions__minify *)

type actions = {
  always_use_https : bool prop option; [@option]
      (** Defaults to `false`. *)
  automatic_https_rewrites : string prop option; [@option]
      (** automatic_https_rewrites *)
  browser_cache_ttl : string prop option; [@option]
      (** browser_cache_ttl *)
  browser_check : string prop option; [@option]  (** browser_check *)
  bypass_cache_on_cookie : string prop option; [@option]
      (** bypass_cache_on_cookie *)
  cache_by_device_type : string prop option; [@option]
      (** cache_by_device_type *)
  cache_deception_armor : string prop option; [@option]
      (** cache_deception_armor *)
  cache_level : string prop option; [@option]  (** cache_level *)
  cache_on_cookie : string prop option; [@option]
      (** cache_on_cookie *)
  disable_apps : bool prop option; [@option]
      (** Defaults to `false`. *)
  disable_performance : bool prop option; [@option]
      (** Defaults to `false`. *)
  disable_railgun : bool prop option; [@option]
      (** Defaults to `false`. *)
  disable_security : bool prop option; [@option]
      (** Defaults to `false`. *)
  disable_zaraz : bool prop option; [@option]
      (** Defaults to `false`. *)
  edge_cache_ttl : float prop option; [@option]
      (** edge_cache_ttl *)
  email_obfuscation : string prop option; [@option]
      (** email_obfuscation *)
  explicit_cache_control : string prop option; [@option]
      (** explicit_cache_control *)
  host_header_override : string prop option; [@option]
      (** host_header_override *)
  ip_geolocation : string prop option; [@option]
      (** ip_geolocation *)
  mirage : string prop option; [@option]  (** mirage *)
  opportunistic_encryption : string prop option; [@option]
      (** opportunistic_encryption *)
  origin_error_page_pass_thru : string prop option; [@option]
      (** origin_error_page_pass_thru *)
  polish : string prop option; [@option]  (** polish *)
  resolve_override : string prop option; [@option]
      (** resolve_override *)
  respect_strong_etag : string prop option; [@option]
      (** respect_strong_etag *)
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
  true_client_ip_header : string prop option; [@option]
      (** true_client_ip_header *)
  waf : string prop option; [@option]  (** waf *)
  cache_key_fields : actions__cache_key_fields list;
  cache_ttl_by_status : actions__cache_ttl_by_status list;
  forwarding_url : actions__forwarding_url list;
  minify : actions__minify list;
}
[@@deriving yojson_of]
(** actions *)

type cloudflare_page_rule = {
  id : string prop option; [@option]  (** id *)
  priority : float prop option; [@option]  (** Defaults to `1`. *)
  status : string prop option; [@option]
      (** Defaults to `active`. *)
  target : string prop;  (** target *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  actions : actions list;
}
[@@deriving yojson_of]
(** cloudflare_page_rule *)

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

let actions__cache_key_fields ~cookie ~header ~host ~query_string
    ~user () : actions__cache_key_fields =
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
    ?ssl ?true_client_ip_header ?waf ~cache_key_fields
    ~cache_ttl_by_status ~forwarding_url ~minify () : actions =
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
  id : string prop;
  priority : float prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ?priority ?status ~target ~zone_id
    ~actions __resource_id =
  let __resource_type = "cloudflare_page_rule" in
  let __resource =
    cloudflare_page_rule ?id ?priority ?status ~target ~zone_id
      ~actions ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_page_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       status = Prop.computed __resource_type __resource_id "status";
       target = Prop.computed __resource_type __resource_id "target";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
