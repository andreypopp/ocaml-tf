(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sentinel_alert_rule_fusion__source__sub_type = {
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  severities_allowed : string list;  (** severities_allowed *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_fusion__source__sub_type *)

type azurerm_sentinel_alert_rule_fusion__source = {
  enabled : bool option; [@option]  (** enabled *)
  name : string;  (** name *)
  sub_type :
    azurerm_sentinel_alert_rule_fusion__source__sub_type list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_fusion__source *)

type azurerm_sentinel_alert_rule_fusion__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_fusion__timeouts *)

type azurerm_sentinel_alert_rule_fusion = {
  alert_rule_template_guid : string;  (** alert_rule_template_guid *)
  enabled : bool option; [@option]  (** enabled *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  source : azurerm_sentinel_alert_rule_fusion__source list;
  timeouts : azurerm_sentinel_alert_rule_fusion__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_fusion *)

let azurerm_sentinel_alert_rule_fusion ?enabled ?timeouts
    ~alert_rule_template_guid ~log_analytics_workspace_id ~name
    ~source __resource_id =
  let __resource_type = "azurerm_sentinel_alert_rule_fusion" in
  let __resource =
    {
      alert_rule_template_guid;
      enabled;
      log_analytics_workspace_id;
      name;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_fusion __resource);
  ()