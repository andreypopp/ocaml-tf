(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_rules__match_conditions__match_variables = {
  selector : string prop option; [@option]
  variable_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : custom_rules__match_conditions__match_variables) -> ()

let yojson_of_custom_rules__match_conditions__match_variables =
  (function
   | { selector = v_selector; variable_name = v_variable_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_variable_name in
         ("variable_name", arg) :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_rules__match_conditions__match_variables ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rules__match_conditions__match_variables

[@@@deriving.end]

type custom_rules__match_conditions = {
  match_values : string prop list option; [@option]
  negation_condition : bool prop option; [@option]
  operator : string prop;
  transforms : string prop list option; [@option]
  match_variables :
    custom_rules__match_conditions__match_variables list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_rules__match_conditions) -> ()

let yojson_of_custom_rules__match_conditions =
  (function
   | {
       match_values = v_match_values;
       negation_condition = v_negation_condition;
       operator = v_operator;
       transforms = v_transforms;
       match_variables = v_match_variables;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_custom_rules__match_conditions__match_variables
             v_match_variables
         in
         ("match_variables", arg) :: bnds
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
         match v_negation_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negation_condition", arg in
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
    : custom_rules__match_conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rules__match_conditions

[@@@deriving.end]

type custom_rules = {
  action : string prop;
  enabled : bool prop option; [@option]
  group_rate_limit_by : string prop option; [@option]
  name : string prop option; [@option]
  priority : float prop;
  rate_limit_duration : string prop option; [@option]
  rate_limit_threshold : float prop option; [@option]
  rule_type : string prop;
  match_conditions : custom_rules__match_conditions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_rules) -> ()

let yojson_of_custom_rules =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       group_rate_limit_by = v_group_rate_limit_by;
       name = v_name;
       priority = v_priority;
       rate_limit_duration = v_rate_limit_duration;
       rate_limit_threshold = v_rate_limit_threshold;
       rule_type = v_rule_type;
       match_conditions = v_match_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_rules__match_conditions
             v_match_conditions
         in
         ("match_conditions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_type in
         ("rule_type", arg) :: bnds
       in
       let bnds =
         match v_rate_limit_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rate_limit_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rate_limit_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rate_limit_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
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
         match v_group_rate_limit_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_rate_limit_by", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : custom_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rules

[@@@deriving.end]

type managed_rules__exclusion__excluded_rule_set__rule_group = {
  excluded_rules : string prop list option; [@option]
  rule_group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : managed_rules__exclusion__excluded_rule_set__rule_group) ->
  ()

let yojson_of_managed_rules__exclusion__excluded_rule_set__rule_group
    =
  (function
   | {
       excluded_rules = v_excluded_rules;
       rule_group_name = v_rule_group_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_group_name
         in
         ("rule_group_name", arg) :: bnds
       in
       let bnds =
         match v_excluded_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_rules", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_rules__exclusion__excluded_rule_set__rule_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_managed_rules__exclusion__excluded_rule_set__rule_group

[@@@deriving.end]

type managed_rules__exclusion__excluded_rule_set = {
  type_ : string prop option; [@option] [@key "type"]
  version : string prop option; [@option]
  rule_group :
    managed_rules__exclusion__excluded_rule_set__rule_group list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rules__exclusion__excluded_rule_set) -> ()

let yojson_of_managed_rules__exclusion__excluded_rule_set =
  (function
   | {
       type_ = v_type_;
       version = v_version;
       rule_group = v_rule_group;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_rules__exclusion__excluded_rule_set__rule_group
             v_rule_group
         in
         ("rule_group", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : managed_rules__exclusion__excluded_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rules__exclusion__excluded_rule_set

[@@@deriving.end]

type managed_rules__exclusion = {
  match_variable : string prop;
  selector : string prop;
  selector_match_operator : string prop;
  excluded_rule_set :
    managed_rules__exclusion__excluded_rule_set list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rules__exclusion) -> ()

let yojson_of_managed_rules__exclusion =
  (function
   | {
       match_variable = v_match_variable;
       selector = v_selector;
       selector_match_operator = v_selector_match_operator;
       excluded_rule_set = v_excluded_rule_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_rules__exclusion__excluded_rule_set
             v_excluded_rule_set
         in
         ("excluded_rule_set", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_selector_match_operator
         in
         ("selector_match_operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       `Assoc bnds
    : managed_rules__exclusion -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rules__exclusion

[@@@deriving.end]

type managed_rules__managed_rule_set__rule_group_override__rule = {
  action : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : managed_rules__managed_rule_set__rule_group_override__rule) ->
  ()

let yojson_of_managed_rules__managed_rule_set__rule_group_override__rule
    =
  (function
   | { action = v_action; enabled = v_enabled; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_rules__managed_rule_set__rule_group_override__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_managed_rules__managed_rule_set__rule_group_override__rule

[@@@deriving.end]

type managed_rules__managed_rule_set__rule_group_override = {
  disabled_rules : string prop list option; [@option]
  rule_group_name : string prop;
  rule :
    managed_rules__managed_rule_set__rule_group_override__rule list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : managed_rules__managed_rule_set__rule_group_override) -> ()

let yojson_of_managed_rules__managed_rule_set__rule_group_override =
  (function
   | {
       disabled_rules = v_disabled_rules;
       rule_group_name = v_rule_group_name;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_rules__managed_rule_set__rule_group_override__rule
             v_rule
         in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_group_name
         in
         ("rule_group_name", arg) :: bnds
       in
       let bnds =
         match v_disabled_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "disabled_rules", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_rules__managed_rule_set__rule_group_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_managed_rules__managed_rule_set__rule_group_override

[@@@deriving.end]

type managed_rules__managed_rule_set = {
  type_ : string prop option; [@option] [@key "type"]
  version : string prop;
  rule_group_override :
    managed_rules__managed_rule_set__rule_group_override list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rules__managed_rule_set) -> ()

let yojson_of_managed_rules__managed_rule_set =
  (function
   | {
       type_ = v_type_;
       version = v_version;
       rule_group_override = v_rule_group_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_rules__managed_rule_set__rule_group_override
             v_rule_group_override
         in
         ("rule_group_override", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_rules__managed_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rules__managed_rule_set

[@@@deriving.end]

type managed_rules = {
  exclusion : managed_rules__exclusion list;
  managed_rule_set : managed_rules__managed_rule_set list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rules) -> ()

let yojson_of_managed_rules =
  (function
   | {
       exclusion = v_exclusion;
       managed_rule_set = v_managed_rule_set;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_rules__managed_rule_set
             v_managed_rule_set
         in
         ("managed_rule_set", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_rules__exclusion
             v_exclusion
         in
         ("exclusion", arg) :: bnds
       in
       `Assoc bnds
    : managed_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rules

[@@@deriving.end]

type policy_settings__log_scrubbing__rule = {
  enabled : bool prop option; [@option]
  match_variable : string prop;
  selector : string prop option; [@option]
  selector_match_operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_settings__log_scrubbing__rule) -> ()

let yojson_of_policy_settings__log_scrubbing__rule =
  (function
   | {
       enabled = v_enabled;
       match_variable = v_match_variable;
       selector = v_selector;
       selector_match_operator = v_selector_match_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_selector_match_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector_match_operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_settings__log_scrubbing__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_settings__log_scrubbing__rule

[@@@deriving.end]

type policy_settings__log_scrubbing = {
  enabled : bool prop option; [@option]
  rule : policy_settings__log_scrubbing__rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_settings__log_scrubbing) -> ()

let yojson_of_policy_settings__log_scrubbing =
  (function
   | { enabled = v_enabled; rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_policy_settings__log_scrubbing__rule v_rule
         in
         ("rule", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_settings__log_scrubbing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_settings__log_scrubbing

[@@@deriving.end]

type policy_settings = {
  enabled : bool prop option; [@option]
  file_upload_limit_in_mb : float prop option; [@option]
  max_request_body_size_in_kb : float prop option; [@option]
  mode : string prop option; [@option]
  request_body_check : bool prop option; [@option]
  request_body_inspect_limit_in_kb : float prop option; [@option]
  log_scrubbing : policy_settings__log_scrubbing list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_settings) -> ()

let yojson_of_policy_settings =
  (function
   | {
       enabled = v_enabled;
       file_upload_limit_in_mb = v_file_upload_limit_in_mb;
       max_request_body_size_in_kb = v_max_request_body_size_in_kb;
       mode = v_mode;
       request_body_check = v_request_body_check;
       request_body_inspect_limit_in_kb =
         v_request_body_inspect_limit_in_kb;
       log_scrubbing = v_log_scrubbing;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_policy_settings__log_scrubbing
             v_log_scrubbing
         in
         ("log_scrubbing", arg) :: bnds
       in
       let bnds =
         match v_request_body_inspect_limit_in_kb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "request_body_inspect_limit_in_kb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_body_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_body_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_request_body_size_in_kb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_request_body_size_in_kb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_upload_limit_in_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "file_upload_limit_in_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_settings

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

type azurerm_web_application_firewall_policy = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  custom_rules : custom_rules list;
  managed_rules : managed_rules list;
  policy_settings : policy_settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_web_application_firewall_policy) -> ()

let yojson_of_azurerm_web_application_firewall_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       custom_rules = v_custom_rules;
       managed_rules = v_managed_rules;
       policy_settings = v_policy_settings;
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
         let arg =
           yojson_of_list yojson_of_policy_settings v_policy_settings
         in
         ("policy_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_rules v_managed_rules
         in
         ("managed_rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_custom_rules v_custom_rules
         in
         ("custom_rules", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : azurerm_web_application_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_web_application_firewall_policy

[@@@deriving.end]

let custom_rules__match_conditions__match_variables ?selector
    ~variable_name () :
    custom_rules__match_conditions__match_variables =
  { selector; variable_name }

let custom_rules__match_conditions ?match_values ?negation_condition
    ?transforms ~operator ~match_variables () :
    custom_rules__match_conditions =
  {
    match_values;
    negation_condition;
    operator;
    transforms;
    match_variables;
  }

let custom_rules ?enabled ?group_rate_limit_by ?name
    ?rate_limit_duration ?rate_limit_threshold ~action ~priority
    ~rule_type ~match_conditions () : custom_rules =
  {
    action;
    enabled;
    group_rate_limit_by;
    name;
    priority;
    rate_limit_duration;
    rate_limit_threshold;
    rule_type;
    match_conditions;
  }

let managed_rules__exclusion__excluded_rule_set__rule_group
    ?excluded_rules ~rule_group_name () :
    managed_rules__exclusion__excluded_rule_set__rule_group =
  { excluded_rules; rule_group_name }

let managed_rules__exclusion__excluded_rule_set ?type_ ?version
    ?(rule_group = []) () :
    managed_rules__exclusion__excluded_rule_set =
  { type_; version; rule_group }

let managed_rules__exclusion ?(excluded_rule_set = [])
    ~match_variable ~selector ~selector_match_operator () :
    managed_rules__exclusion =
  {
    match_variable;
    selector;
    selector_match_operator;
    excluded_rule_set;
  }

let managed_rules__managed_rule_set__rule_group_override__rule
    ?action ?enabled ~id () :
    managed_rules__managed_rule_set__rule_group_override__rule =
  { action; enabled; id }

let managed_rules__managed_rule_set__rule_group_override
    ?disabled_rules ?(rule = []) ~rule_group_name () :
    managed_rules__managed_rule_set__rule_group_override =
  { disabled_rules; rule_group_name; rule }

let managed_rules__managed_rule_set ?type_
    ?(rule_group_override = []) ~version () :
    managed_rules__managed_rule_set =
  { type_; version; rule_group_override }

let managed_rules ?(exclusion = []) ~managed_rule_set () :
    managed_rules =
  { exclusion; managed_rule_set }

let policy_settings__log_scrubbing__rule ?enabled ?selector
    ?selector_match_operator ~match_variable () :
    policy_settings__log_scrubbing__rule =
  { enabled; match_variable; selector; selector_match_operator }

let policy_settings__log_scrubbing ?enabled ?(rule = []) () :
    policy_settings__log_scrubbing =
  { enabled; rule }

let policy_settings ?enabled ?file_upload_limit_in_mb
    ?max_request_body_size_in_kb ?mode ?request_body_check
    ?request_body_inspect_limit_in_kb ?(log_scrubbing = []) () :
    policy_settings =
  {
    enabled;
    file_upload_limit_in_mb;
    max_request_body_size_in_kb;
    mode;
    request_body_check;
    request_body_inspect_limit_in_kb;
    log_scrubbing;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_web_application_firewall_policy ?id ?tags
    ?(custom_rules = []) ?(policy_settings = []) ?timeouts ~location
    ~name ~resource_group_name ~managed_rules () :
    azurerm_web_application_firewall_policy =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    custom_rules;
    managed_rules;
    policy_settings;
    timeouts;
  }

type t = {
  http_listener_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  path_based_rule_ids : string list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?(custom_rules = []) ?(policy_settings = [])
    ?timeouts ~location ~name ~resource_group_name ~managed_rules
    __id =
  let __type = "azurerm_web_application_firewall_policy" in
  let __attrs =
    ({
       http_listener_ids =
         Prop.computed __type __id "http_listener_ids";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       path_based_rule_ids =
         Prop.computed __type __id "path_based_rule_ids";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_web_application_firewall_policy
        (azurerm_web_application_firewall_policy ?id ?tags
           ~custom_rules ~policy_settings ?timeouts ~location ~name
           ~resource_group_name ~managed_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(custom_rules = [])
    ?(policy_settings = []) ?timeouts ~location ~name
    ~resource_group_name ~managed_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~custom_rules ~policy_settings ?timeouts ~location
      ~name ~resource_group_name ~managed_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
