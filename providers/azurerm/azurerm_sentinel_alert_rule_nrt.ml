(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property *)

type azurerm_sentinel_alert_rule_nrt__alert_details_override = {
  description_format : string prop option; [@option]
      (** description_format *)
  display_name_format : string prop option; [@option]
      (** display_name_format *)
  severity_column_name : string prop option; [@option]
      (** severity_column_name *)
  tactics_column_name : string prop option; [@option]
      (** tactics_column_name *)
  dynamic_property :
    azurerm_sentinel_alert_rule_nrt__alert_details_override__dynamic_property
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__alert_details_override *)

type azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping = {
  column_name : string prop;  (** column_name *)
  identifier : string prop;  (** identifier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping *)

type azurerm_sentinel_alert_rule_nrt__entity_mapping = {
  entity_type : string prop;  (** entity_type *)
  field_mapping :
    azurerm_sentinel_alert_rule_nrt__entity_mapping__field_mapping
    list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__entity_mapping *)

type azurerm_sentinel_alert_rule_nrt__event_grouping = {
  aggregation_method : string prop;  (** aggregation_method *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__event_grouping *)

type azurerm_sentinel_alert_rule_nrt__incident__grouping = {
  by_alert_details : string prop list option; [@option]
      (** by_alert_details *)
  by_custom_details : string prop list option; [@option]
      (** by_custom_details *)
  by_entities : string prop list option; [@option]
      (** by_entities *)
  enabled : bool prop option; [@option]  (** enabled *)
  entity_matching_method : string prop option; [@option]
      (** entity_matching_method *)
  lookback_duration : string prop option; [@option]
      (** lookback_duration *)
  reopen_closed_incidents : bool prop option; [@option]
      (** reopen_closed_incidents *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__incident__grouping *)

type azurerm_sentinel_alert_rule_nrt__incident = {
  create_incident_enabled : bool prop;
      (** create_incident_enabled *)
  grouping : azurerm_sentinel_alert_rule_nrt__incident__grouping list;
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__incident *)

type azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping = {
  column_name : string prop;  (** column_name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__sentinel_entity_mapping *)

type azurerm_sentinel_alert_rule_nrt__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_alert_rule_nrt__timeouts *)

type azurerm_sentinel_alert_rule_nrt = {
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
  severity : string prop;  (** severity *)
  suppression_duration : string prop option; [@option]
      (** suppression_duration *)
  suppression_enabled : bool prop option; [@option]
      (** suppression_enabled *)
  tactics : string prop list option; [@option]  (** tactics *)
  techniques : string prop list option; [@option]  (** techniques *)
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
  severity : string prop;
  suppression_duration : string prop;
  suppression_enabled : bool prop;
  tactics : string list prop;
  techniques : string list prop;
}

let azurerm_sentinel_alert_rule_nrt ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?id ?suppression_duration ?suppression_enabled ?tactics
    ?techniques ?timeouts ~display_name ~log_analytics_workspace_id
    ~name ~query ~severity ~alert_details_override ~entity_mapping
    ~event_grouping ~incident ~sentinel_entity_mapping __resource_id
    =
  let __resource_type = "azurerm_sentinel_alert_rule_nrt" in
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
      : azurerm_sentinel_alert_rule_nrt)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_alert_rule_nrt __resource);
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
     }
      : t)
  in
  __resource_attributes
