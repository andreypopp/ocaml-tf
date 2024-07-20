(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type adaptive_protection_config__layer_7_ddos_defense_config = {
  enable : bool prop;  (** enable *)
  rule_visibility : string prop;  (** rule_visibility *)
}

type adaptive_protection_config = {
  layer_7_ddos_defense_config :
    adaptive_protection_config__layer_7_ddos_defense_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** layer_7_ddos_defense_config *)
}

type advanced_options_config__json_custom_config = {
  content_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** content_types *)
}

type advanced_options_config = {
  json_custom_config :
    advanced_options_config__json_custom_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** json_custom_config *)
  json_parsing : string prop;  (** json_parsing *)
  log_level : string prop;  (** log_level *)
  user_ip_request_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** user_ip_request_headers *)
}

type recaptcha_options_config = {
  redirect_site_key : string prop;  (** redirect_site_key *)
}

type rule__redirect_options = {
  target : string prop;  (** target *)
  type_ : string prop; [@key "type"]  (** type *)
}

type rule__rate_limit_options__rate_limit_threshold = {
  count : float prop;  (** count *)
  interval_sec : float prop;  (** interval_sec *)
}

type rule__rate_limit_options__exceed_redirect_options = {
  target : string prop;  (** target *)
  type_ : string prop; [@key "type"]  (** type *)
}

type rule__rate_limit_options__ban_threshold = {
  count : float prop;  (** count *)
  interval_sec : float prop;  (** interval_sec *)
}

type rule__rate_limit_options = {
  ban_duration_sec : float prop;  (** ban_duration_sec *)
  ban_threshold : rule__rate_limit_options__ban_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ban_threshold *)
  conform_action : string prop;  (** conform_action *)
  enforce_on_key : string prop;  (** enforce_on_key *)
  enforce_on_key_name : string prop;  (** enforce_on_key_name *)
  exceed_action : string prop;  (** exceed_action *)
  exceed_redirect_options :
    rule__rate_limit_options__exceed_redirect_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** exceed_redirect_options *)
  rate_limit_threshold :
    rule__rate_limit_options__rate_limit_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rate_limit_threshold *)
}

type rule__match__expr_options__recaptcha_options = {
  action_token_site_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** action_token_site_keys *)
  session_token_site_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** session_token_site_keys *)
}

type rule__match__expr_options = {
  recaptcha_options :
    rule__match__expr_options__recaptcha_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** recaptcha_options *)
}

type rule__match__expr = {
  expression : string prop;  (** expression *)
}

type rule__match__config = {
  src_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** src_ip_ranges *)
}

type rule__match = {
  config : rule__match__config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** config *)
  expr : rule__match__expr list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** expr *)
  expr_options : rule__match__expr_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** expr_options *)
  versioned_expr : string prop;  (** versioned_expr *)
}

type rule__header_action__request_headers_to_adds = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
}

type rule__header_action = {
  request_headers_to_adds :
    rule__header_action__request_headers_to_adds list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** request_headers_to_adds *)
}

type rule = {
  action : string prop;  (** action *)
  description : string prop;  (** description *)
  header_action : rule__header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** header_action *)
  match_ : rule__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
      (** match *)
  preview : bool prop;  (** preview *)
  priority : float prop;  (** priority *)
  rate_limit_options : rule__rate_limit_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** rate_limit_options *)
  redirect_options : rule__redirect_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** redirect_options *)
}

type google_compute_security_policy

val google_compute_security_policy :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  unit ->
  google_compute_security_policy

val yojson_of_google_compute_security_policy :
  google_compute_security_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  adaptive_protection_config : adaptive_protection_config list prop;
  advanced_options_config : advanced_options_config list prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  recaptcha_options_config : recaptcha_options_config list prop;
  rule : rule list prop;
  self_link : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?project:string prop ->
  ?self_link:string prop ->
  string ->
  t Tf_core.resource
