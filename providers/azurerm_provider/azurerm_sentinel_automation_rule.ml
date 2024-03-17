(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_automation_rule__action_incident = {
  classification : string option; [@option]  (** classification *)
  classification_comment : string option; [@option]
      (** classification_comment *)
  labels : string list option; [@option]  (** labels *)
  order : float;  (** order *)
  owner_id : string option; [@option]  (** owner_id *)
  severity : string option; [@option]  (** severity *)
  status : string option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__action_incident *)

type azurerm_sentinel_automation_rule__action_playbook = {
  logic_app_id : string;  (** logic_app_id *)
  order : float;  (** order *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__action_playbook *)

type azurerm_sentinel_automation_rule__condition = {
  operator : string;  (** operator *)
  property : string;  (** property *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__condition *)

type azurerm_sentinel_automation_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_automation_rule__timeouts *)

type azurerm_sentinel_automation_rule = {
  condition_json : string option; [@option]  (** condition_json *)
  display_name : string;  (** display_name *)
  enabled : bool option; [@option]  (** enabled *)
  expiration : string option; [@option]  (** expiration *)
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  order : float;  (** order *)
  triggers_on : string option; [@option]  (** triggers_on *)
  triggers_when : string option; [@option]  (** triggers_when *)
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
