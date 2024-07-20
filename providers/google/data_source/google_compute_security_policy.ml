(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type adaptive_protection_config__layer_7_ddos_defense_config = {
  enable : bool prop;
  rule_visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : adaptive_protection_config__layer_7_ddos_defense_config) ->
  ()

let yojson_of_adaptive_protection_config__layer_7_ddos_defense_config
    =
  (function
   | { enable = v_enable; rule_visibility = v_rule_visibility } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_visibility
         in
         ("rule_visibility", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : adaptive_protection_config__layer_7_ddos_defense_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_adaptive_protection_config__layer_7_ddos_defense_config

[@@@deriving.end]

type adaptive_protection_config = {
  layer_7_ddos_defense_config :
    adaptive_protection_config__layer_7_ddos_defense_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : adaptive_protection_config) -> ()

let yojson_of_adaptive_protection_config =
  (function
   | { layer_7_ddos_defense_config = v_layer_7_ddos_defense_config }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_layer_7_ddos_defense_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_adaptive_protection_config__layer_7_ddos_defense_config)
               v_layer_7_ddos_defense_config
           in
           let bnd = "layer_7_ddos_defense_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : adaptive_protection_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_adaptive_protection_config

[@@@deriving.end]

type advanced_options_config__json_custom_config = {
  content_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_options_config__json_custom_config) -> ()

let yojson_of_advanced_options_config__json_custom_config =
  (function
   | { content_types = v_content_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_content_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_content_types
           in
           let bnd = "content_types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : advanced_options_config__json_custom_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_options_config__json_custom_config

[@@@deriving.end]

type advanced_options_config = {
  json_custom_config :
    advanced_options_config__json_custom_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  json_parsing : string prop;
  log_level : string prop;
  user_ip_request_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_options_config) -> ()

let yojson_of_advanced_options_config =
  (function
   | {
       json_custom_config = v_json_custom_config;
       json_parsing = v_json_parsing;
       log_level = v_log_level;
       user_ip_request_headers = v_user_ip_request_headers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_ip_request_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_user_ip_request_headers
           in
           let bnd = "user_ip_request_headers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_level in
         ("log_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_json_parsing in
         ("json_parsing", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_json_custom_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_advanced_options_config__json_custom_config)
               v_json_custom_config
           in
           let bnd = "json_custom_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : advanced_options_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_options_config

[@@@deriving.end]

type recaptcha_options_config = { redirect_site_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : recaptcha_options_config) -> ()

let yojson_of_recaptcha_options_config =
  (function
   | { redirect_site_key = v_redirect_site_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_redirect_site_key
         in
         ("redirect_site_key", arg) :: bnds
       in
       `Assoc bnds
    : recaptcha_options_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_recaptcha_options_config

[@@@deriving.end]

type rule__redirect_options = {
  target : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__redirect_options) -> ()

let yojson_of_rule__redirect_options =
  (function
   | { target = v_target; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : rule__redirect_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__redirect_options

[@@@deriving.end]

type rule__rate_limit_options__rate_limit_threshold = {
  count : float prop;
  interval_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule__rate_limit_options__rate_limit_threshold) -> ()

let yojson_of_rule__rate_limit_options__rate_limit_threshold =
  (function
   | { count = v_count; interval_sec = v_interval_sec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval_sec in
         ("interval_sec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options__rate_limit_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options__rate_limit_threshold

[@@@deriving.end]

type rule__rate_limit_options__exceed_redirect_options = {
  target : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : rule__rate_limit_options__exceed_redirect_options) -> ()

let yojson_of_rule__rate_limit_options__exceed_redirect_options =
  (function
   | { target = v_target; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options__exceed_redirect_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options__exceed_redirect_options

[@@@deriving.end]

type rule__rate_limit_options__ban_threshold = {
  count : float prop;
  interval_sec : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rate_limit_options__ban_threshold) -> ()

let yojson_of_rule__rate_limit_options__ban_threshold =
  (function
   | { count = v_count; interval_sec = v_interval_sec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_interval_sec in
         ("interval_sec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_count in
         ("count", arg) :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options__ban_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options__ban_threshold

[@@@deriving.end]

type rule__rate_limit_options = {
  ban_duration_sec : float prop;
  ban_threshold : rule__rate_limit_options__ban_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conform_action : string prop;
  enforce_on_key : string prop;
  enforce_on_key_name : string prop;
  exceed_action : string prop;
  exceed_redirect_options :
    rule__rate_limit_options__exceed_redirect_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rate_limit_threshold :
    rule__rate_limit_options__rate_limit_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rate_limit_options) -> ()

let yojson_of_rule__rate_limit_options =
  (function
   | {
       ban_duration_sec = v_ban_duration_sec;
       ban_threshold = v_ban_threshold;
       conform_action = v_conform_action;
       enforce_on_key = v_enforce_on_key;
       enforce_on_key_name = v_enforce_on_key_name;
       exceed_action = v_exceed_action;
       exceed_redirect_options = v_exceed_redirect_options;
       rate_limit_threshold = v_rate_limit_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rate_limit_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rate_limit_options__rate_limit_threshold)
               v_rate_limit_threshold
           in
           let bnd = "rate_limit_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exceed_redirect_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rate_limit_options__exceed_redirect_options)
               v_exceed_redirect_options
           in
           let bnd = "exceed_redirect_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_exceed_action in
         ("exceed_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enforce_on_key_name
         in
         ("enforce_on_key_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enforce_on_key
         in
         ("enforce_on_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_conform_action
         in
         ("conform_action", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ban_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__rate_limit_options__ban_threshold)
               v_ban_threshold
           in
           let bnd = "ban_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_ban_duration_sec
         in
         ("ban_duration_sec", arg) :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options

[@@@deriving.end]

type rule__match__expr_options__recaptcha_options = {
  action_token_site_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  session_token_site_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match__expr_options__recaptcha_options) -> ()

let yojson_of_rule__match__expr_options__recaptcha_options =
  (function
   | {
       action_token_site_keys = v_action_token_site_keys;
       session_token_site_keys = v_session_token_site_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_session_token_site_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_session_token_site_keys
           in
           let bnd = "session_token_site_keys", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action_token_site_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_action_token_site_keys
           in
           let bnd = "action_token_site_keys", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__match__expr_options__recaptcha_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match__expr_options__recaptcha_options

[@@@deriving.end]

type rule__match__expr_options = {
  recaptcha_options :
    rule__match__expr_options__recaptcha_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match__expr_options) -> ()

let yojson_of_rule__match__expr_options =
  (function
   | { recaptcha_options = v_recaptcha_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_recaptcha_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__match__expr_options__recaptcha_options)
               v_recaptcha_options
           in
           let bnd = "recaptcha_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__match__expr_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match__expr_options

[@@@deriving.end]

type rule__match__expr = { expression : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match__expr) -> ()

let yojson_of_rule__match__expr =
  (function
   | { expression = v_expression } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : rule__match__expr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match__expr

[@@@deriving.end]

type rule__match__config = {
  src_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match__config) -> ()

let yojson_of_rule__match__config =
  (function
   | { src_ip_ranges = v_src_ip_ranges } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_src_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_src_ip_ranges
           in
           let bnd = "src_ip_ranges", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__match__config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match__config

[@@@deriving.end]

type rule__match = {
  config : rule__match__config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expr : rule__match__expr list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expr_options : rule__match__expr_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  versioned_expr : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match) -> ()

let yojson_of_rule__match =
  (function
   | {
       config = v_config;
       expr = v_expr;
       expr_options = v_expr_options;
       versioned_expr = v_versioned_expr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_versioned_expr
         in
         ("versioned_expr", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expr_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match__expr_options)
               v_expr_options
           in
           let bnd = "expr_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expr then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match__expr) v_expr
           in
           let bnd = "expr", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match__config) v_config
           in
           let bnd = "config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match

[@@@deriving.end]

type rule__header_action__request_headers_to_adds = {
  header_name : string prop;
  header_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__header_action__request_headers_to_adds) -> ()

let yojson_of_rule__header_action__request_headers_to_adds =
  (function
   | { header_name = v_header_name; header_value = v_header_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : rule__header_action__request_headers_to_adds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__header_action__request_headers_to_adds

[@@@deriving.end]

type rule__header_action = {
  request_headers_to_adds :
    rule__header_action__request_headers_to_adds list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__header_action) -> ()

let yojson_of_rule__header_action =
  (function
   | { request_headers_to_adds = v_request_headers_to_adds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_request_headers_to_adds then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__header_action__request_headers_to_adds)
               v_request_headers_to_adds
           in
           let bnd = "request_headers_to_adds", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__header_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__header_action

[@@@deriving.end]

type rule = {
  action : string prop;
  description : string prop;
  header_action : rule__header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_ : rule__match list;
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
      [@key "match"]
  preview : bool prop;
  priority : float prop;
  rate_limit_options : rule__rate_limit_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redirect_options : rule__redirect_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       header_action = v_header_action;
       match_ = v_match_;
       preview = v_preview;
       priority = v_priority;
       rate_limit_options = v_rate_limit_options;
       redirect_options = v_redirect_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_redirect_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__redirect_options)
               v_redirect_options
           in
           let bnd = "redirect_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rate_limit_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rate_limit_options)
               v_rate_limit_options
           in
           let bnd = "rate_limit_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preview in
         ("preview", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match) v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__header_action)
               v_header_action
           in
           let bnd = "header_action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type google_compute_security_policy = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  self_link : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_security_policy) -> ()

let yojson_of_google_compute_security_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_security_policy

[@@@deriving.end]

let google_compute_security_policy ?id ?name ?project ?self_link () :
    google_compute_security_policy =
  { id; name; project; self_link }

type t = {
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

let make ?id ?name ?project ?self_link __id =
  let __type = "google_compute_security_policy" in
  let __attrs =
    ({
       tf_name = __id;
       adaptive_protection_config =
         Prop.computed __type __id "adaptive_protection_config";
       advanced_options_config =
         Prop.computed __type __id "advanced_options_config";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       recaptcha_options_config =
         Prop.computed __type __id "recaptcha_options_config";
       rule = Prop.computed __type __id "rule";
       self_link = Prop.computed __type __id "self_link";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_security_policy
        (google_compute_security_policy ?id ?name ?project ?self_link
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?self_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?self_link __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
