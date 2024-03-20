(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type adaptive_protection_config__layer_7_ddos_defense_config

val adaptive_protection_config__layer_7_ddos_defense_config :
  ?enable:bool prop ->
  ?rule_visibility:string prop ->
  unit ->
  adaptive_protection_config__layer_7_ddos_defense_config

type adaptive_protection_config

val adaptive_protection_config :
  layer_7_ddos_defense_config:
    adaptive_protection_config__layer_7_ddos_defense_config list ->
  unit ->
  adaptive_protection_config

type advanced_options_config__json_custom_config

val advanced_options_config__json_custom_config :
  content_types:string prop list ->
  unit ->
  advanced_options_config__json_custom_config

type advanced_options_config

val advanced_options_config :
  ?json_parsing:string prop ->
  ?log_level:string prop ->
  ?user_ip_request_headers:string prop list ->
  json_custom_config:advanced_options_config__json_custom_config list ->
  unit ->
  advanced_options_config

type recaptcha_options_config

val recaptcha_options_config :
  redirect_site_key:string prop -> unit -> recaptcha_options_config

type rule__header_action__request_headers_to_adds

val rule__header_action__request_headers_to_adds :
  ?header_value:string prop ->
  header_name:string prop ->
  unit ->
  rule__header_action__request_headers_to_adds

type rule__header_action

val rule__header_action :
  request_headers_to_adds:
    rule__header_action__request_headers_to_adds list ->
  unit ->
  rule__header_action

type rule__match__config

val rule__match__config :
  src_ip_ranges:string prop list -> unit -> rule__match__config

type rule__match__expr

val rule__match__expr :
  expression:string prop -> unit -> rule__match__expr

type rule__match

val rule__match :
  ?versioned_expr:string prop ->
  config:rule__match__config list ->
  expr:rule__match__expr list ->
  unit ->
  rule__match

type rule__rate_limit_options__ban_threshold

val rule__rate_limit_options__ban_threshold :
  count:float prop ->
  interval_sec:float prop ->
  unit ->
  rule__rate_limit_options__ban_threshold

type rule__rate_limit_options__exceed_redirect_options

val rule__rate_limit_options__exceed_redirect_options :
  ?target:string prop ->
  type_:string prop ->
  unit ->
  rule__rate_limit_options__exceed_redirect_options

type rule__rate_limit_options__rate_limit_threshold

val rule__rate_limit_options__rate_limit_threshold :
  count:float prop ->
  interval_sec:float prop ->
  unit ->
  rule__rate_limit_options__rate_limit_threshold

type rule__rate_limit_options

val rule__rate_limit_options :
  ?ban_duration_sec:float prop ->
  ?enforce_on_key:string prop ->
  ?enforce_on_key_name:string prop ->
  conform_action:string prop ->
  exceed_action:string prop ->
  ban_threshold:rule__rate_limit_options__ban_threshold list ->
  exceed_redirect_options:
    rule__rate_limit_options__exceed_redirect_options list ->
  rate_limit_threshold:
    rule__rate_limit_options__rate_limit_threshold list ->
  unit ->
  rule__rate_limit_options

type rule__redirect_options

val rule__redirect_options :
  ?target:string prop ->
  type_:string prop ->
  unit ->
  rule__redirect_options

type rule

val rule :
  ?description:string prop ->
  ?preview:bool prop ->
  action:string prop ->
  priority:float prop ->
  header_action:rule__header_action list ->
  match_:rule__match list ->
  rate_limit_options:rule__rate_limit_options list ->
  redirect_options:rule__redirect_options list ->
  unit ->
  rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_security_policy

val google_compute_security_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  adaptive_protection_config:adaptive_protection_config list ->
  advanced_options_config:advanced_options_config list ->
  recaptcha_options_config:recaptcha_options_config list ->
  rule:rule list ->
  unit ->
  google_compute_security_policy

val yojson_of_google_compute_security_policy :
  google_compute_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  adaptive_protection_config:adaptive_protection_config list ->
  advanced_options_config:advanced_options_config list ->
  recaptcha_options_config:recaptcha_options_config list ->
  rule:rule list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  adaptive_protection_config:adaptive_protection_config list ->
  advanced_options_config:advanced_options_config list ->
  recaptcha_options_config:recaptcha_options_config list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
