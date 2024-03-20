(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_incident = {
  classification : string prop option; [@option]
      (** classification *)
  classification_comment : string prop option; [@option]
      (** classification_comment *)
  labels : string prop list option; [@option]  (** labels *)
  order : float prop;  (** order *)
  owner_id : string prop option; [@option]  (** owner_id *)
  severity : string prop option; [@option]  (** severity *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** action_incident *)

type action_playbook = {
  logic_app_id : string prop;  (** logic_app_id *)
  order : float prop;  (** order *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** action_playbook *)

type condition = {
  operator : string prop;  (** operator *)
  property : string prop;  (** property *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** condition *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_automation_rule = {
  condition_json : string prop option; [@option]
      (** condition_json *)
  display_name : string prop;  (** display_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  expiration : string prop option; [@option]  (** expiration *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  order : float prop;  (** order *)
  triggers_on : string prop option; [@option]  (** triggers_on *)
  triggers_when : string prop option; [@option]  (** triggers_when *)
  action_incident : action_incident list;
  action_playbook : action_playbook list;
  condition : condition list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule *)

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
