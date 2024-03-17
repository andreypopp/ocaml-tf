(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_threat_intelligence__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_threat_intelligence__timeouts *)

type azurerm_sentinel_alert_rule_threat_intelligence = {
  alert_rule_template_guid : string;  (** alert_rule_template_guid *)
  enabled : bool option; [@option]  (** enabled *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  timeouts :
    azurerm_sentinel_alert_rule_threat_intelligence__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_threat_intelligence *)

let azurerm_sentinel_alert_rule_threat_intelligence ?enabled
    ?timeouts ~alert_rule_template_guid ~log_analytics_workspace_id
    ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_alert_rule_threat_intelligence"
  in
  let __resource =
    {
      alert_rule_template_guid;
      enabled;
      log_analytics_workspace_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_threat_intelligence
       __resource);
  ()
