(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_action_rule_action_group__condition__alert_context = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__alert_context *)

type azurerm_monitor_action_rule_action_group__condition__alert_rule_id = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__alert_rule_id *)

type azurerm_monitor_action_rule_action_group__condition__description = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__description *)

type azurerm_monitor_action_rule_action_group__condition__monitor = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__monitor *)

type azurerm_monitor_action_rule_action_group__condition__monitor_service = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__monitor_service *)

type azurerm_monitor_action_rule_action_group__condition__severity = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__severity *)

type azurerm_monitor_action_rule_action_group__condition__target_resource_type = {
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__target_resource_type *)

type azurerm_monitor_action_rule_action_group__condition = {
  alert_context :
    azurerm_monitor_action_rule_action_group__condition__alert_context
    list;
  alert_rule_id :
    azurerm_monitor_action_rule_action_group__condition__alert_rule_id
    list;
  description :
    azurerm_monitor_action_rule_action_group__condition__description
    list;
  monitor :
    azurerm_monitor_action_rule_action_group__condition__monitor list;
  monitor_service :
    azurerm_monitor_action_rule_action_group__condition__monitor_service
    list;
  severity :
    azurerm_monitor_action_rule_action_group__condition__severity
    list;
  target_resource_type :
    azurerm_monitor_action_rule_action_group__condition__target_resource_type
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition *)

type azurerm_monitor_action_rule_action_group__scope = {
  resource_ids : string list;  (** resource_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__scope *)

type azurerm_monitor_action_rule_action_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__timeouts *)

type azurerm_monitor_action_rule_action_group = {
  action_group_id : string;  (** action_group_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  condition :
    azurerm_monitor_action_rule_action_group__condition list;
  scope : azurerm_monitor_action_rule_action_group__scope list;
  timeouts :
    azurerm_monitor_action_rule_action_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group *)

let azurerm_monitor_action_rule_action_group ?description ?enabled
    ?id ?tags ?timeouts ~action_group_id ~name ~resource_group_name
    ~condition ~scope __resource_id =
  let __resource_type = "azurerm_monitor_action_rule_action_group" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_action_rule_action_group __resource);
  ()
