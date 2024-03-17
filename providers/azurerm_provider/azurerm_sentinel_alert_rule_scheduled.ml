(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property *)

type azurerm_sentinel_alert_rule_scheduled__alert_details_override = {
  description_format : string prop option; [@option]
      (** description_format *)
  display_name_format : string prop option; [@option]
      (** display_name_format *)
  severity_column_name : string prop option; [@option]
      (** severity_column_name *)
  tactics_column_name : string prop option; [@option]
      (** tactics_column_name *)
  dynamic_property :
    azurerm_sentinel_alert_rule_scheduled__alert_details_override__dynamic_property
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__alert_details_override *)

type azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping = {
  column_name : string prop;  (** column_name *)
  identifier : string prop;  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping *)

type azurerm_sentinel_alert_rule_scheduled__entity_mapping = {
  entity_type : string prop;  (** entity_type *)
  field_mapping :
    azurerm_sentinel_alert_rule_scheduled__entity_mapping__field_mapping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__entity_mapping *)

type azurerm_sentinel_alert_rule_scheduled__event_grouping = {
  aggregation_method : string prop;  (** aggregation_method *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__event_grouping *)

type azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping = {
  enabled : bool prop option; [@option]  (** enabled *)
  entity_matching_method : string prop option; [@option]
      (** entity_matching_method *)
  group_by_alert_details : string prop list option; [@option]
      (** group_by_alert_details *)
  group_by_custom_details : string prop list option; [@option]
      (** group_by_custom_details *)
  group_by_entities : string prop list option; [@option]
      (** group_by_entities *)
  lookback_duration : string prop option; [@option]
      (** lookback_duration *)
  reopen_closed_incidents : bool prop option; [@option]
      (** reopen_closed_incidents *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping *)

type azurerm_sentinel_alert_rule_scheduled__incident_configuration = {
  create_incident : bool prop;  (** create_incident *)
  grouping :
    azurerm_sentinel_alert_rule_scheduled__incident_configuration__grouping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__incident_configuration *)

type azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping = {
  column_name : string prop;  (** column_name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__sentinel_entity_mapping *)

type azurerm_sentinel_alert_rule_scheduled__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_scheduled__timeouts *)

type azurerm_sentinel_alert_rule_scheduled = {
  alert_rule_template_guid : string prop option; [@option]
      (** alert_rule_template_guid *)
  alert_rule_template_version : string prop option; [@option]
      (** alert_rule_template_version *)
  custom_details : (string * string prop) list option; [@option]
      (** custom_details *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  query : string prop;  (** query *)
  query_frequency : string prop option; [@option]
      (** query_frequency *)
  query_period : string prop option; [@option]  (** query_period *)
  severity : string prop;  (** severity *)
  suppression_duration : string prop option; [@option]
      (** suppression_duration *)
  suppression_enabled : bool prop option; [@option]
      (** suppression_enabled *)
  tactics : string prop list option; [@option]  (** tactics *)
  techniques : string prop list option; [@option]  (** techniques *)
  trigger_operator : string prop option; [@option]
      (** trigger_operator *)
  trigger_threshold : float prop option; [@option]
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

type t = {
  alert_rule_template_guid : string prop;
  alert_rule_template_version : string prop;
  custom_details : (string * string) list prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  query_frequency : string prop;
  query_period : string prop;
  severity : string prop;
  suppression_duration : string prop;
  suppression_enabled : bool prop;
  tactics : string list prop;
  techniques : string list prop;
  trigger_operator : string prop;
  trigger_threshold : float prop;
}

let azurerm_sentinel_alert_rule_scheduled ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?id ?query_frequency ?query_period ?suppression_duration
    ?suppression_enabled ?tactics ?techniques ?trigger_operator
    ?trigger_threshold ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~query ~severity
    ~alert_details_override ~entity_mapping ~event_grouping
    ~incident_configuration ~sentinel_entity_mapping __resource_id =
  let __resource_type = "azurerm_sentinel_alert_rule_scheduled" in
  let __resource =
    ({
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
      : azurerm_sentinel_alert_rule_scheduled)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_scheduled __resource);
  let __resource_attributes =
    ({
       alert_rule_template_guid =
         Prop.computed __resource_type __resource_id
           "alert_rule_template_guid";
       alert_rule_template_version =
         Prop.computed __resource_type __resource_id
           "alert_rule_template_version";
       custom_details =
         Prop.computed __resource_type __resource_id "custom_details";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       query = Prop.computed __resource_type __resource_id "query";
       query_frequency =
         Prop.computed __resource_type __resource_id
           "query_frequency";
       query_period =
         Prop.computed __resource_type __resource_id "query_period";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       suppression_duration =
         Prop.computed __resource_type __resource_id
           "suppression_duration";
       suppression_enabled =
         Prop.computed __resource_type __resource_id
           "suppression_enabled";
       tactics =
         Prop.computed __resource_type __resource_id "tactics";
       techniques =
         Prop.computed __resource_type __resource_id "techniques";
       trigger_operator =
         Prop.computed __resource_type __resource_id
           "trigger_operator";
       trigger_threshold =
         Prop.computed __resource_type __resource_id
           "trigger_threshold";
     }
      : t)
  in
  __resource_attributes
