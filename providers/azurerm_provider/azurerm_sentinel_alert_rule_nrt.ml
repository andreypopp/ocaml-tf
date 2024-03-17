(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property *)

type azurerm_sentinel_alert_rule_nrt__alert_details_override = {
  description_format : string option; [@option]
      (** description_format *)
  display_name_format : string option; [@option]
      (** display_name_format *)
  severity_column_name : string option; [@option]
      (** severity_column_name *)
  tactics_column_name : string option; [@option]
      (** tactics_column_name *)
  dynamic_property :
    azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__alert_details_override *)

type azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping = {
  column_name : string;  (** column_name *)
  identifier : string;  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping *)

type azurerm_sentinel_alert_rule_nrt__entity_mapping = {
  entity_type : string;  (** entity_type *)
  field_mapping :
    azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__entity_mapping *)

type azurerm_sentinel_alert_rule_nrt__event_grouping = {
  aggregation_method : string;  (** aggregation_method *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__event_grouping *)

type azurerm_sentinel_alert_rule_nrt__incident__grouping = {
  by_alert_details : string list option; [@option]
      (** by_alert_details *)
  by_custom_details : string list option; [@option]
      (** by_custom_details *)
  by_entities : string list option; [@option]  (** by_entities *)
  enabled : bool option; [@option]  (** enabled *)
  entity_matching_method : string option; [@option]
      (** entity_matching_method *)
  lookback_duration : string option; [@option]
      (** lookback_duration *)
  reopen_closed_incidents : bool option; [@option]
      (** reopen_closed_incidents *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__incident__grouping *)

type azurerm_sentinel_alert_rule_nrt__incident = {
  create_incident_enabled : bool;  (** create_incident_enabled *)
  grouping : azurerm_sentinel_alert_rule_nrt__incident__grouping list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__incident *)

type azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping = {
  column_name : string;  (** column_name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping *)

type azurerm_sentinel_alert_rule_nrt__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__timeouts *)

type azurerm_sentinel_alert_rule_nrt = {
  alert_rule_template_guid : string option; [@option]
      (** alert_rule_template_guid *)
  alert_rule_template_version : string option; [@option]
      (** alert_rule_template_version *)
  custom_details : (string * string) list option; [@option]
      (** custom_details *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  query : string;  (** query *)
  severity : string;  (** severity *)
  suppression_duration : string option; [@option]
      (** suppression_duration *)
  suppression_enabled : bool option; [@option]
      (** suppression_enabled *)
  tactics : string list option; [@option]  (** tactics *)
  techniques : string list option; [@option]  (** techniques *)
  alert_details_override :
    azurerm_sentinel_alert_rule_nrt__alert_details_override list;
  entity_mapping :
    azurerm_sentinel_alert_rule_nrt__entity_mapping list;
  event_grouping :
    azurerm_sentinel_alert_rule_nrt__event_grouping list;
  incident : azurerm_sentinel_alert_rule_nrt__incident list;
  sentinel_entity_mapping :
    azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping list;
  timeouts : azurerm_sentinel_alert_rule_nrt__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt *)

let azurerm_sentinel_alert_rule_nrt ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?id ?suppression_duration ?suppression_enabled ?tactics
    ?techniques ?timeouts ~display_name ~log_analytics_workspace_id
    ~name ~query ~severity ~alert_details_override ~entity_mapping
    ~event_grouping ~incident ~sentinel_entity_mapping __resource_id
    =
  let __resource_type = "azurerm_sentinel_alert_rule_nrt" in
  let __resource =
    {
      alert_rule_template_guid;
      alert_rule_template_version;
      custom_details;
      description;
      display_name;
      enabled;
      id;
      log_analytics_workspace_id;
      name;
      query;
      severity;
      suppression_duration;
      suppression_enabled;
      tactics;
      techniques;
      alert_details_override;
      entity_mapping;
      event_grouping;
      incident;
      sentinel_entity_mapping;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_nrt __resource);
  ()
