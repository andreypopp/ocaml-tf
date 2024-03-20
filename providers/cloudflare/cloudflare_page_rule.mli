(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type actions__cache_key_fields__cookie

val actions__cache_key_fields__cookie :
  ?check_presence:string prop list ->
  ?include_:string prop list ->
  unit ->
  actions__cache_key_fields__cookie

type actions__cache_key_fields__header

val actions__cache_key_fields__header :
  ?check_presence:string prop list ->
  ?exclude:string prop list ->
  ?include_:string prop list ->
  unit ->
  actions__cache_key_fields__header

type actions__cache_key_fields__host

val actions__cache_key_fields__host :
  ?resolved:bool prop -> unit -> actions__cache_key_fields__host

type actions__cache_key_fields__query_string

val actions__cache_key_fields__query_string :
  ?exclude:string prop list ->
  ?ignore:bool prop ->
  ?include_:string prop list ->
  unit ->
  actions__cache_key_fields__query_string

type actions__cache_key_fields__user

val actions__cache_key_fields__user :
  ?device_type:bool prop ->
  ?geo:bool prop ->
  ?lang:bool prop ->
  unit ->
  actions__cache_key_fields__user

type actions__cache_key_fields

val actions__cache_key_fields :
  cookie:actions__cache_key_fields__cookie list ->
  header:actions__cache_key_fields__header list ->
  host:actions__cache_key_fields__host list ->
  query_string:actions__cache_key_fields__query_string list ->
  user:actions__cache_key_fields__user list ->
  unit ->
  actions__cache_key_fields

type actions__cache_ttl_by_status

val actions__cache_ttl_by_status :
  codes:string prop ->
  ttl:float prop ->
  unit ->
  actions__cache_ttl_by_status

type actions__forwarding_url

val actions__forwarding_url :
  status_code:float prop ->
  url:string prop ->
  unit ->
  actions__forwarding_url

type actions__minify

val actions__minify :
  css:string prop ->
  html:string prop ->
  js:string prop ->
  unit ->
  actions__minify

type actions

val actions :
  ?always_use_https:bool prop ->
  ?automatic_https_rewrites:string prop ->
  ?browser_cache_ttl:string prop ->
  ?browser_check:string prop ->
  ?bypass_cache_on_cookie:string prop ->
  ?cache_by_device_type:string prop ->
  ?cache_deception_armor:string prop ->
  ?cache_level:string prop ->
  ?cache_on_cookie:string prop ->
  ?disable_apps:bool prop ->
  ?disable_performance:bool prop ->
  ?disable_railgun:bool prop ->
  ?disable_security:bool prop ->
  ?disable_zaraz:bool prop ->
  ?edge_cache_ttl:float prop ->
  ?email_obfuscation:string prop ->
  ?explicit_cache_control:string prop ->
  ?host_header_override:string prop ->
  ?ip_geolocation:string prop ->
  ?mirage:string prop ->
  ?opportunistic_encryption:string prop ->
  ?origin_error_page_pass_thru:string prop ->
  ?polish:string prop ->
  ?resolve_override:string prop ->
  ?respect_strong_etag:string prop ->
  ?response_buffering:string prop ->
  ?rocket_loader:string prop ->
  ?security_level:string prop ->
  ?server_side_exclude:string prop ->
  ?sort_query_string_for_cache:string prop ->
  ?ssl:string prop ->
  ?true_client_ip_header:string prop ->
  ?waf:string prop ->
  cache_key_fields:actions__cache_key_fields list ->
  cache_ttl_by_status:actions__cache_ttl_by_status list ->
  forwarding_url:actions__forwarding_url list ->
  minify:actions__minify list ->
  unit ->
  actions

type cloudflare_page_rule

val cloudflare_page_rule :
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  target:string prop ->
  zone_id:string prop ->
  actions:actions list ->
  unit ->
  cloudflare_page_rule

val yojson_of_cloudflare_page_rule : cloudflare_page_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  priority : float prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  target:string prop ->
  zone_id:string prop ->
  actions:actions list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?priority:float prop ->
  ?status:string prop ->
  target:string prop ->
  zone_id:string prop ->
  actions:actions list ->
  string ->
  t Tf_core.resource
