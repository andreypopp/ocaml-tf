(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type adaptive_protection_config__layer_7_ddos_defense_config = {
  enable : bool prop option; [@option]
  rule_visibility : string prop option; [@option]
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
         match v_rule_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_layer_7_ddos_defense_config then bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_content_types then bnds
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
  json_parsing : string prop option; [@option]
  log_level : string prop option; [@option]
  user_ip_request_headers : string prop list option; [@option]
  json_custom_config :
    advanced_options_config__json_custom_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_options_config) -> ()

let yojson_of_advanced_options_config =
  (function
   | {
       json_parsing = v_json_parsing;
       log_level = v_log_level;
       user_ip_request_headers = v_user_ip_request_headers;
       json_custom_config = v_json_custom_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_json_custom_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_advanced_options_config__json_custom_config)
               v_json_custom_config
           in
           let bnd = "json_custom_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_ip_request_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_ip_request_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_json_parsing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "json_parsing", arg in
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

type rule__header_action__request_headers_to_adds = {
  header_name : string prop;
  header_value : string prop option; [@option]
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
         match v_header_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_value", arg in
             bnd :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_request_headers_to_adds then bnds
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

type rule__match__config = {
  src_ip_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_src_ip_ranges then bnds
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

type rule__match = {
  versioned_expr : string prop option; [@option]
  config : rule__match__config list;
      [@default []] [@yojson_drop_default ( = )]
  expr : rule__match__expr list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match) -> ()

let yojson_of_rule__match =
  (function
   | {
       versioned_expr = v_versioned_expr;
       config = v_config;
       expr = v_expr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_expr then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match__expr) v_expr
           in
           let bnd = "expr", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match__config) v_config
           in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_versioned_expr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "versioned_expr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match

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

type rule__rate_limit_options__exceed_redirect_options = {
  target : string prop option; [@option]
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
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options__exceed_redirect_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options__exceed_redirect_options

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

type rule__rate_limit_options = {
  ban_duration_sec : float prop option; [@option]
  conform_action : string prop;
  enforce_on_key : string prop option; [@option]
  enforce_on_key_name : string prop option; [@option]
  exceed_action : string prop;
  ban_threshold : rule__rate_limit_options__ban_threshold list;
      [@default []] [@yojson_drop_default ( = )]
  exceed_redirect_options :
    rule__rate_limit_options__exceed_redirect_options list;
      [@default []] [@yojson_drop_default ( = )]
  rate_limit_threshold :
    rule__rate_limit_options__rate_limit_threshold list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__rate_limit_options) -> ()

let yojson_of_rule__rate_limit_options =
  (function
   | {
       ban_duration_sec = v_ban_duration_sec;
       conform_action = v_conform_action;
       enforce_on_key = v_enforce_on_key;
       enforce_on_key_name = v_enforce_on_key_name;
       exceed_action = v_exceed_action;
       ban_threshold = v_ban_threshold;
       exceed_redirect_options = v_exceed_redirect_options;
       rate_limit_threshold = v_rate_limit_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rate_limit_threshold then bnds
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
         if [] = v_exceed_redirect_options then bnds
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
         if [] = v_ban_threshold then bnds
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
         let arg = yojson_of_prop yojson_of_string v_exceed_action in
         ("exceed_action", arg) :: bnds
       in
       let bnds =
         match v_enforce_on_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce_on_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_on_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce_on_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_conform_action
         in
         ("conform_action", arg) :: bnds
       in
       let bnds =
         match v_ban_duration_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ban_duration_sec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__rate_limit_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__rate_limit_options

[@@@deriving.end]

type rule__redirect_options = {
  target : string prop option; [@option]
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
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__redirect_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__redirect_options

[@@@deriving.end]

type rule = {
  action : string prop;
  description : string prop option; [@option]
  preview : bool prop option; [@option]
  priority : float prop;
  header_action : rule__header_action list;
      [@default []] [@yojson_drop_default ( = )]
  match_ : rule__match list;
      [@key "match"] [@default []] [@yojson_drop_default ( = )]
  rate_limit_options : rule__rate_limit_options list;
      [@default []] [@yojson_drop_default ( = )]
  redirect_options : rule__redirect_options list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       preview = v_preview;
       priority = v_priority;
       header_action = v_header_action;
       match_ = v_match_;
       rate_limit_options = v_rate_limit_options;
       redirect_options = v_redirect_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_redirect_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__redirect_options)
               v_redirect_options
           in
           let bnd = "redirect_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_rate_limit_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__rate_limit_options)
               v_rate_limit_options
           in
           let bnd = "rate_limit_options", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_match_ then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match) v_match_
           in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_header_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__header_action)
               v_header_action
           in
           let bnd = "header_action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         match v_preview with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preview", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_compute_security_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  adaptive_protection_config : adaptive_protection_config list;
      [@default []] [@yojson_drop_default ( = )]
  advanced_options_config : advanced_options_config list;
      [@default []] [@yojson_drop_default ( = )]
  recaptcha_options_config : recaptcha_options_config list;
      [@default []] [@yojson_drop_default ( = )]
  rule : rule list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_security_policy) -> ()

let yojson_of_google_compute_security_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       project = v_project;
       type_ = v_type_;
       adaptive_protection_config = v_adaptive_protection_config;
       advanced_options_config = v_advanced_options_config;
       recaptcha_options_config = v_recaptcha_options_config;
       rule = v_rule;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_recaptcha_options_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_recaptcha_options_config)
               v_recaptcha_options_config
           in
           let bnd = "recaptcha_options_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_advanced_options_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advanced_options_config)
               v_advanced_options_config
           in
           let bnd = "advanced_options_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_adaptive_protection_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_adaptive_protection_config)
               v_adaptive_protection_config
           in
           let bnd = "adaptive_protection_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_security_policy

[@@@deriving.end]

let adaptive_protection_config__layer_7_ddos_defense_config ?enable
    ?rule_visibility () :
    adaptive_protection_config__layer_7_ddos_defense_config =
  { enable; rule_visibility }

let adaptive_protection_config ?(layer_7_ddos_defense_config = []) ()
    : adaptive_protection_config =
  { layer_7_ddos_defense_config }

let advanced_options_config__json_custom_config ~content_types () :
    advanced_options_config__json_custom_config =
  { content_types }

let advanced_options_config ?json_parsing ?log_level
    ?user_ip_request_headers ?(json_custom_config = []) () :
    advanced_options_config =
  {
    json_parsing;
    log_level;
    user_ip_request_headers;
    json_custom_config;
  }

let recaptcha_options_config ~redirect_site_key () :
    recaptcha_options_config =
  { redirect_site_key }

let rule__header_action__request_headers_to_adds ?header_value
    ~header_name () : rule__header_action__request_headers_to_adds =
  { header_name; header_value }

let rule__header_action ~request_headers_to_adds () :
    rule__header_action =
  { request_headers_to_adds }

let rule__match__config ~src_ip_ranges () : rule__match__config =
  { src_ip_ranges }

let rule__match__expr ~expression () : rule__match__expr =
  { expression }

let rule__match ?versioned_expr ?(config = []) ?(expr = []) () :
    rule__match =
  { versioned_expr; config; expr }

let rule__rate_limit_options__ban_threshold ~count ~interval_sec () :
    rule__rate_limit_options__ban_threshold =
  { count; interval_sec }

let rule__rate_limit_options__exceed_redirect_options ?target ~type_
    () : rule__rate_limit_options__exceed_redirect_options =
  { target; type_ }

let rule__rate_limit_options__rate_limit_threshold ~count
    ~interval_sec () : rule__rate_limit_options__rate_limit_threshold
    =
  { count; interval_sec }

let rule__rate_limit_options ?ban_duration_sec ?enforce_on_key
    ?enforce_on_key_name ?(ban_threshold = [])
    ?(exceed_redirect_options = []) ~conform_action ~exceed_action
    ~rate_limit_threshold () : rule__rate_limit_options =
  {
    ban_duration_sec;
    conform_action;
    enforce_on_key;
    enforce_on_key_name;
    exceed_action;
    ban_threshold;
    exceed_redirect_options;
    rate_limit_threshold;
  }

let rule__redirect_options ?target ~type_ () : rule__redirect_options
    =
  { target; type_ }

let rule ?description ?preview ?(header_action = [])
    ?(rate_limit_options = []) ?(redirect_options = []) ~action
    ~priority ~match_ () : rule =
  {
    action;
    description;
    preview;
    priority;
    header_action;
    match_;
    rate_limit_options;
    redirect_options;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_security_policy ?description ?id ?project ?type_
    ?(adaptive_protection_config = [])
    ?(advanced_options_config = []) ?(recaptcha_options_config = [])
    ?timeouts ~name ~rule () : google_compute_security_policy =
  {
    description;
    id;
    name;
    project;
    type_;
    adaptive_protection_config;
    advanced_options_config;
    recaptcha_options_config;
    rule;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  type_ : string prop;
}

let make ?description ?id ?project ?type_
    ?(adaptive_protection_config = [])
    ?(advanced_options_config = []) ?(recaptcha_options_config = [])
    ?timeouts ~name ~rule __id =
  let __type = "google_compute_security_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
        (google_compute_security_policy ?description ?id ?project
           ?type_ ~adaptive_protection_config
           ~advanced_options_config ~recaptcha_options_config
           ?timeouts ~name ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?type_
    ?(adaptive_protection_config = [])
    ?(advanced_options_config = []) ?(recaptcha_options_config = [])
    ?timeouts ~name ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?type_ ~adaptive_protection_config
      ~advanced_options_config ~recaptcha_options_config ?timeouts
      ~name ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
