(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts *)

type azurerm_sentinel_alert_rule_machine_learning_behavior_analytics = {
  alert_rule_template_guid : string;  (** alert_rule_template_guid *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  timeouts :
    azurerm_sentinel_alert_rule_machine_learning_behavior_analytics__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_machine_learning_behavior_analytics *)

let azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
    ?enabled ?id ?timeouts ~alert_rule_template_guid
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_machine_learning_behavior_analytics"
  in
  let __resource =
    {
      alert_rule_template_guid;
      enabled;
      id;
      log_analytics_workspace_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics
       __resource);
  ()
