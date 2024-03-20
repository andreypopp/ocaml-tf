(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_incident = {
  classification : string prop option; [@option]
  classification_comment : string prop option; [@option]
  labels : string prop list option; [@option]
  order : float prop;
  owner_id : string prop option; [@option]
  severity : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_incident) -> ()

let yojson_of_action_incident =
  (function
   | {
       classification = v_classification;
       classification_comment = v_classification_comment;
       labels = v_labels;
       order = v_order;
       owner_id = v_owner_id;
       severity = v_severity;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "severity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification_comment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action_incident -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_incident

[@@@deriving.end]

type action_playbook = {
  logic_app_id : string prop;
  order : float prop;
  tenant_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_playbook) -> ()

let yojson_of_action_playbook =
  (function
   | {
       logic_app_id = v_logic_app_id;
       order = v_order;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_logic_app_id in
         ("logic_app_id", arg) :: bnds
       in
       `Assoc bnds
    : action_playbook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_playbook

[@@@deriving.end]

type condition = {
  operator : string prop;
  property : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       operator = v_operator;
       property = v_property;
       values = v_values;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_property in
         ("property", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

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

type azurerm_sentinel_automation_rule = {
  condition_json : string prop option; [@option]
  display_name : string prop;
  enabled : bool prop option; [@option]
  expiration : string prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  order : float prop;
  triggers_on : string prop option; [@option]
  triggers_when : string prop option; [@option]
  action_incident : action_incident list;
  action_playbook : action_playbook list;
  condition : condition list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_automation_rule) -> ()

let yojson_of_azurerm_sentinel_automation_rule =
  (function
   | {
       condition_json = v_condition_json;
       display_name = v_display_name;
       enabled = v_enabled;
       expiration = v_expiration;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       order = v_order;
       triggers_on = v_triggers_on;
       triggers_when = v_triggers_when;
       action_incident = v_action_incident;
       action_playbook = v_action_playbook;
       condition = v_condition;
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
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action_playbook v_action_playbook
         in
         ("action_playbook", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action_incident v_action_incident
         in
         ("action_incident", arg) :: bnds
       in
       let bnds =
         match v_triggers_when with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "triggers_when", arg in
             bnd :: bnds
       in
       let bnds =
         match v_triggers_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "triggers_on", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
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
         match v_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_condition_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition_json", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_automation_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_automation_rule

[@@@deriving.end]

let action_incident ?classification ?classification_comment ?labels
    ?owner_id ?severity ?status ~order () : action_incident =
  {
    classification;
    classification_comment;
    labels;
    order;
    owner_id;
    severity;
    status;
  }

let action_playbook ?tenant_id ~logic_app_id ~order () :
    action_playbook =
  { logic_app_id; order; tenant_id }

let condition ~operator ~property ~values () : condition =
  { operator; property; values }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_automation_rule ?condition_json ?enabled
    ?expiration ?id ?triggers_on ?triggers_when ?timeouts
    ~display_name ~log_analytics_workspace_id ~name ~order
    ~action_incident ~action_playbook ~condition () :
    azurerm_sentinel_automation_rule =
  {
    condition_json;
    display_name;
    enabled;
    expiration;
    id;
    log_analytics_workspace_id;
    name;
    order;
    triggers_on;
    triggers_when;
    action_incident;
    action_playbook;
    condition;
    timeouts;
  }

type t = {
  condition_json : string prop;
  display_name : string prop;
  enabled : bool prop;
  expiration : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  order : float prop;
  triggers_on : string prop;
  triggers_when : string prop;
}

let make ?condition_json ?enabled ?expiration ?id ?triggers_on
    ?triggers_when ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~order ~action_incident
    ~action_playbook ~condition __id =
  let __type = "azurerm_sentinel_automation_rule" in
  let __attrs =
    ({
       condition_json = Prop.computed __type __id "condition_json";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       order = Prop.computed __type __id "order";
       triggers_on = Prop.computed __type __id "triggers_on";
       triggers_when = Prop.computed __type __id "triggers_when";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_automation_rule
        (azurerm_sentinel_automation_rule ?condition_json ?enabled
           ?expiration ?id ?triggers_on ?triggers_when ?timeouts
           ~display_name ~log_analytics_workspace_id ~name ~order
           ~action_incident ~action_playbook ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?condition_json ?enabled ?expiration ?id
    ?triggers_on ?triggers_when ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~order ~action_incident
    ~action_playbook ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?condition_json ?enabled ?expiration ?id ?triggers_on
      ?triggers_when ?timeouts ~display_name
      ~log_analytics_workspace_id ~name ~order ~action_incident
      ~action_playbook ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
