(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type actions__request_header_action = {
  header_action : string prop;
  header_name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__request_header_action) -> ()

let yojson_of_actions__request_header_action =
  (function
   | {
       header_action = v_header_action;
       header_name = v_header_name;
       value = v_value;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_action in
         ("header_action", arg) :: bnds
       in
       `Assoc bnds
    : actions__request_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__request_header_action

[@@@deriving.end]

type actions__response_header_action = {
  header_action : string prop;
  header_name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__response_header_action) -> ()

let yojson_of_actions__response_header_action =
  (function
   | {
       header_action = v_header_action;
       header_name = v_header_name;
       value = v_value;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_action in
         ("header_action", arg) :: bnds
       in
       `Assoc bnds
    : actions__response_header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__response_header_action

[@@@deriving.end]

type actions__route_configuration_override_action = {
  cache_behavior : string prop option; [@option]
  cache_duration : string prop option; [@option]
  cdn_frontdoor_origin_group_id : string prop option; [@option]
  compression_enabled : bool prop option; [@option]
  forwarding_protocol : string prop option; [@option]
  query_string_caching_behavior : string prop option; [@option]
  query_string_parameters : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__route_configuration_override_action) -> ()

let yojson_of_actions__route_configuration_override_action =
  (function
   | {
       cache_behavior = v_cache_behavior;
       cache_duration = v_cache_duration;
       cdn_frontdoor_origin_group_id =
         v_cdn_frontdoor_origin_group_id;
       compression_enabled = v_compression_enabled;
       forwarding_protocol = v_forwarding_protocol;
       query_string_caching_behavior =
         v_query_string_caching_behavior;
       query_string_parameters = v_query_string_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_string_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "query_string_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string_caching_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string_caching_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         match v_forwarding_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forwarding_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "compression_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdn_frontdoor_origin_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdn_frontdoor_origin_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_behavior", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__route_configuration_override_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__route_configuration_override_action

[@@@deriving.end]

type actions__url_redirect_action = {
  destination_fragment : string prop option; [@option]
  destination_hostname : string prop;
  destination_path : string prop option; [@option]
  query_string : string prop option; [@option]
  redirect_protocol : string prop option; [@option]
  redirect_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__url_redirect_action) -> ()

let yojson_of_actions__url_redirect_action =
  (function
   | {
       destination_fragment = v_destination_fragment;
       destination_hostname = v_destination_hostname;
       destination_path = v_destination_path;
       query_string = v_query_string;
       redirect_protocol = v_redirect_protocol;
       redirect_type = v_redirect_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_type in
         ("redirect_type", arg) :: bnds
       in
       let bnds =
         match v_redirect_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_hostname
         in
         ("destination_hostname", arg) :: bnds
       in
       let bnds =
         match v_destination_fragment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_fragment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : actions__url_redirect_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__url_redirect_action

[@@@deriving.end]

type actions__url_rewrite_action = {
  destination : string prop;
  preserve_unmatched_path : bool prop option; [@option]
  source_pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions__url_rewrite_action) -> ()

let yojson_of_actions__url_rewrite_action =
  (function
   | {
       destination = v_destination;
       preserve_unmatched_path = v_preserve_unmatched_path;
       source_pattern = v_source_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_pattern
         in
         ("source_pattern", arg) :: bnds
       in
       let bnds =
         match v_preserve_unmatched_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preserve_unmatched_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : actions__url_rewrite_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions__url_rewrite_action

[@@@deriving.end]

type actions = {
  request_header_action : actions__request_header_action list;
      [@default []] [@yojson_drop_default ( = )]
  response_header_action : actions__response_header_action list;
      [@default []] [@yojson_drop_default ( = )]
  route_configuration_override_action :
    actions__route_configuration_override_action list;
      [@default []] [@yojson_drop_default ( = )]
  url_redirect_action : actions__url_redirect_action list;
      [@default []] [@yojson_drop_default ( = )]
  url_rewrite_action : actions__url_rewrite_action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : actions) -> ()

let yojson_of_actions =
  (function
   | {
       request_header_action = v_request_header_action;
       response_header_action = v_response_header_action;
       route_configuration_override_action =
         v_route_configuration_override_action;
       url_redirect_action = v_url_redirect_action;
       url_rewrite_action = v_url_rewrite_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_url_rewrite_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__url_rewrite_action)
               v_url_rewrite_action
           in
           let bnd = "url_rewrite_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_url_redirect_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__url_redirect_action)
               v_url_redirect_action
           in
           let bnd = "url_redirect_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_route_configuration_override_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__route_configuration_override_action)
               v_route_configuration_override_action
           in
           let bnd = "route_configuration_override_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_response_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_actions__response_header_action)
               v_response_header_action
           in
           let bnd = "response_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_header_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_actions__request_header_action)
               v_request_header_action
           in
           let bnd = "request_header_action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_actions

[@@@deriving.end]

type conditions__client_port_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__client_port_condition) -> ()

let yojson_of_conditions__client_port_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__client_port_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__client_port_condition

[@@@deriving.end]

type conditions__cookies_condition = {
  cookie_name : string prop;
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__cookies_condition) -> ()

let yojson_of_conditions__cookies_condition =
  (function
   | {
       cookie_name = v_cookie_name;
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cookie_name in
         ("cookie_name", arg) :: bnds
       in
       `Assoc bnds
    : conditions__cookies_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__cookies_condition

[@@@deriving.end]

type conditions__host_name_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__host_name_condition) -> ()

let yojson_of_conditions__host_name_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__host_name_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__host_name_condition

[@@@deriving.end]

type conditions__http_version_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__http_version_condition) -> ()

let yojson_of_conditions__http_version_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__http_version_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__http_version_condition

[@@@deriving.end]

type conditions__is_device_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__is_device_condition) -> ()

let yojson_of_conditions__is_device_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__is_device_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__is_device_condition

[@@@deriving.end]

type conditions__post_args_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  post_args_name : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__post_args_condition) -> ()

let yojson_of_conditions__post_args_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       post_args_name = v_post_args_name;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_post_args_name
         in
         ("post_args_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__post_args_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__post_args_condition

[@@@deriving.end]

type conditions__query_string_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__query_string_condition) -> ()

let yojson_of_conditions__query_string_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__query_string_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__query_string_condition

[@@@deriving.end]

type conditions__remote_address_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__remote_address_condition) -> ()

let yojson_of_conditions__remote_address_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__remote_address_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__remote_address_condition

[@@@deriving.end]

type conditions__request_body_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__request_body_condition) -> ()

let yojson_of_conditions__request_body_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__request_body_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__request_body_condition

[@@@deriving.end]

type conditions__request_header_condition = {
  header_name : string prop;
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__request_header_condition) -> ()

let yojson_of_conditions__request_header_condition =
  (function
   | {
       header_name = v_header_name;
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : conditions__request_header_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__request_header_condition

[@@@deriving.end]

type conditions__request_method_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__request_method_condition) -> ()

let yojson_of_conditions__request_method_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__request_method_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__request_method_condition

[@@@deriving.end]

type conditions__request_scheme_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__request_scheme_condition) -> ()

let yojson_of_conditions__request_scheme_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__request_scheme_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__request_scheme_condition

[@@@deriving.end]

type conditions__request_uri_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__request_uri_condition) -> ()

let yojson_of_conditions__request_uri_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__request_uri_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__request_uri_condition

[@@@deriving.end]

type conditions__server_port_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__server_port_condition) -> ()

let yojson_of_conditions__server_port_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__server_port_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__server_port_condition

[@@@deriving.end]

type conditions__socket_address_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__socket_address_condition) -> ()

let yojson_of_conditions__socket_address_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__socket_address_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__socket_address_condition

[@@@deriving.end]

type conditions__ssl_protocol_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__ssl_protocol_condition) -> ()

let yojson_of_conditions__ssl_protocol_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__ssl_protocol_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__ssl_protocol_condition

[@@@deriving.end]

type conditions__url_file_extension_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__url_file_extension_condition) -> ()

let yojson_of_conditions__url_file_extension_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions__url_file_extension_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__url_file_extension_condition

[@@@deriving.end]

type conditions__url_filename_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__url_filename_condition) -> ()

let yojson_of_conditions__url_filename_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__url_filename_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__url_filename_condition

[@@@deriving.end]

type conditions__url_path_condition = {
  match_values : string prop list option; [@option]
  negate_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions__url_path_condition) -> ()

let yojson_of_conditions__url_path_condition =
  (function
   | {
       match_values = v_match_values;
       negate_condition = v_negate_condition;
       operator = v_operator;
       transforms = v_transforms;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transforms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transforms", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "match_values", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : conditions__url_path_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions__url_path_condition

[@@@deriving.end]

type conditions = {
  client_port_condition : conditions__client_port_condition list;
      [@default []] [@yojson_drop_default ( = )]
  cookies_condition : conditions__cookies_condition list;
      [@default []] [@yojson_drop_default ( = )]
  host_name_condition : conditions__host_name_condition list;
      [@default []] [@yojson_drop_default ( = )]
  http_version_condition : conditions__http_version_condition list;
      [@default []] [@yojson_drop_default ( = )]
  is_device_condition : conditions__is_device_condition list;
      [@default []] [@yojson_drop_default ( = )]
  post_args_condition : conditions__post_args_condition list;
      [@default []] [@yojson_drop_default ( = )]
  query_string_condition : conditions__query_string_condition list;
      [@default []] [@yojson_drop_default ( = )]
  remote_address_condition :
    conditions__remote_address_condition list;
      [@default []] [@yojson_drop_default ( = )]
  request_body_condition : conditions__request_body_condition list;
      [@default []] [@yojson_drop_default ( = )]
  request_header_condition :
    conditions__request_header_condition list;
      [@default []] [@yojson_drop_default ( = )]
  request_method_condition :
    conditions__request_method_condition list;
      [@default []] [@yojson_drop_default ( = )]
  request_scheme_condition :
    conditions__request_scheme_condition list;
      [@default []] [@yojson_drop_default ( = )]
  request_uri_condition : conditions__request_uri_condition list;
      [@default []] [@yojson_drop_default ( = )]
  server_port_condition : conditions__server_port_condition list;
      [@default []] [@yojson_drop_default ( = )]
  socket_address_condition :
    conditions__socket_address_condition list;
      [@default []] [@yojson_drop_default ( = )]
  ssl_protocol_condition : conditions__ssl_protocol_condition list;
      [@default []] [@yojson_drop_default ( = )]
  url_file_extension_condition :
    conditions__url_file_extension_condition list;
      [@default []] [@yojson_drop_default ( = )]
  url_filename_condition : conditions__url_filename_condition list;
      [@default []] [@yojson_drop_default ( = )]
  url_path_condition : conditions__url_path_condition list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conditions) -> ()

let yojson_of_conditions =
  (function
   | {
       client_port_condition = v_client_port_condition;
       cookies_condition = v_cookies_condition;
       host_name_condition = v_host_name_condition;
       http_version_condition = v_http_version_condition;
       is_device_condition = v_is_device_condition;
       post_args_condition = v_post_args_condition;
       query_string_condition = v_query_string_condition;
       remote_address_condition = v_remote_address_condition;
       request_body_condition = v_request_body_condition;
       request_header_condition = v_request_header_condition;
       request_method_condition = v_request_method_condition;
       request_scheme_condition = v_request_scheme_condition;
       request_uri_condition = v_request_uri_condition;
       server_port_condition = v_server_port_condition;
       socket_address_condition = v_socket_address_condition;
       ssl_protocol_condition = v_ssl_protocol_condition;
       url_file_extension_condition = v_url_file_extension_condition;
       url_filename_condition = v_url_filename_condition;
       url_path_condition = v_url_path_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_url_path_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions__url_path_condition)
               v_url_path_condition
           in
           let bnd = "url_path_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_url_filename_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__url_filename_condition)
               v_url_filename_condition
           in
           let bnd = "url_filename_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_url_file_extension_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__url_file_extension_condition)
               v_url_file_extension_condition
           in
           let bnd = "url_file_extension_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ssl_protocol_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__ssl_protocol_condition)
               v_ssl_protocol_condition
           in
           let bnd = "ssl_protocol_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_socket_address_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__socket_address_condition)
               v_socket_address_condition
           in
           let bnd = "socket_address_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_server_port_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__server_port_condition)
               v_server_port_condition
           in
           let bnd = "server_port_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_uri_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__request_uri_condition)
               v_request_uri_condition
           in
           let bnd = "request_uri_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_scheme_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__request_scheme_condition)
               v_request_scheme_condition
           in
           let bnd = "request_scheme_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_method_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__request_method_condition)
               v_request_method_condition
           in
           let bnd = "request_method_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_header_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__request_header_condition)
               v_request_header_condition
           in
           let bnd = "request_header_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_request_body_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__request_body_condition)
               v_request_body_condition
           in
           let bnd = "request_body_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_remote_address_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__remote_address_condition)
               v_remote_address_condition
           in
           let bnd = "remote_address_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_query_string_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__query_string_condition)
               v_query_string_condition
           in
           let bnd = "query_string_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_post_args_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__post_args_condition)
               v_post_args_condition
           in
           let bnd = "post_args_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_is_device_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__is_device_condition)
               v_is_device_condition
           in
           let bnd = "is_device_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_http_version_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__http_version_condition)
               v_http_version_condition
           in
           let bnd = "http_version_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_host_name_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__host_name_condition)
               v_host_name_condition
           in
           let bnd = "host_name_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_cookies_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions__cookies_condition)
               v_cookies_condition
           in
           let bnd = "cookies_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_port_condition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conditions__client_port_condition)
               v_client_port_condition
           in
           let bnd = "client_port_condition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conditions

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_cdn_frontdoor_rule = {
  behavior_on_match : string prop option; [@option]
  cdn_frontdoor_rule_set_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  order : float prop;
  actions : actions list; [@default []] [@yojson_drop_default ( = )]
  conditions : conditions list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_rule) -> ()

let yojson_of_azurerm_cdn_frontdoor_rule =
  (function
   | {
       behavior_on_match = v_behavior_on_match;
       cdn_frontdoor_rule_set_id = v_cdn_frontdoor_rule_set_id;
       id = v_id;
       name = v_name;
       order = v_order;
       actions = v_actions;
       conditions = v_conditions;
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
         if [] = v_conditions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conditions) v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_actions then bnds
         else
           let arg = (yojson_of_list yojson_of_actions) v_actions in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_cdn_frontdoor_rule_set_id
         in
         ("cdn_frontdoor_rule_set_id", arg) :: bnds
       in
       let bnds =
         match v_behavior_on_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "behavior_on_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_rule

[@@@deriving.end]

let actions__request_header_action ?value ~header_action ~header_name
    () : actions__request_header_action =
  { header_action; header_name; value }

let actions__response_header_action ?value ~header_action
    ~header_name () : actions__response_header_action =
  { header_action; header_name; value }

let actions__route_configuration_override_action ?cache_behavior
    ?cache_duration ?cdn_frontdoor_origin_group_id
    ?compression_enabled ?forwarding_protocol
    ?query_string_caching_behavior ?query_string_parameters () :
    actions__route_configuration_override_action =
  {
    cache_behavior;
    cache_duration;
    cdn_frontdoor_origin_group_id;
    compression_enabled;
    forwarding_protocol;
    query_string_caching_behavior;
    query_string_parameters;
  }

let actions__url_redirect_action ?destination_fragment
    ?destination_path ?query_string ?redirect_protocol
    ~destination_hostname ~redirect_type () :
    actions__url_redirect_action =
  {
    destination_fragment;
    destination_hostname;
    destination_path;
    query_string;
    redirect_protocol;
    redirect_type;
  }

let actions__url_rewrite_action ?preserve_unmatched_path ~destination
    ~source_pattern () : actions__url_rewrite_action =
  { destination; preserve_unmatched_path; source_pattern }

let actions ?(request_header_action = [])
    ?(response_header_action = [])
    ?(route_configuration_override_action = [])
    ?(url_redirect_action = []) ?(url_rewrite_action = []) () :
    actions =
  {
    request_header_action;
    response_header_action;
    route_configuration_override_action;
    url_redirect_action;
    url_rewrite_action;
  }

let conditions__client_port_condition ?match_values ?negate_condition
    ~operator () : conditions__client_port_condition =
  { match_values; negate_condition; operator }

let conditions__cookies_condition ?match_values ?negate_condition
    ?transforms ~cookie_name ~operator () :
    conditions__cookies_condition =
  {
    cookie_name;
    match_values;
    negate_condition;
    operator;
    transforms;
  }

let conditions__host_name_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__host_name_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__http_version_condition ?negate_condition ?operator
    ~match_values () : conditions__http_version_condition =
  { match_values; negate_condition; operator }

let conditions__is_device_condition ?match_values ?negate_condition
    ?operator () : conditions__is_device_condition =
  { match_values; negate_condition; operator }

let conditions__post_args_condition ?match_values ?negate_condition
    ?transforms ~operator ~post_args_name () :
    conditions__post_args_condition =
  {
    match_values;
    negate_condition;
    operator;
    post_args_name;
    transforms;
  }

let conditions__query_string_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    conditions__query_string_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__remote_address_condition ?match_values
    ?negate_condition ?operator () :
    conditions__remote_address_condition =
  { match_values; negate_condition; operator }

let conditions__request_body_condition ?negate_condition ?transforms
    ~match_values ~operator () : conditions__request_body_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__request_header_condition ?match_values
    ?negate_condition ?transforms ~header_name ~operator () :
    conditions__request_header_condition =
  {
    header_name;
    match_values;
    negate_condition;
    operator;
    transforms;
  }

let conditions__request_method_condition ?negate_condition ?operator
    ~match_values () : conditions__request_method_condition =
  { match_values; negate_condition; operator }

let conditions__request_scheme_condition ?match_values
    ?negate_condition ?operator () :
    conditions__request_scheme_condition =
  { match_values; negate_condition; operator }

let conditions__request_uri_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__request_uri_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__server_port_condition ?negate_condition ~match_values
    ~operator () : conditions__server_port_condition =
  { match_values; negate_condition; operator }

let conditions__socket_address_condition ?match_values
    ?negate_condition ?operator () :
    conditions__socket_address_condition =
  { match_values; negate_condition; operator }

let conditions__ssl_protocol_condition ?negate_condition ?operator
    ~match_values () : conditions__ssl_protocol_condition =
  { match_values; negate_condition; operator }

let conditions__url_file_extension_condition ?negate_condition
    ?transforms ~match_values ~operator () :
    conditions__url_file_extension_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__url_filename_condition ?match_values
    ?negate_condition ?transforms ~operator () :
    conditions__url_filename_condition =
  { match_values; negate_condition; operator; transforms }

let conditions__url_path_condition ?match_values ?negate_condition
    ?transforms ~operator () : conditions__url_path_condition =
  { match_values; negate_condition; operator; transforms }

let conditions ?(client_port_condition = [])
    ?(cookies_condition = []) ?(host_name_condition = [])
    ?(http_version_condition = []) ?(is_device_condition = [])
    ?(post_args_condition = []) ?(query_string_condition = [])
    ?(remote_address_condition = []) ?(request_body_condition = [])
    ?(request_header_condition = []) ?(request_method_condition = [])
    ?(request_scheme_condition = []) ?(request_uri_condition = [])
    ?(server_port_condition = []) ?(socket_address_condition = [])
    ?(ssl_protocol_condition = [])
    ?(url_file_extension_condition = [])
    ?(url_filename_condition = []) ?(url_path_condition = []) () :
    conditions =
  {
    client_port_condition;
    cookies_condition;
    host_name_condition;
    http_version_condition;
    is_device_condition;
    post_args_condition;
    query_string_condition;
    remote_address_condition;
    request_body_condition;
    request_header_condition;
    request_method_condition;
    request_scheme_condition;
    request_uri_condition;
    server_port_condition;
    socket_address_condition;
    ssl_protocol_condition;
    url_file_extension_condition;
    url_filename_condition;
    url_path_condition;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_rule ?behavior_on_match ?id
    ?(conditions = []) ?timeouts ~cdn_frontdoor_rule_set_id ~name
    ~order ~actions () : azurerm_cdn_frontdoor_rule =
  {
    behavior_on_match;
    cdn_frontdoor_rule_set_id;
    id;
    name;
    order;
    actions;
    conditions;
    timeouts;
  }

type t = {
  tf_name : string;
  behavior_on_match : string prop;
  cdn_frontdoor_rule_set_id : string prop;
  cdn_frontdoor_rule_set_name : string prop;
  id : string prop;
  name : string prop;
  order : float prop;
}

let make ?behavior_on_match ?id ?(conditions = []) ?timeouts
    ~cdn_frontdoor_rule_set_id ~name ~order ~actions __id =
  let __type = "azurerm_cdn_frontdoor_rule" in
  let __attrs =
    ({
       tf_name = __id;
       behavior_on_match =
         Prop.computed __type __id "behavior_on_match";
       cdn_frontdoor_rule_set_id =
         Prop.computed __type __id "cdn_frontdoor_rule_set_id";
       cdn_frontdoor_rule_set_name =
         Prop.computed __type __id "cdn_frontdoor_rule_set_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       order = Prop.computed __type __id "order";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_rule
        (azurerm_cdn_frontdoor_rule ?behavior_on_match ?id
           ~conditions ?timeouts ~cdn_frontdoor_rule_set_id ~name
           ~order ~actions ());
    attrs = __attrs;
  }

let register ?tf_module ?behavior_on_match ?id ?(conditions = [])
    ?timeouts ~cdn_frontdoor_rule_set_id ~name ~order ~actions __id =
  let (r : _ Tf_core.resource) =
    make ?behavior_on_match ?id ~conditions ?timeouts
      ~cdn_frontdoor_rule_set_id ~name ~order ~actions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
