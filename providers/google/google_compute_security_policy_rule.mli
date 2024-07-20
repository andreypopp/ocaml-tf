(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type match__config

val match__config :
  ?src_ip_ranges:string prop list -> unit -> match__config

type match__expr

val match__expr : expression:string prop -> unit -> match__expr

type match__expr_options__recaptcha_options

val match__expr_options__recaptcha_options :
  ?action_token_site_keys:string prop list ->
  ?session_token_site_keys:string prop list ->
  unit ->
  match__expr_options__recaptcha_options

type match__expr_options

val match__expr_options :
  recaptcha_options:match__expr_options__recaptcha_options list ->
  unit ->
  match__expr_options

type match_

val match_ :
  ?versioned_expr:string prop ->
  ?config:match__config list ->
  ?expr:match__expr list ->
  ?expr_options:match__expr_options list ->
  unit ->
  match_

type preconfigured_waf_config__exclusion__request_cookie

val preconfigured_waf_config__exclusion__request_cookie :
  ?value:string prop ->
  operator:string prop ->
  unit ->
  preconfigured_waf_config__exclusion__request_cookie

type preconfigured_waf_config__exclusion__request_header

val preconfigured_waf_config__exclusion__request_header :
  ?value:string prop ->
  operator:string prop ->
  unit ->
  preconfigured_waf_config__exclusion__request_header

type preconfigured_waf_config__exclusion__request_query_param

val preconfigured_waf_config__exclusion__request_query_param :
  ?value:string prop ->
  operator:string prop ->
  unit ->
  preconfigured_waf_config__exclusion__request_query_param

type preconfigured_waf_config__exclusion__request_uri

val preconfigured_waf_config__exclusion__request_uri :
  ?value:string prop ->
  operator:string prop ->
  unit ->
  preconfigured_waf_config__exclusion__request_uri

type preconfigured_waf_config__exclusion

val preconfigured_waf_config__exclusion :
  ?target_rule_ids:string prop list ->
  ?request_cookie:
    preconfigured_waf_config__exclusion__request_cookie list ->
  ?request_header:
    preconfigured_waf_config__exclusion__request_header list ->
  ?request_query_param:
    preconfigured_waf_config__exclusion__request_query_param list ->
  ?request_uri:preconfigured_waf_config__exclusion__request_uri list ->
  target_rule_set:string prop ->
  unit ->
  preconfigured_waf_config__exclusion

type preconfigured_waf_config

val preconfigured_waf_config :
  ?exclusion:preconfigured_waf_config__exclusion list ->
  unit ->
  preconfigured_waf_config

type rate_limit_options__ban_threshold

val rate_limit_options__ban_threshold :
  ?count:float prop ->
  ?interval_sec:float prop ->
  unit ->
  rate_limit_options__ban_threshold

type rate_limit_options__enforce_on_key_configs

val rate_limit_options__enforce_on_key_configs :
  ?enforce_on_key_name:string prop ->
  ?enforce_on_key_type:string prop ->
  unit ->
  rate_limit_options__enforce_on_key_configs

type rate_limit_options__exceed_redirect_options

val rate_limit_options__exceed_redirect_options :
  ?target:string prop ->
  ?type_:string prop ->
  unit ->
  rate_limit_options__exceed_redirect_options

type rate_limit_options__rate_limit_threshold

val rate_limit_options__rate_limit_threshold :
  ?count:float prop ->
  ?interval_sec:float prop ->
  unit ->
  rate_limit_options__rate_limit_threshold

type rate_limit_options

val rate_limit_options :
  ?ban_duration_sec:float prop ->
  ?conform_action:string prop ->
  ?enforce_on_key:string prop ->
  ?enforce_on_key_name:string prop ->
  ?exceed_action:string prop ->
  ?ban_threshold:rate_limit_options__ban_threshold list ->
  ?enforce_on_key_configs:
    rate_limit_options__enforce_on_key_configs list ->
  ?exceed_redirect_options:
    rate_limit_options__exceed_redirect_options list ->
  ?rate_limit_threshold:rate_limit_options__rate_limit_threshold list ->
  unit ->
  rate_limit_options

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_security_policy_rule

val google_compute_security_policy_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?match_:match_ list ->
  ?preconfigured_waf_config:preconfigured_waf_config list ->
  ?rate_limit_options:rate_limit_options list ->
  ?timeouts:timeouts ->
  action:string prop ->
  priority:float prop ->
  security_policy:string prop ->
  unit ->
  google_compute_security_policy_rule

val yojson_of_google_compute_security_policy_rule :
  google_compute_security_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  description : string prop;
  id : string prop;
  preview : bool prop;
  priority : float prop;
  project : string prop;
  security_policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?match_:match_ list ->
  ?preconfigured_waf_config:preconfigured_waf_config list ->
  ?rate_limit_options:rate_limit_options list ->
  ?timeouts:timeouts ->
  action:string prop ->
  priority:float prop ->
  security_policy:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?match_:match_ list ->
  ?preconfigured_waf_config:preconfigured_waf_config list ->
  ?rate_limit_options:rate_limit_options list ->
  ?timeouts:timeouts ->
  action:string prop ->
  priority:float prop ->
  security_policy:string prop ->
  string ->
  t Tf_core.resource
