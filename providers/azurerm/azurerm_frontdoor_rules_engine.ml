(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__action__request_header = {
  header_action_type : string prop option; [@option]
  header_name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action__request_header) -> ()

let yojson_of_rule__action__request_header =
  (function
   | {
       header_action_type = v_header_action_type;
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
         match v_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_action_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_action_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__action__request_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action__request_header

[@@@deriving.end]

type rule__action__response_header = {
  header_action_type : string prop option; [@option]
  header_name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action__response_header) -> ()

let yojson_of_rule__action__response_header =
  (function
   | {
       header_action_type = v_header_action_type;
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
         match v_header_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_action_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_action_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__action__response_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action__response_header

[@@@deriving.end]

type rule__action = {
  request_header : rule__action__request_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  response_header : rule__action__response_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__action) -> ()

let yojson_of_rule__action =
  (function
   | {
       request_header = v_request_header;
       response_header = v_response_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_response_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__action__response_header)
               v_response_header
           in
           let bnd = "response_header", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_request_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__action__request_header)
               v_request_header
           in
           let bnd = "request_header", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__action

[@@@deriving.end]

type rule__match_condition = {
  negate_condition : bool prop option; [@option]
  operator : string prop;
  selector : string prop option; [@option]
  transform : string prop list option; [@option]
  value : string prop list option; [@option]
  variable : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__match_condition) -> ()

let yojson_of_rule__match_condition =
  (function
   | {
       negate_condition = v_negate_condition;
       operator = v_operator;
       selector = v_selector;
       transform = v_transform;
       value = v_value;
       variable = v_variable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_variable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "variable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transform", arg in
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
         match v_negate_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate_condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__match_condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__match_condition

[@@@deriving.end]

type rule = {
  name : string prop;
  priority : float prop;
  action : rule__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  match_condition : rule__match_condition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       name = v_name;
       priority = v_priority;
       action = v_action;
       match_condition = v_match_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_match_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__match_condition)
               v_match_condition
           in
           let bnd = "match_condition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__action) v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

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

type azurerm_frontdoor_rules_engine = {
  enabled : bool prop option; [@option]
  frontdoor_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_frontdoor_rules_engine) -> ()

let yojson_of_azurerm_frontdoor_rules_engine =
  (function
   | {
       enabled = v_enabled;
       frontdoor_name = v_frontdoor_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frontdoor_name
         in
         ("frontdoor_name", arg) :: bnds
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
    : azurerm_frontdoor_rules_engine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_frontdoor_rules_engine

[@@@deriving.end]

let rule__action__request_header ?header_action_type ?header_name
    ?value () : rule__action__request_header =
  { header_action_type; header_name; value }

let rule__action__response_header ?header_action_type ?header_name
    ?value () : rule__action__response_header =
  { header_action_type; header_name; value }

let rule__action ?(request_header = []) ?(response_header = []) () :
    rule__action =
  { request_header; response_header }

let rule__match_condition ?negate_condition ?selector ?transform
    ?value ?variable ~operator () : rule__match_condition =
  {
    negate_condition;
    operator;
    selector;
    transform;
    value;
    variable;
  }

let rule ?(action = []) ?(match_condition = []) ~name ~priority () :
    rule =
  { name; priority; action; match_condition }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor_rules_engine ?enabled ?id ?(rule = [])
    ?timeouts ~frontdoor_name ~name ~resource_group_name () :
    azurerm_frontdoor_rules_engine =
  {
    enabled;
    frontdoor_name;
    id;
    name;
    resource_group_name;
    rule;
    timeouts;
  }

type t = {
  tf_name : string;
  enabled : bool prop;
  frontdoor_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?enabled ?id ?(rule = []) ?timeouts ~frontdoor_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_frontdoor_rules_engine" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       frontdoor_name = Prop.computed __type __id "frontdoor_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_frontdoor_rules_engine
        (azurerm_frontdoor_rules_engine ?enabled ?id ~rule ?timeouts
           ~frontdoor_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?(rule = []) ?timeouts
    ~frontdoor_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~rule ?timeouts ~frontdoor_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
