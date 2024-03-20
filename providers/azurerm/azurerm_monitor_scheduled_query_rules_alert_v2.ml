(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_groups : string prop list option; [@option]
      (** action_groups *)
  custom_properties : (string * string prop) list option; [@option]
      (** custom_properties *)
}
[@@deriving yojson_of]
(** action *)

type criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** criteria__dimension *)

type criteria__failing_periods = {
  minimum_failing_periods_to_trigger_alert : float prop;
      (** minimum_failing_periods_to_trigger_alert *)
  number_of_evaluation_periods : float prop;
      (** number_of_evaluation_periods *)
}
[@@deriving yojson_of]
(** criteria__failing_periods *)

type criteria = {
  metric_measure_column : string prop option; [@option]
      (** metric_measure_column *)
  operator : string prop;  (** operator *)
  query : string prop;  (** query *)
  resource_id_column : string prop option; [@option]
      (** resource_id_column *)
  threshold : float prop;  (** threshold *)
  time_aggregation_method : string prop;
      (** time_aggregation_method *)
  dimension : criteria__dimension list;
  failing_periods : criteria__failing_periods list;
}
[@@deriving yojson_of]
(** criteria *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_scheduled_query_rules_alert_v2 = {
  auto_mitigation_enabled : bool prop option; [@option]
      (** auto_mitigation_enabled *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  evaluation_frequency : string prop option; [@option]
      (** evaluation_frequency *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mute_actions_after_alert_duration : string prop option; [@option]
      (** mute_actions_after_alert_duration *)
  name : string prop;  (** name *)
  query_time_range_override : string prop option; [@option]
      (** query_time_range_override *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  severity : float prop;  (** severity *)
  skip_query_validation : bool prop option; [@option]
      (** skip_query_validation *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_types : string prop list option; [@option]
      (** target_resource_types *)
  window_duration : string prop;  (** window_duration *)
  workspace_alerts_storage_enabled : bool prop option; [@option]
      (** workspace_alerts_storage_enabled *)
  action : action list;
  criteria : criteria list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_scheduled_query_rules_alert_v2 *)

let action ?action_groups ?custom_properties () : action =
  { action_groups; custom_properties }

let criteria__dimension ~name ~operator ~values () :
    criteria__dimension =
  { name; operator; values }

let criteria__failing_periods
    ~minimum_failing_periods_to_trigger_alert
    ~number_of_evaluation_periods () : criteria__failing_periods =
  {
    minimum_failing_periods_to_trigger_alert;
    number_of_evaluation_periods;
  }

let criteria ?metric_measure_column ?resource_id_column ~operator
    ~query ~threshold ~time_aggregation_method ~dimension
    ~failing_periods () : criteria =
  {
    metric_measure_column;
    operator;
    query;
    resource_id_column;
    threshold;
    time_aggregation_method;
    dimension;
    failing_periods;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_scheduled_query_rules_alert_v2
    ?auto_mitigation_enabled ?description ?display_name ?enabled
    ?evaluation_frequency ?id ?mute_actions_after_alert_duration
    ?query_time_range_override ?skip_query_validation ?tags
    ?target_resource_types ?workspace_alerts_storage_enabled
    ?timeouts ~location ~name ~resource_group_name ~scopes ~severity
    ~window_duration ~action ~criteria () :
    azurerm_monitor_scheduled_query_rules_alert_v2 =
  {
    auto_mitigation_enabled;
    description;
    display_name;
    enabled;
    evaluation_frequency;
    id;
    location;
    mute_actions_after_alert_duration;
    name;
    query_time_range_override;
    resource_group_name;
    scopes;
    severity;
    skip_query_validation;
    tags;
    target_resource_types;
    window_duration;
    workspace_alerts_storage_enabled;
    action;
    criteria;
    timeouts;
  }

type t = {
  auto_mitigation_enabled : bool prop;
  created_with_api_version : string prop;
  description : string prop;
  display_name : string prop;
  enabled : bool prop;
  evaluation_frequency : string prop;
  id : string prop;
  is_a_legacy_log_analytics_rule : bool prop;
  is_workspace_alerts_storage_configured : bool prop;
  location : string prop;
  mute_actions_after_alert_duration : string prop;
  name : string prop;
  query_time_range_override : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  severity : float prop;
  skip_query_validation : bool prop;
  tags : (string * string) list prop;
  target_resource_types : string list prop;
  window_duration : string prop;
  workspace_alerts_storage_enabled : bool prop;
}

let make ?auto_mitigation_enabled ?description ?display_name ?enabled
    ?evaluation_frequency ?id ?mute_actions_after_alert_duration
    ?query_time_range_override ?skip_query_validation ?tags
    ?target_resource_types ?workspace_alerts_storage_enabled
    ?timeouts ~location ~name ~resource_group_name ~scopes ~severity
    ~window_duration ~action ~criteria __id =
  let __type = "azurerm_monitor_scheduled_query_rules_alert_v2" in
  let __attrs =
    ({
       auto_mitigation_enabled =
         Prop.computed __type __id "auto_mitigation_enabled";
       created_with_api_version =
         Prop.computed __type __id "created_with_api_version";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       evaluation_frequency =
         Prop.computed __type __id "evaluation_frequency";
       id = Prop.computed __type __id "id";
       is_a_legacy_log_analytics_rule =
         Prop.computed __type __id "is_a_legacy_log_analytics_rule";
       is_workspace_alerts_storage_configured =
         Prop.computed __type __id
           "is_workspace_alerts_storage_configured";
       location = Prop.computed __type __id "location";
       mute_actions_after_alert_duration =
         Prop.computed __type __id
           "mute_actions_after_alert_duration";
       name = Prop.computed __type __id "name";
       query_time_range_override =
         Prop.computed __type __id "query_time_range_override";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       severity = Prop.computed __type __id "severity";
       skip_query_validation =
         Prop.computed __type __id "skip_query_validation";
       tags = Prop.computed __type __id "tags";
       target_resource_types =
         Prop.computed __type __id "target_resource_types";
       window_duration = Prop.computed __type __id "window_duration";
       workspace_alerts_storage_enabled =
         Prop.computed __type __id "workspace_alerts_storage_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_scheduled_query_rules_alert_v2
        (azurerm_monitor_scheduled_query_rules_alert_v2
           ?auto_mitigation_enabled ?description ?display_name
           ?enabled ?evaluation_frequency ?id
           ?mute_actions_after_alert_duration
           ?query_time_range_override ?skip_query_validation ?tags
           ?target_resource_types ?workspace_alerts_storage_enabled
           ?timeouts ~location ~name ~resource_group_name ~scopes
           ~severity ~window_duration ~action ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_mitigation_enabled ?description
    ?display_name ?enabled ?evaluation_frequency ?id
    ?mute_actions_after_alert_duration ?query_time_range_override
    ?skip_query_validation ?tags ?target_resource_types
    ?workspace_alerts_storage_enabled ?timeouts ~location ~name
    ~resource_group_name ~scopes ~severity ~window_duration ~action
    ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?auto_mitigation_enabled ?description ?display_name ?enabled
      ?evaluation_frequency ?id ?mute_actions_after_alert_duration
      ?query_time_range_override ?skip_query_validation ?tags
      ?target_resource_types ?workspace_alerts_storage_enabled
      ?timeouts ~location ~name ~resource_group_name ~scopes
      ~severity ~window_duration ~action ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
