(** The [Cloudflare Ruleset Engine](https://developers.cloudflare.com/firewall/cf-rulesets)
allows you to create and deploy rules and rulesets.

The engine syntax, inspired by the Wireshark Display Filter language, is the
same syntax used in custom Firewall Rules. Cloudflare uses the Ruleset Engine
in different products, allowing you to configure several products using the same
basic syntax.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules__action_parameters__algorithms

val rules__action_parameters__algorithms :
  name:string prop -> unit -> rules__action_parameters__algorithms

type rules__action_parameters__autominify

val rules__action_parameters__autominify :
  ?css:bool prop ->
  ?html:bool prop ->
  ?js:bool prop ->
  unit ->
  rules__action_parameters__autominify

type rules__action_parameters__browser_ttl

val rules__action_parameters__browser_ttl :
  ?default:float prop ->
  mode:string prop ->
  unit ->
  rules__action_parameters__browser_ttl

type rules__action_parameters__cache_key__custom_key__cookie

val rules__action_parameters__cache_key__custom_key__cookie :
  ?check_presence:string prop list ->
  ?include_:string prop list ->
  unit ->
  rules__action_parameters__cache_key__custom_key__cookie

type rules__action_parameters__cache_key__custom_key__header

val rules__action_parameters__cache_key__custom_key__header :
  ?check_presence:string prop list ->
  ?exclude_origin:bool prop ->
  ?include_:string prop list ->
  unit ->
  rules__action_parameters__cache_key__custom_key__header

type rules__action_parameters__cache_key__custom_key__host

val rules__action_parameters__cache_key__custom_key__host :
  ?resolved:bool prop ->
  unit ->
  rules__action_parameters__cache_key__custom_key__host

type rules__action_parameters__cache_key__custom_key__query_string

val rules__action_parameters__cache_key__custom_key__query_string :
  ?exclude:string prop list ->
  ?include_:string prop list ->
  unit ->
  rules__action_parameters__cache_key__custom_key__query_string

type rules__action_parameters__cache_key__custom_key__user

val rules__action_parameters__cache_key__custom_key__user :
  ?device_type:bool prop ->
  ?geo:bool prop ->
  ?lang:bool prop ->
  unit ->
  rules__action_parameters__cache_key__custom_key__user

type rules__action_parameters__cache_key__custom_key

val rules__action_parameters__cache_key__custom_key :
  ?cookie:
    rules__action_parameters__cache_key__custom_key__cookie list ->
  ?header:
    rules__action_parameters__cache_key__custom_key__header list ->
  ?host:rules__action_parameters__cache_key__custom_key__host list ->
  ?query_string:
    rules__action_parameters__cache_key__custom_key__query_string
    list ->
  ?user:rules__action_parameters__cache_key__custom_key__user list ->
  unit ->
  rules__action_parameters__cache_key__custom_key

type rules__action_parameters__cache_key

val rules__action_parameters__cache_key :
  ?cache_by_device_type:bool prop ->
  ?cache_deception_armor:bool prop ->
  ?ignore_query_strings_order:bool prop ->
  ?custom_key:rules__action_parameters__cache_key__custom_key list ->
  unit ->
  rules__action_parameters__cache_key

type rules__action_parameters__edge_ttl__status_code_ttl__status_code_range

val rules__action_parameters__edge_ttl__status_code_ttl__status_code_range :
  ?from:float prop ->
  ?to_:float prop ->
  unit ->
  rules__action_parameters__edge_ttl__status_code_ttl__status_code_range

type rules__action_parameters__edge_ttl__status_code_ttl

val rules__action_parameters__edge_ttl__status_code_ttl :
  ?status_code:float prop ->
  ?value:float prop ->
  ?status_code_range:
    rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    list ->
  unit ->
  rules__action_parameters__edge_ttl__status_code_ttl

type rules__action_parameters__edge_ttl

val rules__action_parameters__edge_ttl :
  ?default:float prop ->
  ?status_code_ttl:
    rules__action_parameters__edge_ttl__status_code_ttl list ->
  mode:string prop ->
  unit ->
  rules__action_parameters__edge_ttl

type rules__action_parameters__from_list

val rules__action_parameters__from_list :
  ?key:string prop ->
  ?name:string prop ->
  unit ->
  rules__action_parameters__from_list

type rules__action_parameters__from_value__target_url

val rules__action_parameters__from_value__target_url :
  ?expression:string prop ->
  ?value:string prop ->
  unit ->
  rules__action_parameters__from_value__target_url

type rules__action_parameters__from_value

val rules__action_parameters__from_value :
  ?preserve_query_string:bool prop ->
  ?status_code:float prop ->
  ?target_url:rules__action_parameters__from_value__target_url list ->
  unit ->
  rules__action_parameters__from_value

type rules__action_parameters__headers

val rules__action_parameters__headers :
  ?expression:string prop ->
  ?name:string prop ->
  ?operation:string prop ->
  ?value:string prop ->
  unit ->
  rules__action_parameters__headers

type rules__action_parameters__matched_data

val rules__action_parameters__matched_data :
  ?public_key:string prop ->
  unit ->
  rules__action_parameters__matched_data

type rules__action_parameters__origin

val rules__action_parameters__origin :
  ?host:string prop ->
  ?port:float prop ->
  unit ->
  rules__action_parameters__origin

type rules__action_parameters__overrides__categories

val rules__action_parameters__overrides__categories :
  ?action:string prop ->
  ?category:string prop ->
  ?enabled:bool prop ->
  unit ->
  rules__action_parameters__overrides__categories

type rules__action_parameters__overrides__rules

val rules__action_parameters__overrides__rules :
  ?action:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?score_threshold:float prop ->
  ?sensitivity_level:string prop ->
  unit ->
  rules__action_parameters__overrides__rules

type rules__action_parameters__overrides

val rules__action_parameters__overrides :
  ?action:string prop ->
  ?enabled:bool prop ->
  ?sensitivity_level:string prop ->
  ?categories:rules__action_parameters__overrides__categories list ->
  ?rules:rules__action_parameters__overrides__rules list ->
  unit ->
  rules__action_parameters__overrides

type rules__action_parameters__response

val rules__action_parameters__response :
  ?content:string prop ->
  ?content_type:string prop ->
  ?status_code:float prop ->
  unit ->
  rules__action_parameters__response

type rules__action_parameters__serve_stale

val rules__action_parameters__serve_stale :
  ?disable_stale_while_updating:bool prop ->
  unit ->
  rules__action_parameters__serve_stale

type rules__action_parameters__sni

val rules__action_parameters__sni :
  ?value:string prop -> unit -> rules__action_parameters__sni

type rules__action_parameters__uri__path

val rules__action_parameters__uri__path :
  ?expression:string prop ->
  ?value:string prop ->
  unit ->
  rules__action_parameters__uri__path

type rules__action_parameters__uri__query

val rules__action_parameters__uri__query :
  ?expression:string prop ->
  ?value:string prop ->
  unit ->
  rules__action_parameters__uri__query

type rules__action_parameters__uri

val rules__action_parameters__uri :
  ?origin:bool prop ->
  ?path:rules__action_parameters__uri__path list ->
  ?query:rules__action_parameters__uri__query list ->
  unit ->
  rules__action_parameters__uri

type rules__action_parameters

val rules__action_parameters :
  ?additional_cacheable_ports:float prop list ->
  ?automatic_https_rewrites:bool prop ->
  ?bic:bool prop ->
  ?cache:bool prop ->
  ?content:string prop ->
  ?content_type:string prop ->
  ?cookie_fields:string prop list ->
  ?disable_apps:bool prop ->
  ?disable_railgun:bool prop ->
  ?disable_rum:bool prop ->
  ?disable_zaraz:bool prop ->
  ?email_obfuscation:bool prop ->
  ?fonts:bool prop ->
  ?host_header:string prop ->
  ?hotlink_protection:bool prop ->
  ?id:string prop ->
  ?increment:float prop ->
  ?mirage:bool prop ->
  ?opportunistic_encryption:bool prop ->
  ?origin_cache_control:bool prop ->
  ?origin_error_page_passthru:bool prop ->
  ?phases:string prop list ->
  ?polish:string prop ->
  ?products:string prop list ->
  ?read_timeout:float prop ->
  ?request_fields:string prop list ->
  ?respect_strong_etags:bool prop ->
  ?response_fields:string prop list ->
  ?rocket_loader:bool prop ->
  ?rules:string prop Tf_core.assoc ->
  ?ruleset:string prop ->
  ?rulesets:string prop list ->
  ?security_level:string prop ->
  ?server_side_excludes:bool prop ->
  ?ssl:string prop ->
  ?status_code:float prop ->
  ?sxg:bool prop ->
  ?version:string prop ->
  ?algorithms:rules__action_parameters__algorithms list ->
  ?autominify:rules__action_parameters__autominify list ->
  ?browser_ttl:rules__action_parameters__browser_ttl list ->
  ?cache_key:rules__action_parameters__cache_key list ->
  ?edge_ttl:rules__action_parameters__edge_ttl list ->
  ?from_list:rules__action_parameters__from_list list ->
  ?from_value:rules__action_parameters__from_value list ->
  ?headers:rules__action_parameters__headers list ->
  ?matched_data:rules__action_parameters__matched_data list ->
  ?origin:rules__action_parameters__origin list ->
  ?overrides:rules__action_parameters__overrides list ->
  ?response:rules__action_parameters__response list ->
  ?serve_stale:rules__action_parameters__serve_stale list ->
  ?sni:rules__action_parameters__sni list ->
  ?uri:rules__action_parameters__uri list ->
  unit ->
  rules__action_parameters

type rules__exposed_credential_check

val rules__exposed_credential_check :
  ?password_expression:string prop ->
  ?username_expression:string prop ->
  unit ->
  rules__exposed_credential_check

type rules__logging

val rules__logging : ?enabled:bool prop -> unit -> rules__logging

type rules__ratelimit

val rules__ratelimit :
  ?characteristics:string prop list ->
  ?counting_expression:string prop ->
  ?mitigation_timeout:float prop ->
  ?period:float prop ->
  ?requests_per_period:float prop ->
  ?requests_to_origin:bool prop ->
  ?score_per_period:float prop ->
  ?score_response_header_name:string prop ->
  unit ->
  rules__ratelimit

type rules

val rules :
  ?action:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?ref:string prop ->
  ?action_parameters:rules__action_parameters list ->
  ?exposed_credential_check:rules__exposed_credential_check list ->
  ?logging:rules__logging list ->
  ?ratelimit:rules__ratelimit list ->
  expression:string prop ->
  unit ->
  rules

type cloudflare_ruleset

val cloudflare_ruleset :
  ?account_id:string prop ->
  ?description:string prop ->
  ?zone_id:string prop ->
  ?rules:rules list ->
  kind:string prop ->
  name:string prop ->
  phase:string prop ->
  unit ->
  cloudflare_ruleset

val yojson_of_cloudflare_ruleset : cloudflare_ruleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  phase : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?description:string prop ->
  ?zone_id:string prop ->
  ?rules:rules list ->
  kind:string prop ->
  name:string prop ->
  phase:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?description:string prop ->
  ?zone_id:string prop ->
  ?rules:rules list ->
  kind:string prop ->
  name:string prop ->
  phase:string prop ->
  string ->
  t Tf_core.resource
