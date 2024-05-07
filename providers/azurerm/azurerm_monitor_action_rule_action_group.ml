(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition__alert_context = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__alert_context) -> ()

let yojson_of_condition__alert_context =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__alert_context -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__alert_context

[@@@deriving.end]

type condition__alert_rule_id = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__alert_rule_id) -> ()

let yojson_of_condition__alert_rule_id =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__alert_rule_id -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__alert_rule_id

[@@@deriving.end]

type condition__description = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__description) -> ()

let yojson_of_condition__description =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__description -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__description

[@@@deriving.end]

type condition__monitor = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__monitor) -> ()

let yojson_of_condition__monitor =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__monitor

[@@@deriving.end]

type condition__monitor_service = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__monitor_service) -> ()

let yojson_of_condition__monitor_service =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__monitor_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__monitor_service

[@@@deriving.end]

type condition__severity = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__severity) -> ()

let yojson_of_condition__severity =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__severity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__severity

[@@@deriving.end]

type condition__target_resource_type = {
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__target_resource_type) -> ()

let yojson_of_condition__target_resource_type =
  (function
   | { operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition__target_resource_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__target_resource_type

[@@@deriving.end]

type condition = {
  alert_context : condition__alert_context list;
  alert_rule_id : condition__alert_rule_id list;
  description : condition__description list;
  monitor : condition__monitor list;
  monitor_service : condition__monitor_service list;
  severity : condition__severity list;
  target_resource_type : condition__target_resource_type list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       alert_context = v_alert_context;
       alert_rule_id = v_alert_rule_id;
       description = v_description;
       monitor = v_monitor;
       monitor_service = v_monitor_service;
       severity = v_severity;
       target_resource_type = v_target_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__target_resource_type
             v_target_resource_type
         in
         ("target_resource_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__severity v_severity
         in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__monitor_service
             v_monitor_service
         in
         ("monitor_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__monitor v_monitor
         in
         ("monitor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__description
             v_description
         in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__alert_rule_id
             v_alert_rule_id
         in
         ("alert_rule_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__alert_context
             v_alert_context
         in
         ("alert_context", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type scope = {
  resource_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scope) -> ()

let yojson_of_scope =
  (function
   | { resource_ids = v_resource_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_resource_ids
         in
         ("resource_ids", arg) :: bnds
       in
       `Assoc bnds
    : scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scope

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

type azurerm_monitor_action_rule_action_group = {
  action_group_id : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  condition : condition list;
  scope : scope list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_action_rule_action_group) -> ()

let yojson_of_azurerm_monitor_action_rule_action_group =
  (function
   | {
       action_group_id = v_action_group_id;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       condition = v_condition;
       scope = v_scope;
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
         let arg = yojson_of_list yojson_of_scope v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_group_id
         in
         ("action_group_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_action_rule_action_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_action_rule_action_group

[@@@deriving.end]

let condition__alert_context ~operator ~values () :
    condition__alert_context =
  { operator; values }

let condition__alert_rule_id ~operator ~values () :
    condition__alert_rule_id =
  { operator; values }

let condition__description ~operator ~values () :
    condition__description =
  { operator; values }

let condition__monitor ~operator ~values () : condition__monitor =
  { operator; values }

let condition__monitor_service ~operator ~values () :
    condition__monitor_service =
  { operator; values }

let condition__severity ~operator ~values () : condition__severity =
  { operator; values }

let condition__target_resource_type ~operator ~values () :
    condition__target_resource_type =
  { operator; values }

let condition ?(alert_context = []) ?(alert_rule_id = [])
    ?(description = []) ?(monitor = []) ?(monitor_service = [])
    ?(severity = []) ?(target_resource_type = []) () : condition =
  {
    alert_context;
    alert_rule_id;
    description;
    monitor;
    monitor_service;
    severity;
    target_resource_type;
  }

let scope ~resource_ids ~type_ () : scope = { resource_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_action_rule_action_group ?description ?enabled
    ?id ?tags ?(condition = []) ?(scope = []) ?timeouts
    ~action_group_id ~name ~resource_group_name () :
    azurerm_monitor_action_rule_action_group =
  {
    action_group_id;
    description;
    enabled;
    id;
    name;
    resource_group_name;
    tags;
    condition;
    scope;
    timeouts;
  }

type t = {
  tf_name : string;
  action_group_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?enabled ?id ?tags ?(condition = [])
    ?(scope = []) ?timeouts ~action_group_id ~name
    ~resource_group_name __id =
  let __type = "azurerm_monitor_action_rule_action_group" in
  let __attrs =
    ({
       tf_name = __id;
       action_group_id = Prop.computed __type __id "action_group_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_monitor_action_rule_action_group
        (azurerm_monitor_action_rule_action_group ?description
           ?enabled ?id ?tags ~condition ~scope ?timeouts
           ~action_group_id ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?tags
    ?(condition = []) ?(scope = []) ?timeouts ~action_group_id ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?tags ~condition ~scope ?timeouts
      ~action_group_id ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
