(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alert_details_override__dynamic_property = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alert_details_override__dynamic_property) -> ()

let yojson_of_alert_details_override__dynamic_property =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : alert_details_override__dynamic_property ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alert_details_override__dynamic_property

[@@@deriving.end]

type alert_details_override = {
  description_format : string prop option; [@option]
  display_name_format : string prop option; [@option]
  severity_column_name : string prop option; [@option]
  tactics_column_name : string prop option; [@option]
  dynamic_property : alert_details_override__dynamic_property list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alert_details_override) -> ()

let yojson_of_alert_details_override =
  (function
   | {
       description_format = v_description_format;
       display_name_format = v_display_name_format;
       severity_column_name = v_severity_column_name;
       tactics_column_name = v_tactics_column_name;
       dynamic_property = v_dynamic_property;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_alert_details_override__dynamic_property
             v_dynamic_property
         in
         ("dynamic_property", arg) :: bnds
       in
       let bnds =
         match v_tactics_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tactics_column_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_severity_column_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "severity_column_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alert_details_override -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alert_details_override

[@@@deriving.end]

type entity_mapping__field_mapping = {
  column_name : string prop;
  identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entity_mapping__field_mapping) -> ()

let yojson_of_entity_mapping__field_mapping =
  (function
   | { column_name = v_column_name; identifier = v_identifier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : entity_mapping__field_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entity_mapping__field_mapping

[@@@deriving.end]

type entity_mapping = {
  entity_type : string prop;
  field_mapping : entity_mapping__field_mapping list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entity_mapping) -> ()

let yojson_of_entity_mapping =
  (function
   | { entity_type = v_entity_type; field_mapping = v_field_mapping }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_entity_mapping__field_mapping
             v_field_mapping
         in
         ("field_mapping", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_entity_type in
         ("entity_type", arg) :: bnds
       in
       `Assoc bnds
    : entity_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entity_mapping

[@@@deriving.end]

type event_grouping = { aggregation_method : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_grouping) -> ()

let yojson_of_event_grouping =
  (function
   | { aggregation_method = v_aggregation_method } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_aggregation_method
         in
         ("aggregation_method", arg) :: bnds
       in
       `Assoc bnds
    : event_grouping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_grouping

[@@@deriving.end]

type incident_configuration__grouping = {
  enabled : bool prop option; [@option]
  entity_matching_method : string prop option; [@option]
  group_by_alert_details : string prop list option; [@option]
  group_by_custom_details : string prop list option; [@option]
  group_by_entities : string prop list option; [@option]
  lookback_duration : string prop option; [@option]
  reopen_closed_incidents : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : incident_configuration__grouping) -> ()

let yojson_of_incident_configuration__grouping =
  (function
   | {
       enabled = v_enabled;
       entity_matching_method = v_entity_matching_method;
       group_by_alert_details = v_group_by_alert_details;
       group_by_custom_details = v_group_by_custom_details;
       group_by_entities = v_group_by_entities;
       lookback_duration = v_lookback_duration;
       reopen_closed_incidents = v_reopen_closed_incidents;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reopen_closed_incidents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reopen_closed_incidents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lookback_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lookback_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_entities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_entities", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_custom_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_custom_details", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_alert_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "group_by_alert_details", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entity_matching_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entity_matching_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : incident_configuration__grouping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_incident_configuration__grouping

[@@@deriving.end]

type incident_configuration = {
  create_incident : bool prop;
  grouping : incident_configuration__grouping list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : incident_configuration) -> ()

let yojson_of_incident_configuration =
  (function
   | { create_incident = v_create_incident; grouping = v_grouping }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_incident_configuration__grouping
             v_grouping
         in
         ("grouping", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_create_incident in
         ("create_incident", arg) :: bnds
       in
       `Assoc bnds
    : incident_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_incident_configuration

[@@@deriving.end]

type sentinel_entity_mapping = { column_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sentinel_entity_mapping) -> ()

let yojson_of_sentinel_entity_mapping =
  (function
   | { column_name = v_column_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_name in
         ("column_name", arg) :: bnds
       in
       `Assoc bnds
    : sentinel_entity_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sentinel_entity_mapping

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_sentinel_alert_rule_scheduled = {
  alert_rule_template_guid : string prop option; [@option]
  alert_rule_template_version : string prop option; [@option]
  custom_details : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  display_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  query : string prop;
  query_frequency : string prop option; [@option]
  query_period : string prop option; [@option]
  severity : string prop;
  suppression_duration : string prop option; [@option]
  suppression_enabled : bool prop option; [@option]
  tactics : string prop list option; [@option]
  techniques : string prop list option; [@option]
  trigger_operator : string prop option; [@option]
  trigger_threshold : float prop option; [@option]
  alert_details_override : alert_details_override list;
  entity_mapping : entity_mapping list;
  event_grouping : event_grouping list;
  incident_configuration : incident_configuration list;
  sentinel_entity_mapping : sentinel_entity_mapping list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_alert_rule_scheduled) -> ()

let yojson_of_azurerm_sentinel_alert_rule_scheduled =
  (function
   | {
       alert_rule_template_guid = v_alert_rule_template_guid;
       alert_rule_template_version = v_alert_rule_template_version;
       custom_details = v_custom_details;
       description = v_description;
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
       query = v_query;
       query_frequency = v_query_frequency;
       query_period = v_query_period;
       severity = v_severity;
       suppression_duration = v_suppression_duration;
       suppression_enabled = v_suppression_enabled;
       tactics = v_tactics;
       techniques = v_techniques;
       trigger_operator = v_trigger_operator;
       trigger_threshold = v_trigger_threshold;
       alert_details_override = v_alert_details_override;
       entity_mapping = v_entity_mapping;
       event_grouping = v_event_grouping;
       incident_configuration = v_incident_configuration;
       sentinel_entity_mapping = v_sentinel_entity_mapping;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sentinel_entity_mapping
             v_sentinel_entity_mapping
         in
         ("sentinel_entity_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_incident_configuration
             v_incident_configuration
         in
         ("incident_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_event_grouping v_event_grouping
         in
         ("event_grouping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_entity_mapping v_entity_mapping
         in
         ("entity_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_alert_details_override
             v_alert_details_override
         in
         ("alert_details_override", arg) :: bnds
       in
       let bnds =
         match v_trigger_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "trigger_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trigger_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trigger_operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_techniques with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "techniques", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tactics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tactics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_suppression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suppression_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_suppression_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "suppression_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         match v_query_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_query_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_details with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "custom_details", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert_rule_template_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alert_rule_template_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alert_rule_template_guid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alert_rule_template_guid", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_alert_rule_scheduled ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_alert_rule_scheduled

[@@@deriving.end]

let alert_details_override__dynamic_property ~name ~value () :
    alert_details_override__dynamic_property =
  { name; value }

let alert_details_override ?description_format ?display_name_format
    ?severity_column_name ?tactics_column_name ~dynamic_property () :
    alert_details_override =
  {
    description_format;
    display_name_format;
    severity_column_name;
    tactics_column_name;
    dynamic_property;
  }

let entity_mapping__field_mapping ~column_name ~identifier () :
    entity_mapping__field_mapping =
  { column_name; identifier }

let entity_mapping ~entity_type ~field_mapping () : entity_mapping =
  { entity_type; field_mapping }

let event_grouping ~aggregation_method () : event_grouping =
  { aggregation_method }

let incident_configuration__grouping ?enabled ?entity_matching_method
    ?group_by_alert_details ?group_by_custom_details
    ?group_by_entities ?lookback_duration ?reopen_closed_incidents ()
    : incident_configuration__grouping =
  {
    enabled;
    entity_matching_method;
    group_by_alert_details;
    group_by_custom_details;
    group_by_entities;
    lookback_duration;
    reopen_closed_incidents;
  }

let incident_configuration ~create_incident ~grouping () :
    incident_configuration =
  { create_incident; grouping }

let sentinel_entity_mapping ~column_name () : sentinel_entity_mapping
    =
  { column_name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_alert_rule_scheduled ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?id ?query_frequency ?query_period ?suppression_duration
    ?suppression_enabled ?tactics ?techniques ?trigger_operator
    ?trigger_threshold ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~query ~severity
    ~alert_details_override ~entity_mapping ~event_grouping
    ~incident_configuration ~sentinel_entity_mapping () :
    azurerm_sentinel_alert_rule_scheduled =
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

let make ?alert_rule_template_guid ?alert_rule_template_version
    ?custom_details ?description ?enabled ?id ?query_frequency
    ?query_period ?suppression_duration ?suppression_enabled ?tactics
    ?techniques ?trigger_operator ?trigger_threshold ?timeouts
    ~display_name ~log_analytics_workspace_id ~name ~query ~severity
    ~alert_details_override ~entity_mapping ~event_grouping
    ~incident_configuration ~sentinel_entity_mapping __id =
  let __type = "azurerm_sentinel_alert_rule_scheduled" in
  let __attrs =
    ({
       alert_rule_template_guid =
         Prop.computed __type __id "alert_rule_template_guid";
       alert_rule_template_version =
         Prop.computed __type __id "alert_rule_template_version";
       custom_details = Prop.computed __type __id "custom_details";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       query = Prop.computed __type __id "query";
       query_frequency = Prop.computed __type __id "query_frequency";
       query_period = Prop.computed __type __id "query_period";
       severity = Prop.computed __type __id "severity";
       suppression_duration =
         Prop.computed __type __id "suppression_duration";
       suppression_enabled =
         Prop.computed __type __id "suppression_enabled";
       tactics = Prop.computed __type __id "tactics";
       techniques = Prop.computed __type __id "techniques";
       trigger_operator =
         Prop.computed __type __id "trigger_operator";
       trigger_threshold =
         Prop.computed __type __id "trigger_threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_alert_rule_scheduled
        (azurerm_sentinel_alert_rule_scheduled
           ?alert_rule_template_guid ?alert_rule_template_version
           ?custom_details ?description ?enabled ?id ?query_frequency
           ?query_period ?suppression_duration ?suppression_enabled
           ?tactics ?techniques ?trigger_operator ?trigger_threshold
           ?timeouts ~display_name ~log_analytics_workspace_id ~name
           ~query ~severity ~alert_details_override ~entity_mapping
           ~event_grouping ~incident_configuration
           ~sentinel_entity_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?alert_rule_template_guid
    ?alert_rule_template_version ?custom_details ?description
    ?enabled ?id ?query_frequency ?query_period ?suppression_duration
    ?suppression_enabled ?tactics ?techniques ?trigger_operator
    ?trigger_threshold ?timeouts ~display_name
    ~log_analytics_workspace_id ~name ~query ~severity
    ~alert_details_override ~entity_mapping ~event_grouping
    ~incident_configuration ~sentinel_entity_mapping __id =
  let (r : _ Tf_core.resource) =
    make ?alert_rule_template_guid ?alert_rule_template_version
      ?custom_details ?description ?enabled ?id ?query_frequency
      ?query_period ?suppression_duration ?suppression_enabled
      ?tactics ?techniques ?trigger_operator ?trigger_threshold
      ?timeouts ~display_name ~log_analytics_workspace_id ~name
      ~query ~severity ~alert_details_override ~entity_mapping
      ~event_grouping ~incident_configuration
      ~sentinel_entity_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
