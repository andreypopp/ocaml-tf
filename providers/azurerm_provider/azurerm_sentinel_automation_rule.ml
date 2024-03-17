(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_automation_rule__action_incident = {
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
(** azurerm_sentinel_automation_rule__action_incident *)

type azurerm_sentinel_automation_rule__action_playbook = {
  logic_app_id : string prop;  (** logic_app_id *)
  order : float prop;  (** order *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__action_playbook *)

type azurerm_sentinel_automation_rule__condition = {
  operator : string prop;  (** operator *)
  property : string prop;  (** property *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__condition *)

type azurerm_sentinel_automation_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__timeouts *)

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
  action_incident :
    azurerm_sentinel_automation_rule__action_incident list;
  action_playbook :
    azurerm_sentinel_automation_rule__action_playbook list;
  condition : azurerm_sentinel_automation_rule__condition list;
  timeouts : azurerm_sentinel_automation_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule *)

let azurerm_sentinel_automation_rule ?condition_json ?enabled
    ?expiration ?id ?triggers_on ?triggers_when ?timeouts
    ~display_name ~log_analytics_workspace_id ~name ~order
    ~action_incident ~action_playbook ~condition __resource_id =
  let __resource_type = "azurerm_sentinel_automation_rule" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_automation_rule __resource);
  ()
