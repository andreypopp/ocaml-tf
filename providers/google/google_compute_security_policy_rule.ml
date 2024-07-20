(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type match__config = {
  src_ip_ranges : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__config) -> ()

let yojson_of_match__config =
  (function
   | { src_ip_ranges = v_src_ip_ranges } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_src_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_ip_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__config

[@@@deriving.end]

type match__expr = { expression : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : match__expr) -> ()

let yojson_of_match__expr =
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
    : match__expr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__expr

[@@@deriving.end]

type match__expr_options__recaptcha_options = {
  action_token_site_keys : string prop list option; [@option]
  session_token_site_keys : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__expr_options__recaptcha_options) -> ()

let yojson_of_match__expr_options__recaptcha_options =
  (function
   | {
       action_token_site_keys = v_action_token_site_keys;
       session_token_site_keys = v_session_token_site_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_session_token_site_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "session_token_site_keys", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action_token_site_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "action_token_site_keys", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__expr_options__recaptcha_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__expr_options__recaptcha_options

[@@@deriving.end]

type match__expr_options = {
  recaptcha_options : match__expr_options__recaptcha_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__expr_options) -> ()

let yojson_of_match__expr_options =
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
                yojson_of_match__expr_options__recaptcha_options)
               v_recaptcha_options
           in
           let bnd = "recaptcha_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : match__expr_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__expr_options

[@@@deriving.end]

type match_ = {
  versioned_expr : string prop option; [@option]
  config : match__config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expr : match__expr list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  expr_options : match__expr_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match_) -> ()

let yojson_of_match_ =
  (function
   | {
       versioned_expr = v_versioned_expr;
       config = v_config;
       expr = v_expr;
       expr_options = v_expr_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_expr_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_match__expr_options)
               v_expr_options
           in
           let bnd = "expr_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_expr then bnds
         else
           let arg = (yojson_of_list yojson_of_match__expr) v_expr in
           let bnd = "expr", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_match__config) v_config
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
    : match_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match_

[@@@deriving.end]

type preconfigured_waf_config__exclusion__request_cookie = {
  operator : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : preconfigured_waf_config__exclusion__request_cookie) -> ()

let yojson_of_preconfigured_waf_config__exclusion__request_cookie =
  (function
   | { operator = v_operator; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config__exclusion__request_cookie ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preconfigured_waf_config__exclusion__request_cookie

[@@@deriving.end]

type preconfigured_waf_config__exclusion__request_header = {
  operator : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : preconfigured_waf_config__exclusion__request_header) -> ()

let yojson_of_preconfigured_waf_config__exclusion__request_header =
  (function
   | { operator = v_operator; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config__exclusion__request_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preconfigured_waf_config__exclusion__request_header

[@@@deriving.end]

type preconfigured_waf_config__exclusion__request_query_param = {
  operator : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : preconfigured_waf_config__exclusion__request_query_param) ->
  ()

let yojson_of_preconfigured_waf_config__exclusion__request_query_param
    =
  (function
   | { operator = v_operator; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config__exclusion__request_query_param ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_preconfigured_waf_config__exclusion__request_query_param

[@@@deriving.end]

type preconfigured_waf_config__exclusion__request_uri = {
  operator : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : preconfigured_waf_config__exclusion__request_uri) -> ()

let yojson_of_preconfigured_waf_config__exclusion__request_uri =
  (function
   | { operator = v_operator; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config__exclusion__request_uri ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preconfigured_waf_config__exclusion__request_uri

[@@@deriving.end]

type preconfigured_waf_config__exclusion = {
  target_rule_ids : string prop list option; [@option]
  target_rule_set : string prop;
  request_cookie :
    preconfigured_waf_config__exclusion__request_cookie list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_header :
    preconfigured_waf_config__exclusion__request_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_query_param :
    preconfigured_waf_config__exclusion__request_query_param list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_uri : preconfigured_waf_config__exclusion__request_uri list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preconfigured_waf_config__exclusion) -> ()

let yojson_of_preconfigured_waf_config__exclusion =
  (function
   | {
       target_rule_ids = v_target_rule_ids;
       target_rule_set = v_target_rule_set;
       request_cookie = v_request_cookie;
       request_header = v_request_header;
       request_query_param = v_request_query_param;
       request_uri = v_request_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_request_uri then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preconfigured_waf_config__exclusion__request_uri)
               v_request_uri
           in
           let bnd = "request_uri", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_query_param then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preconfigured_waf_config__exclusion__request_query_param)
               v_request_query_param
           in
           let bnd = "request_query_param", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preconfigured_waf_config__exclusion__request_header)
               v_request_header
           in
           let bnd = "request_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_cookie then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preconfigured_waf_config__exclusion__request_cookie)
               v_request_cookie
           in
           let bnd = "request_cookie", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_rule_set
         in
         ("target_rule_set", arg) :: bnds
       in
       let bnds =
         match v_target_rule_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_rule_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config__exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preconfigured_waf_config__exclusion

[@@@deriving.end]

type preconfigured_waf_config = {
  exclusion : preconfigured_waf_config__exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preconfigured_waf_config) -> ()

let yojson_of_preconfigured_waf_config =
  (function
   | { exclusion = v_exclusion } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preconfigured_waf_config__exclusion)
               v_exclusion
           in
           let bnd = "exclusion", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : preconfigured_waf_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preconfigured_waf_config

[@@@deriving.end]

type rate_limit_options__ban_threshold = {
  count : float prop option; [@option]
  interval_sec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limit_options__ban_threshold) -> ()

let yojson_of_rate_limit_options__ban_threshold =
  (function
   | { count = v_count; interval_sec = v_interval_sec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interval_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rate_limit_options__ban_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limit_options__ban_threshold

[@@@deriving.end]

type rate_limit_options__enforce_on_key_configs = {
  enforce_on_key_name : string prop option; [@option]
  enforce_on_key_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limit_options__enforce_on_key_configs) -> ()

let yojson_of_rate_limit_options__enforce_on_key_configs =
  (function
   | {
       enforce_on_key_name = v_enforce_on_key_name;
       enforce_on_key_type = v_enforce_on_key_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enforce_on_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce_on_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce_on_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforce_on_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rate_limit_options__enforce_on_key_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limit_options__enforce_on_key_configs

[@@@deriving.end]

type rate_limit_options__exceed_redirect_options = {
  target : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limit_options__exceed_redirect_options) -> ()

let yojson_of_rate_limit_options__exceed_redirect_options =
  (function
   | { target = v_target; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rate_limit_options__exceed_redirect_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limit_options__exceed_redirect_options

[@@@deriving.end]

type rate_limit_options__rate_limit_threshold = {
  count : float prop option; [@option]
  interval_sec : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limit_options__rate_limit_threshold) -> ()

let yojson_of_rate_limit_options__rate_limit_threshold =
  (function
   | { count = v_count; interval_sec = v_interval_sec } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interval_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rate_limit_options__rate_limit_threshold ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limit_options__rate_limit_threshold

[@@@deriving.end]

type rate_limit_options = {
  ban_duration_sec : float prop option; [@option]
  conform_action : string prop option; [@option]
  enforce_on_key : string prop option; [@option]
  enforce_on_key_name : string prop option; [@option]
  exceed_action : string prop option; [@option]
  ban_threshold : rate_limit_options__ban_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  enforce_on_key_configs :
    rate_limit_options__enforce_on_key_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  exceed_redirect_options :
    rate_limit_options__exceed_redirect_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rate_limit_threshold :
    rate_limit_options__rate_limit_threshold list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rate_limit_options) -> ()

let yojson_of_rate_limit_options =
  (function
   | {
       ban_duration_sec = v_ban_duration_sec;
       conform_action = v_conform_action;
       enforce_on_key = v_enforce_on_key;
       enforce_on_key_name = v_enforce_on_key_name;
       exceed_action = v_exceed_action;
       ban_threshold = v_ban_threshold;
       enforce_on_key_configs = v_enforce_on_key_configs;
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
                yojson_of_rate_limit_options__rate_limit_threshold)
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
                yojson_of_rate_limit_options__exceed_redirect_options)
               v_exceed_redirect_options
           in
           let bnd = "exceed_redirect_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_enforce_on_key_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rate_limit_options__enforce_on_key_configs)
               v_enforce_on_key_configs
           in
           let bnd = "enforce_on_key_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ban_threshold then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rate_limit_options__ban_threshold)
               v_ban_threshold
           in
           let bnd = "ban_threshold", arg in
           bnd :: bnds
       in
       let bnds =
         match v_exceed_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exceed_action", arg in
             bnd :: bnds
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
         match v_conform_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "conform_action", arg in
             bnd :: bnds
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
    : rate_limit_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rate_limit_options

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

type google_compute_security_policy_rule = {
  action : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  preview : bool prop option; [@option]
  priority : float prop;
  project : string prop option; [@option]
  security_policy : string prop;
  match_ : match_ list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  preconfigured_waf_config : preconfigured_waf_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rate_limit_options : rate_limit_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_security_policy_rule) -> ()

let yojson_of_google_compute_security_policy_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       id = v_id;
       preview = v_preview;
       priority = v_priority;
       project = v_project;
       security_policy = v_security_policy;
       match_ = v_match_;
       preconfigured_waf_config = v_preconfigured_waf_config;
       rate_limit_options = v_rate_limit_options;
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
         if Stdlib.( = ) [] v_rate_limit_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rate_limit_options)
               v_rate_limit_options
           in
           let bnd = "rate_limit_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_preconfigured_waf_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_preconfigured_waf_config)
               v_preconfigured_waf_config
           in
           let bnd = "preconfigured_waf_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg = (yojson_of_list yojson_of_match_) v_match_ in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_policy
         in
         ("security_policy", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_security_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_security_policy_rule

[@@@deriving.end]

let match__config ?src_ip_ranges () : match__config =
  { src_ip_ranges }

let match__expr ~expression () : match__expr = { expression }

let match__expr_options__recaptcha_options ?action_token_site_keys
    ?session_token_site_keys () :
    match__expr_options__recaptcha_options =
  { action_token_site_keys; session_token_site_keys }

let match__expr_options ~recaptcha_options () : match__expr_options =
  { recaptcha_options }

let match_ ?versioned_expr ?(config = []) ?(expr = [])
    ?(expr_options = []) () : match_ =
  { versioned_expr; config; expr; expr_options }

let preconfigured_waf_config__exclusion__request_cookie ?value
    ~operator () :
    preconfigured_waf_config__exclusion__request_cookie =
  { operator; value }

let preconfigured_waf_config__exclusion__request_header ?value
    ~operator () :
    preconfigured_waf_config__exclusion__request_header =
  { operator; value }

let preconfigured_waf_config__exclusion__request_query_param ?value
    ~operator () :
    preconfigured_waf_config__exclusion__request_query_param =
  { operator; value }

let preconfigured_waf_config__exclusion__request_uri ?value ~operator
    () : preconfigured_waf_config__exclusion__request_uri =
  { operator; value }

let preconfigured_waf_config__exclusion ?target_rule_ids
    ?(request_cookie = []) ?(request_header = [])
    ?(request_query_param = []) ?(request_uri = []) ~target_rule_set
    () : preconfigured_waf_config__exclusion =
  {
    target_rule_ids;
    target_rule_set;
    request_cookie;
    request_header;
    request_query_param;
    request_uri;
  }

let preconfigured_waf_config ?(exclusion = []) () :
    preconfigured_waf_config =
  { exclusion }

let rate_limit_options__ban_threshold ?count ?interval_sec () :
    rate_limit_options__ban_threshold =
  { count; interval_sec }

let rate_limit_options__enforce_on_key_configs ?enforce_on_key_name
    ?enforce_on_key_type () :
    rate_limit_options__enforce_on_key_configs =
  { enforce_on_key_name; enforce_on_key_type }

let rate_limit_options__exceed_redirect_options ?target ?type_ () :
    rate_limit_options__exceed_redirect_options =
  { target; type_ }

let rate_limit_options__rate_limit_threshold ?count ?interval_sec ()
    : rate_limit_options__rate_limit_threshold =
  { count; interval_sec }

let rate_limit_options ?ban_duration_sec ?conform_action
    ?enforce_on_key ?enforce_on_key_name ?exceed_action
    ?(ban_threshold = []) ?(enforce_on_key_configs = [])
    ?(exceed_redirect_options = []) ?(rate_limit_threshold = []) () :
    rate_limit_options =
  {
    ban_duration_sec;
    conform_action;
    enforce_on_key;
    enforce_on_key_name;
    exceed_action;
    ban_threshold;
    enforce_on_key_configs;
    exceed_redirect_options;
    rate_limit_threshold;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_security_policy_rule ?description ?id ?preview
    ?project ?(match_ = []) ?(preconfigured_waf_config = [])
    ?(rate_limit_options = []) ?timeouts ~action ~priority
    ~security_policy () : google_compute_security_policy_rule =
  {
    action;
    description;
    id;
    preview;
    priority;
    project;
    security_policy;
    match_;
    preconfigured_waf_config;
    rate_limit_options;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  description : string prop;
  id : string prop;
  preview : bool prop;
  priority : float prop;
  project : string prop;
  security_policy : string prop;
}

let make ?description ?id ?preview ?project ?(match_ = [])
    ?(preconfigured_waf_config = []) ?(rate_limit_options = [])
    ?timeouts ~action ~priority ~security_policy __id =
  let __type = "google_compute_security_policy_rule" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       preview = Prop.computed __type __id "preview";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       security_policy = Prop.computed __type __id "security_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_security_policy_rule
        (google_compute_security_policy_rule ?description ?id
           ?preview ?project ~match_ ~preconfigured_waf_config
           ~rate_limit_options ?timeouts ~action ~priority
           ~security_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?preview ?project
    ?(match_ = []) ?(preconfigured_waf_config = [])
    ?(rate_limit_options = []) ?timeouts ~action ~priority
    ~security_policy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?preview ?project ~match_
      ~preconfigured_waf_config ~rate_limit_options ?timeouts ~action
      ~priority ~security_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
