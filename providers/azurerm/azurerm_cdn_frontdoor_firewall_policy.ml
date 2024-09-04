(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_rule__match_condition = {
  match_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_variable : string prop;
  negation_condition : bool prop option; [@option]
  operator : string prop;
  selector : string prop option; [@option]
  transforms : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_rule__match_condition) -> ()

let yojson_of_custom_rule__match_condition =
  (function
   | {
       match_values = v_match_values;
       match_variable = v_match_variable;
       negation_condition = v_negation_condition;
       operator = v_operator;
       selector = v_selector;
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
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_match_values
           in
           let bnd = "match_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : custom_rule__match_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rule__match_condition

[@@@deriving.end]

type custom_rule = {
  action : string prop;
  enabled : bool prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  rate_limit_duration_in_minutes : float prop option; [@option]
  rate_limit_threshold : float prop option; [@option]
  type_ : string prop; [@key "type"]
  match_condition : custom_rule__match_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_rule) -> ()

let yojson_of_custom_rule =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       name = v_name;
       priority = v_priority;
       rate_limit_duration_in_minutes =
         v_rate_limit_duration_in_minutes;
       rate_limit_threshold = v_rate_limit_threshold;
       type_ = v_type_;
       match_condition = v_match_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_rule__match_condition)
               v_match_condition
           in
           let bnd = "match_condition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_rate_limit_duration_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rate_limit_duration_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : custom_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_rule

[@@@deriving.end]

type managed_rule__exclusion = {
  match_variable : string prop;
  operator : string prop;
  selector : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule__exclusion) -> ()

let yojson_of_managed_rule__exclusion =
  (function
   | {
       match_variable = v_match_variable;
       operator = v_operator;
       selector = v_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       `Assoc bnds
    : managed_rule__exclusion -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule__exclusion

[@@@deriving.end]

type managed_rule__override__exclusion = {
  match_variable : string prop;
  operator : string prop;
  selector : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule__override__exclusion) -> ()

let yojson_of_managed_rule__override__exclusion =
  (function
   | {
       match_variable = v_match_variable;
       operator = v_operator;
       selector = v_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       `Assoc bnds
    : managed_rule__override__exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule__override__exclusion

[@@@deriving.end]

type managed_rule__override__rule__exclusion = {
  match_variable : string prop;
  operator : string prop;
  selector : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule__override__rule__exclusion) -> ()

let yojson_of_managed_rule__override__rule__exclusion =
  (function
   | {
       match_variable = v_match_variable;
       operator = v_operator;
       selector = v_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selector in
         ("selector", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_match_variable
         in
         ("match_variable", arg) :: bnds
       in
       `Assoc bnds
    : managed_rule__override__rule__exclusion ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule__override__rule__exclusion

[@@@deriving.end]

type managed_rule__override__rule = {
  action : string prop;
  enabled : bool prop option; [@option]
  rule_id : string prop;
  exclusion : managed_rule__override__rule__exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule__override__rule) -> ()

let yojson_of_managed_rule__override__rule =
  (function
   | {
       action = v_action;
       enabled = v_enabled;
       rule_id = v_rule_id;
       exclusion = v_exclusion;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_managed_rule__override__rule__exclusion)
               v_exclusion
           in
           let bnd = "exclusion", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_id in
         ("rule_id", arg) :: bnds
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
    : managed_rule__override__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule__override__rule

[@@@deriving.end]

type managed_rule__override = {
  rule_group_name : string prop;
  exclusion : managed_rule__override__exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : managed_rule__override__rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule__override) -> ()

let yojson_of_managed_rule__override =
  (function
   | {
       rule_group_name = v_rule_group_name;
       exclusion = v_exclusion;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_rule__override__rule)
               v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_managed_rule__override__exclusion)
               v_exclusion
           in
           let bnd = "exclusion", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rule_group_name
         in
         ("rule_group_name", arg) :: bnds
       in
       `Assoc bnds
    : managed_rule__override -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule__override

[@@@deriving.end]

type managed_rule = {
  action : string prop;
  type_ : string prop; [@key "type"]
  version : string prop;
  exclusion : managed_rule__exclusion list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  override : managed_rule__override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_rule) -> ()

let yojson_of_managed_rule =
  (function
   | {
       action = v_action;
       type_ = v_type_;
       version = v_version;
       exclusion = v_exclusion;
       override = v_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_override then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_rule__override)
               v_override
           in
           let bnd = "override", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exclusion then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_rule__exclusion)
               v_exclusion
           in
           let bnd = "exclusion", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : managed_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_rule

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

type azurerm_cdn_frontdoor_firewall_policy = {
  custom_block_response_body : string prop option; [@option]
  custom_block_response_status_code : float prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  mode : string prop;
  name : string prop;
  redirect_url : string prop option; [@option]
  request_body_check_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  custom_rule : custom_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  managed_rule : managed_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_firewall_policy) -> ()

let yojson_of_azurerm_cdn_frontdoor_firewall_policy =
  (function
   | {
       custom_block_response_body = v_custom_block_response_body;
       custom_block_response_status_code =
         v_custom_block_response_status_code;
       enabled = v_enabled;
       id = v_id;
       mode = v_mode;
       name = v_name;
       redirect_url = v_redirect_url;
       request_body_check_enabled = v_request_body_check_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       custom_rule = v_custom_rule;
       managed_rule = v_managed_rule;
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
         if Stdlib.( = ) [] v_managed_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_rule) v_managed_rule
           in
           let bnd = "managed_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_rule) v_custom_rule
           in
           let bnd = "custom_rule", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_request_body_check_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_body_check_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_block_response_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "custom_block_response_status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_block_response_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_block_response_body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_firewall_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_firewall_policy

[@@@deriving.end]

let custom_rule__match_condition ?negation_condition ?selector
    ?transforms ~match_values ~match_variable ~operator () :
    custom_rule__match_condition =
  {
    match_values;
    match_variable;
    negation_condition;
    operator;
    selector;
    transforms;
  }

let custom_rule ?enabled ?priority ?rate_limit_duration_in_minutes
    ?rate_limit_threshold ?(match_condition = []) ~action ~name
    ~type_ () : custom_rule =
  {
    action;
    enabled;
    name;
    priority;
    rate_limit_duration_in_minutes;
    rate_limit_threshold;
    type_;
    match_condition;
  }

let managed_rule__exclusion ~match_variable ~operator ~selector () :
    managed_rule__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__exclusion ~match_variable ~operator
    ~selector () : managed_rule__override__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__rule__exclusion ~match_variable ~operator
    ~selector () : managed_rule__override__rule__exclusion =
  { match_variable; operator; selector }

let managed_rule__override__rule ?enabled ?(exclusion = []) ~action
    ~rule_id () : managed_rule__override__rule =
  { action; enabled; rule_id; exclusion }

let managed_rule__override ?(exclusion = []) ?(rule = [])
    ~rule_group_name () : managed_rule__override =
  { rule_group_name; exclusion; rule }

let managed_rule ?(exclusion = []) ?(override = []) ~action ~type_
    ~version () : managed_rule =
  { action; type_; version; exclusion; override }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_firewall_policy ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?redirect_url
    ?request_body_check_enabled ?tags ?(custom_rule = [])
    ?(managed_rule = []) ?timeouts ~mode ~name ~resource_group_name
    ~sku_name () : azurerm_cdn_frontdoor_firewall_policy =
  {
    custom_block_response_body;
    custom_block_response_status_code;
    enabled;
    id;
    mode;
    name;
    redirect_url;
    request_body_check_enabled;
    resource_group_name;
    sku_name;
    tags;
    custom_rule;
    managed_rule;
    timeouts;
  }

type t = {
  tf_name : string;
  custom_block_response_body : string prop;
  custom_block_response_status_code : float prop;
  enabled : bool prop;
  frontend_endpoint_ids : string list prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  redirect_url : string prop;
  request_body_check_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?redirect_url
    ?request_body_check_enabled ?tags ?(custom_rule = [])
    ?(managed_rule = []) ?timeouts ~mode ~name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_cdn_frontdoor_firewall_policy" in
  let __attrs =
    ({
       tf_name = __id;
       custom_block_response_body =
         Prop.computed __type __id "custom_block_response_body";
       custom_block_response_status_code =
         Prop.computed __type __id
           "custom_block_response_status_code";
       enabled = Prop.computed __type __id "enabled";
       frontend_endpoint_ids =
         Prop.computed __type __id "frontend_endpoint_ids";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       redirect_url = Prop.computed __type __id "redirect_url";
       request_body_check_enabled =
         Prop.computed __type __id "request_body_check_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_firewall_policy
        (azurerm_cdn_frontdoor_firewall_policy
           ?custom_block_response_body
           ?custom_block_response_status_code ?enabled ?id
           ?redirect_url ?request_body_check_enabled ?tags
           ~custom_rule ~managed_rule ?timeouts ~mode ~name
           ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_block_response_body
    ?custom_block_response_status_code ?enabled ?id ?redirect_url
    ?request_body_check_enabled ?tags ?(custom_rule = [])
    ?(managed_rule = []) ?timeouts ~mode ~name ~resource_group_name
    ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_block_response_body
      ?custom_block_response_status_code ?enabled ?id ?redirect_url
      ?request_body_check_enabled ?tags ~custom_rule ~managed_rule
      ?timeouts ~mode ~name ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
