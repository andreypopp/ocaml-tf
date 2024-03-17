(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_action_rule_action_group__condition__alert_context = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__alert_context *)

type azurerm_monitor_action_rule_action_group__condition__alert_rule_id = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__alert_rule_id *)

type azurerm_monitor_action_rule_action_group__condition__description = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__description *)

type azurerm_monitor_action_rule_action_group__condition__monitor = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__monitor *)

type azurerm_monitor_action_rule_action_group__condition__monitor_service = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__monitor_service *)

type azurerm_monitor_action_rule_action_group__condition__severity = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__condition__severity *)

type azurerm_monitor_action_rule_action_group__condition__target_resource_type = {
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
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
  resource_ids : string prop list;  (** resource_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__scope *)

type azurerm_monitor_action_rule_action_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group__timeouts *)

type azurerm_monitor_action_rule_action_group = {
  action_group_id : string prop;  (** action_group_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  condition :
    azurerm_monitor_action_rule_action_group__condition list;
  scope : azurerm_monitor_action_rule_action_group__scope list;
  timeouts :
    azurerm_monitor_action_rule_action_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_action_rule_action_group *)

type t = {
  action_group_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_action_rule_action_group ?description ?enabled
    ?id ?tags ?timeouts ~action_group_id ~name ~resource_group_name
    ~condition ~scope __resource_id =
  let __resource_type = "azurerm_monitor_action_rule_action_group" in
  let __resource =
    ({
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
      : azurerm_monitor_action_rule_action_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_action_rule_action_group __resource);
  let __resource_attributes =
    ({
       action_group_id =
         Prop.computed __resource_type __resource_id
           "action_group_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
