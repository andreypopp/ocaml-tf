(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property *)

type azurerm_sentinel_alert_rule_scheduled__alert_details_override = {
  description_format : string option; [@option]
      (** description_format *)
  display_name_format : string option; [@option]
      (** display_name_format *)
  severity_column_name : string option; [@option]
      (** severity_column_name *)
  tactics_column_name : string option; [@option]
      (** tactics_column_name *)
  dynamic_property :
    azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__alert_details_override *)

type azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping = {
  column_name : string;  (** column_name *)
  identifier : string;  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping *)

type azurerm_sentinel_alert_rule_scheduled__entity_mapping = {
  entity_type : string;  (** entity_type *)
  field_mapping :
    azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__entity_mapping *)

type azurerm_sentinel_alert_rule_scheduled__event_grouping = {
  aggregation_method : string;  (** aggregation_method *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__event_grouping *)

type azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping = {
  enabled : bool option; [@option]  (** enabled *)
  entity_matching_method : string option; [@option]
      (** entity_matching_method *)
  group_by_alert_details : string list option; [@option]
      (** group_by_alert_details *)
  group_by_custom_details : string list option; [@option]
      (** group_by_custom_details *)
  group_by_entities : string list option; [@option]
      (** group_by_entities *)
  lookback_duration : string option; [@option]
      (** lookback_duration *)
  reopen_closed_incidents : bool option; [@option]
      (** reopen_closed_incidents *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping *)

type azurerm_sentinel_alert_rule_scheduled__incident_configuration = {
  create_incident : bool;  (** create_incident *)
  grouping :
    azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__incident_configuration *)

type azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping = {
  column_name : string;  (** column_name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping *)

type azurerm_sentinel_alert_rule_scheduled__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__timeouts *)

type azurerm_sentinel_alert_rule_scheduled = {
  alert_rule_template_guid : string option; [@option]
      (** alert_rule_template_guid *)
  alert_rule_template_version : string option; [@option]
      (** alert_rule_template_version *)
  custom_details : (string * string) list option; [@option]
      (** custom_details *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  enabled : bool option; [@option]  (** enabled *)
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  name : string;  (** name *)
  query : string;  (** query *)
  query_frequency : string option; [@option]  (** query_frequency *)
  query_period : string option; [@option]  (** query_period *)
  severity : string;  (** severity *)
  suppression_duration : string option; [@option]
      (** suppression_duration *)
  suppression_enabled : bool option; [@option]
      (** suppression_enabled *)
  tactics : string list option; [@option]  (** tactics *)
  techniques : string list option; [@option]  (** techniques *)
  trigger_operator : string option; [@option]
      (** trigger_operator *)
  trigger_threshold : float option; [@option]
      (** trigger_threshold *)
  alert_details_override :
    azurerm_sentinel_alert_rule_scheduled__alert_details_override
    list;
  entity_mapping :
    azurerm_sentinel_alert_rule_scheduled__entity_mapping list;
  event_grouping :
    azurerm_sentinel_alert_rule_scheduled__event_grouping list;
  incident_configuration :
    azurerm_sentinel_alert_rule_scheduled__incident_configuration
    list;
  sentinel_entity_mapping :
    azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping
    list;
  timeouts : azurerm_sentinel_alert_rule_scheduled__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled *)

let azurerm_sentinel_alert_rule_scheduled ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?query_frequency ?query_period ?suppression_duration
    ?suppression_enabled ?tactics ?techniques ?trigger_operator
    ?trigger_threshold ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~query ~severity
    ~alert_details_override ~entity_mapping ~event_grouping
    ~incident_configuration ~sentinel_entity_mapping __resource_id =
  let __resource_type = "azurerm_sentinel_alert_rule_scheduled" in
  let __resource =
    {
      alert_rule_template_guid;
      alert_rule_template_version;
      custom_details;
      description;
      display_name;
      enabled;
      log_analytics_workspace_id;
      name;
      query;
      query_frequency;
      query_period;
      severity;
      suppression_duration;
      suppression_enabled;
      tactics;
      techniques;
      trigger_operator;
      trigger_threshold;
      alert_details_override;
      entity_mapping;
      event_grouping;
      incident_configuration;
      sentinel_entity_mapping;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_scheduled __resource);
  ()
