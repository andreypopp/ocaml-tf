(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type log_config = {
  enable : bool prop option; [@option]
  sample_rate : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : log_config) -> ()

let yojson_of_log_config =
  (function
   | { enable = v_enable; sample_rate = v_sample_rate } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_rate", arg in
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
    : log_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_log_config

[@@@deriving.end]

type routing__host_rule = {
  description : string prop option; [@option]
  hosts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path_matcher : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__host_rule) -> ()

let yojson_of_routing__host_rule =
  (function
   | {
       description = v_description;
       hosts = v_hosts;
       path_matcher = v_path_matcher;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_matcher in
         ("path_matcher", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hosts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_hosts
           in
           let bnd = "hosts", arg in
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
    : routing__host_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__host_rule

[@@@deriving.end]

type routing__path_matcher__route_rule__header_action__request_header_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__header_action__request_header_to_add) ->
  ()

let yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace", arg in
             bnd :: bnds
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
    : routing__path_matcher__route_rule__header_action__request_header_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_add

[@@@deriving.end]

type routing__path_matcher__route_rule__header_action__request_header_to_remove = {
  header_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__header_action__request_header_to_remove) ->
  ()

let yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_remove
    =
  (function
   | { header_name = v_header_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__header_action__request_header_to_remove ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_remove

[@@@deriving.end]

type routing__path_matcher__route_rule__header_action__response_header_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__header_action__response_header_to_add) ->
  ()

let yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace", arg in
             bnd :: bnds
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
    : routing__path_matcher__route_rule__header_action__response_header_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_add

[@@@deriving.end]

type routing__path_matcher__route_rule__header_action__response_header_to_remove = {
  header_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__header_action__response_header_to_remove) ->
  ()

let yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_remove
    =
  (function
   | { header_name = v_header_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__header_action__response_header_to_remove ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_remove

[@@@deriving.end]

type routing__path_matcher__route_rule__header_action = {
  request_header_to_add :
    routing__path_matcher__route_rule__header_action__request_header_to_add
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  request_header_to_remove :
    routing__path_matcher__route_rule__header_action__request_header_to_remove
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response_header_to_add :
    routing__path_matcher__route_rule__header_action__response_header_to_add
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response_header_to_remove :
    routing__path_matcher__route_rule__header_action__response_header_to_remove
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : routing__path_matcher__route_rule__header_action) -> ()

let yojson_of_routing__path_matcher__route_rule__header_action =
  (function
   | {
       request_header_to_add = v_request_header_to_add;
       request_header_to_remove = v_request_header_to_remove;
       response_header_to_add = v_response_header_to_add;
       response_header_to_remove = v_response_header_to_remove;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_response_header_to_remove then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_remove)
               v_response_header_to_remove
           in
           let bnd = "response_header_to_remove", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_response_header_to_add then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__header_action__response_header_to_add)
               v_response_header_to_add
           in
           let bnd = "response_header_to_add", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header_to_remove then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_remove)
               v_request_header_to_remove
           in
           let bnd = "request_header_to_remove", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header_to_add then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__header_action__request_header_to_add)
               v_request_header_to_add
           in
           let bnd = "request_header_to_add", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher__route_rule__header_action

[@@@deriving.end]

type routing__path_matcher__route_rule__match_rule__header_match = {
  exact_match : string prop option; [@option]
  header_name : string prop;
  invert_match : bool prop option; [@option]
  prefix_match : string prop option; [@option]
  present_match : bool prop option; [@option]
  suffix_match : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__match_rule__header_match) ->
  ()

let yojson_of_routing__path_matcher__route_rule__match_rule__header_match
    =
  (function
   | {
       exact_match = v_exact_match;
       header_name = v_header_name;
       invert_match = v_invert_match;
       prefix_match = v_prefix_match;
       present_match = v_present_match;
       suffix_match = v_suffix_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_suffix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suffix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_present_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "present_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invert_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "invert_match", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       let bnds =
         match v_exact_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__match_rule__header_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__match_rule__header_match

[@@@deriving.end]

type routing__path_matcher__route_rule__match_rule__query_parameter_match = {
  exact_match : string prop option; [@option]
  name : string prop;
  present_match : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__match_rule__query_parameter_match) ->
  ()

let yojson_of_routing__path_matcher__route_rule__match_rule__query_parameter_match
    =
  (function
   | {
       exact_match = v_exact_match;
       name = v_name;
       present_match = v_present_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_present_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "present_match", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_exact_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__match_rule__query_parameter_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__match_rule__query_parameter_match

[@@@deriving.end]

type routing__path_matcher__route_rule__match_rule = {
  full_path_match : string prop option; [@option]
  ignore_case : bool prop option; [@option]
  path_template_match : string prop option; [@option]
  prefix_match : string prop option; [@option]
  header_match :
    routing__path_matcher__route_rule__match_rule__header_match list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  query_parameter_match :
    routing__path_matcher__route_rule__match_rule__query_parameter_match
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__path_matcher__route_rule__match_rule) -> ()

let yojson_of_routing__path_matcher__route_rule__match_rule =
  (function
   | {
       full_path_match = v_full_path_match;
       ignore_case = v_ignore_case;
       path_template_match = v_path_template_match;
       prefix_match = v_prefix_match;
       header_match = v_header_match;
       query_parameter_match = v_query_parameter_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_query_parameter_match then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__match_rule__query_parameter_match)
               v_query_parameter_match
           in
           let bnd = "query_parameter_match", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header_match then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__match_rule__header_match)
               v_header_match
           in
           let bnd = "header_match", arg in
           bnd :: bnds
       in
       let bnds =
         match v_prefix_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_template_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_template_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_case with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_case", arg in
             bnd :: bnds
       in
       let bnds =
         match v_full_path_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "full_path_match", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__match_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher__route_rule__match_rule

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures = {
  actions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  copied_parameters : string prop list option; [@option]
  keyset : string prop option; [@option]
  token_query_parameter : string prop option; [@option]
  token_ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    =
  (function
   | {
       actions = v_actions;
       copied_parameters = v_copied_parameters;
       keyset = v_keyset;
       token_query_parameter = v_token_query_parameter;
       token_ttl = v_token_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_query_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_query_parameter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_keyset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "keyset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copied_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "copied_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_actions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_actions
           in
           let bnd = "actions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy = {
  exclude_host : bool prop option; [@option]
  exclude_query_string : bool prop option; [@option]
  excluded_query_parameters : string prop list option; [@option]
  include_protocol : bool prop option; [@option]
  included_cookie_names : string prop list option; [@option]
  included_header_names : string prop list option; [@option]
  included_query_parameters : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    =
  (function
   | {
       exclude_host = v_exclude_host;
       exclude_query_string = v_exclude_query_string;
       excluded_query_parameters = v_excluded_query_parameters;
       include_protocol = v_include_protocol;
       included_cookie_names = v_included_cookie_names;
       included_header_names = v_included_header_names;
       included_query_parameters = v_included_query_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_included_query_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_query_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_header_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_header_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_cookie_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_cookie_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_query_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_query_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_query_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_query_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_host", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options = {
  allowed_signature_algorithms : string prop list option; [@option]
  token_query_parameter : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    =
  (function
   | {
       allowed_signature_algorithms = v_allowed_signature_algorithms;
       token_query_parameter = v_token_query_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_token_query_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_query_parameter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_signature_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_signature_algorithms", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__cdn_policy = {
  cache_mode : string prop option; [@option]
  client_ttl : string prop option; [@option]
  default_ttl : string prop option; [@option]
  max_ttl : string prop option; [@option]
  negative_caching : bool prop option; [@option]
  negative_caching_policy : string prop Tf_core.assoc option;
      [@option]
  signed_request_keyset : string prop option; [@option]
  signed_request_maximum_expiration_ttl : string prop option;
      [@option]
  signed_request_mode : string prop option; [@option]
  add_signatures :
    routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cache_key_policy :
    routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  signed_token_options :
    routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__cdn_policy) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy
    =
  (function
   | {
       cache_mode = v_cache_mode;
       client_ttl = v_client_ttl;
       default_ttl = v_default_ttl;
       max_ttl = v_max_ttl;
       negative_caching = v_negative_caching;
       negative_caching_policy = v_negative_caching_policy;
       signed_request_keyset = v_signed_request_keyset;
       signed_request_maximum_expiration_ttl =
         v_signed_request_maximum_expiration_ttl;
       signed_request_mode = v_signed_request_mode;
       add_signatures = v_add_signatures;
       cache_key_policy = v_cache_key_policy;
       signed_token_options = v_signed_token_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_signed_token_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options)
               v_signed_token_options
           in
           let bnd = "signed_token_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_key_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy)
               v_cache_key_policy
           in
           let bnd = "cache_key_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_add_signatures then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures)
               v_add_signatures
           in
           let bnd = "add_signatures", arg in
           bnd :: bnds
       in
       let bnds =
         match v_signed_request_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signed_request_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signed_request_maximum_expiration_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "signed_request_maximum_expiration_ttl", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_signed_request_keyset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signed_request_keyset", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negative_caching_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "negative_caching_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negative_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negative_caching", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cache_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__cdn_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__cors_policy = {
  allow_credentials : bool prop option; [@option]
  allow_headers : string prop list option; [@option]
  allow_methods : string prop list option; [@option]
  allow_origins : string prop list option; [@option]
  disabled : bool prop option; [@option]
  expose_headers : string prop list option; [@option]
  max_age : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__cors_policy) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__cors_policy
    =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allow_headers = v_allow_headers;
       allow_methods = v_allow_methods;
       allow_origins = v_allow_origins;
       disabled = v_disabled;
       expose_headers = v_expose_headers;
       max_age = v_max_age;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_age in
         ("max_age", arg) :: bnds
       in
       let bnds =
         match v_expose_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expose_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_origins", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_methods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_credentials", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__cors_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__cors_policy

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
  path_prefix_rewrite : string prop option; [@option]
  path_template_rewrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing__path_matcher__route_rule__route_action__url_rewrite) ->
  ()

let yojson_of_routing__path_matcher__route_rule__route_action__url_rewrite
    =
  (function
   | {
       host_rewrite = v_host_rewrite;
       path_prefix_rewrite = v_path_prefix_rewrite;
       path_template_rewrite = v_path_template_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path_template_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_template_rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_prefix_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix_rewrite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_rewrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action__url_rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing__path_matcher__route_rule__route_action__url_rewrite

[@@@deriving.end]

type routing__path_matcher__route_rule__route_action = {
  cdn_policy :
    routing__path_matcher__route_rule__route_action__cdn_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors_policy :
    routing__path_matcher__route_rule__route_action__cors_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_rewrite :
    routing__path_matcher__route_rule__route_action__url_rewrite list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : routing__path_matcher__route_rule__route_action) -> ()

let yojson_of_routing__path_matcher__route_rule__route_action =
  (function
   | {
       cdn_policy = v_cdn_policy;
       cors_policy = v_cors_policy;
       url_rewrite = v_url_rewrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_url_rewrite then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__url_rewrite)
               v_url_rewrite
           in
           let bnd = "url_rewrite", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cors_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__cors_policy)
               v_cors_policy
           in
           let bnd = "cors_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cdn_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action__cdn_policy)
               v_cdn_policy
           in
           let bnd = "cdn_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__route_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher__route_rule__route_action

[@@@deriving.end]

type routing__path_matcher__route_rule__url_redirect = {
  host_redirect : string prop option; [@option]
  https_redirect : bool prop option; [@option]
  path_redirect : string prop option; [@option]
  prefix_redirect : string prop option; [@option]
  redirect_response_code : string prop option; [@option]
  strip_query : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : routing__path_matcher__route_rule__url_redirect) -> ()

let yojson_of_routing__path_matcher__route_rule__url_redirect =
  (function
   | {
       host_redirect = v_host_redirect;
       https_redirect = v_https_redirect;
       path_redirect = v_path_redirect;
       prefix_redirect = v_prefix_redirect;
       redirect_response_code = v_redirect_response_code;
       strip_query = v_strip_query;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_strip_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "strip_query", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_response_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_response_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_redirect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing__path_matcher__route_rule__url_redirect ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher__route_rule__url_redirect

[@@@deriving.end]

type routing__path_matcher__route_rule = {
  description : string prop option; [@option]
  origin : string prop option; [@option]
  priority : string prop;
  header_action :
    routing__path_matcher__route_rule__header_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_rule : routing__path_matcher__route_rule__match_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  route_action :
    routing__path_matcher__route_rule__route_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  url_redirect : routing__path_matcher__route_rule__url_redirect list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__path_matcher__route_rule) -> ()

let yojson_of_routing__path_matcher__route_rule =
  (function
   | {
       description = v_description;
       origin = v_origin;
       priority = v_priority;
       header_action = v_header_action;
       match_rule = v_match_rule;
       route_action = v_route_action;
       url_redirect = v_url_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_url_redirect then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__url_redirect)
               v_url_redirect
           in
           let bnd = "url_redirect", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_route_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__route_action)
               v_route_action
           in
           let bnd = "route_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__match_rule)
               v_match_rule
           in
           let bnd = "match_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_header_action then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule__header_action)
               v_header_action
           in
           let bnd = "header_action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         match v_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "origin", arg in
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
    : routing__path_matcher__route_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher__route_rule

[@@@deriving.end]

type routing__path_matcher = {
  description : string prop option; [@option]
  name : string prop;
  route_rule : routing__path_matcher__route_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing__path_matcher) -> ()

let yojson_of_routing__path_matcher =
  (function
   | {
       description = v_description;
       name = v_name;
       route_rule = v_route_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_route_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing__path_matcher__route_rule)
               v_route_rule
           in
           let bnd = "route_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : routing__path_matcher -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing__path_matcher

[@@@deriving.end]

type routing = {
  host_rule : routing__host_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  path_matcher : routing__path_matcher list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing) -> ()

let yojson_of_routing =
  (function
   | { host_rule = v_host_rule; path_matcher = v_path_matcher } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_path_matcher then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing__path_matcher)
               v_path_matcher
           in
           let bnd = "path_matcher", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_host_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing__host_rule)
               v_host_rule
           in
           let bnd = "host_rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing

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

type google_network_services_edge_cache_service = {
  description : string prop option; [@option]
  disable_http2 : bool prop option; [@option]
  disable_quic : bool prop option; [@option]
  edge_security_policy : string prop option; [@option]
  edge_ssl_certificates : string prop list option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  project : string prop option; [@option]
  require_tls : bool prop option; [@option]
  ssl_policy : string prop option; [@option]
  log_config : log_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  routing : routing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_services_edge_cache_service) -> ()

let yojson_of_google_network_services_edge_cache_service =
  (function
   | {
       description = v_description;
       disable_http2 = v_disable_http2;
       disable_quic = v_disable_quic;
       edge_security_policy = v_edge_security_policy;
       edge_ssl_certificates = v_edge_ssl_certificates;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       require_tls = v_require_tls;
       ssl_policy = v_ssl_policy;
       log_config = v_log_config;
       routing = v_routing;
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
         if Stdlib.( = ) [] v_routing then bnds
         else
           let arg = (yojson_of_list yojson_of_routing) v_routing in
           let bnd = "routing", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_log_config) v_log_config
           in
           let bnd = "log_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ssl_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_tls", arg in
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
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
         match v_edge_ssl_certificates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "edge_ssl_certificates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_security_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_quic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_quic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_http2", arg in
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
    : google_network_services_edge_cache_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_services_edge_cache_service

[@@@deriving.end]

let log_config ?enable ?sample_rate () : log_config =
  { enable; sample_rate }

let routing__host_rule ?description ~hosts ~path_matcher () :
    routing__host_rule =
  { description; hosts; path_matcher }

let routing__path_matcher__route_rule__header_action__request_header_to_add
    ?replace ~header_name ~header_value () :
    routing__path_matcher__route_rule__header_action__request_header_to_add
    =
  { header_name; header_value; replace }

let routing__path_matcher__route_rule__header_action__request_header_to_remove
    ~header_name () :
    routing__path_matcher__route_rule__header_action__request_header_to_remove
    =
  { header_name }

let routing__path_matcher__route_rule__header_action__response_header_to_add
    ?replace ~header_name ~header_value () :
    routing__path_matcher__route_rule__header_action__response_header_to_add
    =
  { header_name; header_value; replace }

let routing__path_matcher__route_rule__header_action__response_header_to_remove
    ~header_name () :
    routing__path_matcher__route_rule__header_action__response_header_to_remove
    =
  { header_name }

let routing__path_matcher__route_rule__header_action
    ?(request_header_to_add = []) ?(request_header_to_remove = [])
    ?(response_header_to_add = []) ?(response_header_to_remove = [])
    () : routing__path_matcher__route_rule__header_action =
  {
    request_header_to_add;
    request_header_to_remove;
    response_header_to_add;
    response_header_to_remove;
  }

let routing__path_matcher__route_rule__match_rule__header_match
    ?exact_match ?invert_match ?prefix_match ?present_match
    ?suffix_match ~header_name () :
    routing__path_matcher__route_rule__match_rule__header_match =
  {
    exact_match;
    header_name;
    invert_match;
    prefix_match;
    present_match;
    suffix_match;
  }

let routing__path_matcher__route_rule__match_rule__query_parameter_match
    ?exact_match ?present_match ~name () :
    routing__path_matcher__route_rule__match_rule__query_parameter_match
    =
  { exact_match; name; present_match }

let routing__path_matcher__route_rule__match_rule ?full_path_match
    ?ignore_case ?path_template_match ?prefix_match
    ?(header_match = []) ?(query_parameter_match = []) () :
    routing__path_matcher__route_rule__match_rule =
  {
    full_path_match;
    ignore_case;
    path_template_match;
    prefix_match;
    header_match;
    query_parameter_match;
  }

let routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    ?copied_parameters ?keyset ?token_query_parameter ?token_ttl
    ~actions () :
    routing__path_matcher__route_rule__route_action__cdn_policy__add_signatures
    =
  {
    actions;
    copied_parameters;
    keyset;
    token_query_parameter;
    token_ttl;
  }

let routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    ?exclude_host ?exclude_query_string ?excluded_query_parameters
    ?include_protocol ?included_cookie_names ?included_header_names
    ?included_query_parameters () :
    routing__path_matcher__route_rule__route_action__cdn_policy__cache_key_policy
    =
  {
    exclude_host;
    exclude_query_string;
    excluded_query_parameters;
    include_protocol;
    included_cookie_names;
    included_header_names;
    included_query_parameters;
  }

let routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    ?allowed_signature_algorithms ?token_query_parameter () :
    routing__path_matcher__route_rule__route_action__cdn_policy__signed_token_options
    =
  { allowed_signature_algorithms; token_query_parameter }

let routing__path_matcher__route_rule__route_action__cdn_policy
    ?cache_mode ?client_ttl ?default_ttl ?max_ttl ?negative_caching
    ?negative_caching_policy ?signed_request_keyset
    ?signed_request_maximum_expiration_ttl ?signed_request_mode
    ?(add_signatures = []) ?(cache_key_policy = [])
    ?(signed_token_options = []) () :
    routing__path_matcher__route_rule__route_action__cdn_policy =
  {
    cache_mode;
    client_ttl;
    default_ttl;
    max_ttl;
    negative_caching;
    negative_caching_policy;
    signed_request_keyset;
    signed_request_maximum_expiration_ttl;
    signed_request_mode;
    add_signatures;
    cache_key_policy;
    signed_token_options;
  }

let routing__path_matcher__route_rule__route_action__cors_policy
    ?allow_credentials ?allow_headers ?allow_methods ?allow_origins
    ?disabled ?expose_headers ~max_age () :
    routing__path_matcher__route_rule__route_action__cors_policy =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origins;
    disabled;
    expose_headers;
    max_age;
  }

let routing__path_matcher__route_rule__route_action__url_rewrite
    ?host_rewrite ?path_prefix_rewrite ?path_template_rewrite () :
    routing__path_matcher__route_rule__route_action__url_rewrite =
  { host_rewrite; path_prefix_rewrite; path_template_rewrite }

let routing__path_matcher__route_rule__route_action
    ?(cdn_policy = []) ?(cors_policy = []) ?(url_rewrite = []) () :
    routing__path_matcher__route_rule__route_action =
  { cdn_policy; cors_policy; url_rewrite }

let routing__path_matcher__route_rule__url_redirect ?host_redirect
    ?https_redirect ?path_redirect ?prefix_redirect
    ?redirect_response_code ?strip_query () :
    routing__path_matcher__route_rule__url_redirect =
  {
    host_redirect;
    https_redirect;
    path_redirect;
    prefix_redirect;
    redirect_response_code;
    strip_query;
  }

let routing__path_matcher__route_rule ?description ?origin
    ?(header_action = []) ?(route_action = []) ?(url_redirect = [])
    ~priority ~match_rule () : routing__path_matcher__route_rule =
  {
    description;
    origin;
    priority;
    header_action;
    match_rule;
    route_action;
    url_redirect;
  }

let routing__path_matcher ?description ~name ~route_rule () :
    routing__path_matcher =
  { description; name; route_rule }

let routing ~host_rule ~path_matcher () : routing =
  { host_rule; path_matcher }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_services_edge_cache_service ?description
    ?disable_http2 ?disable_quic ?edge_security_policy
    ?edge_ssl_certificates ?id ?labels ?project ?require_tls
    ?ssl_policy ?(log_config = []) ?timeouts ~name ~routing () :
    google_network_services_edge_cache_service =
  {
    description;
    disable_http2;
    disable_quic;
    edge_security_policy;
    edge_ssl_certificates;
    id;
    labels;
    name;
    project;
    require_tls;
    ssl_policy;
    log_config;
    routing;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  disable_http2 : bool prop;
  disable_quic : bool prop;
  edge_security_policy : string prop;
  edge_ssl_certificates : string list prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ipv4_addresses : string list prop;
  ipv6_addresses : string list prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  require_tls : bool prop;
  ssl_policy : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?description ?disable_http2 ?disable_quic
    ?edge_security_policy ?edge_ssl_certificates ?id ?labels ?project
    ?require_tls ?ssl_policy ?(log_config = []) ?timeouts ~name
    ~routing __id =
  let __type = "google_network_services_edge_cache_service" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       disable_http2 = Prop.computed __type __id "disable_http2";
       disable_quic = Prop.computed __type __id "disable_quic";
       edge_security_policy =
         Prop.computed __type __id "edge_security_policy";
       edge_ssl_certificates =
         Prop.computed __type __id "edge_ssl_certificates";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ipv4_addresses = Prop.computed __type __id "ipv4_addresses";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       require_tls = Prop.computed __type __id "require_tls";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_services_edge_cache_service
        (google_network_services_edge_cache_service ?description
           ?disable_http2 ?disable_quic ?edge_security_policy
           ?edge_ssl_certificates ?id ?labels ?project ?require_tls
           ?ssl_policy ~log_config ?timeouts ~name ~routing ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disable_http2 ?disable_quic
    ?edge_security_policy ?edge_ssl_certificates ?id ?labels ?project
    ?require_tls ?ssl_policy ?(log_config = []) ?timeouts ~name
    ~routing __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disable_http2 ?disable_quic
      ?edge_security_policy ?edge_ssl_certificates ?id ?labels
      ?project ?require_tls ?ssl_policy ~log_config ?timeouts ~name
      ~routing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
