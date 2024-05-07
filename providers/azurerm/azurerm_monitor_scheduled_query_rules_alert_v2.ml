(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_groups : string prop list option; [@option]
  custom_properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       action_groups = v_action_groups;
       custom_properties = v_custom_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_custom_properties with
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
             let bnd = "custom_properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "action_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type criteria__dimension = {
  name : string prop;
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__dimension) -> ()

let yojson_of_criteria__dimension =
  (function
   | { name = v_name; operator = v_operator; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : criteria__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__dimension

[@@@deriving.end]

type criteria__failing_periods = {
  minimum_failing_periods_to_trigger_alert : float prop;
  number_of_evaluation_periods : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria__failing_periods) -> ()

let yojson_of_criteria__failing_periods =
  (function
   | {
       minimum_failing_periods_to_trigger_alert =
         v_minimum_failing_periods_to_trigger_alert;
       number_of_evaluation_periods = v_number_of_evaluation_periods;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_number_of_evaluation_periods
         in
         ("number_of_evaluation_periods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_minimum_failing_periods_to_trigger_alert
         in
         ("minimum_failing_periods_to_trigger_alert", arg) :: bnds
       in
       `Assoc bnds
    : criteria__failing_periods -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria__failing_periods

[@@@deriving.end]

type criteria = {
  metric_measure_column : string prop option; [@option]
  operator : string prop;
  query : string prop;
  resource_id_column : string prop option; [@option]
  threshold : float prop;
  time_aggregation_method : string prop;
  dimension : criteria__dimension list;
  failing_periods : criteria__failing_periods list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria) -> ()

let yojson_of_criteria =
  (function
   | {
       metric_measure_column = v_metric_measure_column;
       operator = v_operator;
       query = v_query;
       resource_id_column = v_resource_id_column;
       threshold = v_threshold;
       time_aggregation_method = v_time_aggregation_method;
       dimension = v_dimension;
       failing_periods = v_failing_periods;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_criteria__failing_periods
             v_failing_periods
         in
         ("failing_periods", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_criteria__dimension v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_time_aggregation_method
         in
         ("time_aggregation_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         match v_resource_id_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id_column", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_query in
         ("query", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         match v_metric_measure_column with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_measure_column", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria

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

type azurerm_monitor_scheduled_query_rules_alert_v2 = {
  auto_mitigation_enabled : bool prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enabled : bool prop option; [@option]
  evaluation_frequency : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  mute_actions_after_alert_duration : string prop option; [@option]
  name : string prop;
  query_time_range_override : string prop option; [@option]
  resource_group_name : string prop;
  scopes : string prop list;
  severity : float prop;
  skip_query_validation : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  target_resource_types : string prop list option; [@option]
  window_duration : string prop;
  workspace_alerts_storage_enabled : bool prop option; [@option]
  action : action list;
  criteria : criteria list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_monitor_scheduled_query_rules_alert_v2) -> ()

let yojson_of_azurerm_monitor_scheduled_query_rules_alert_v2 =
  (function
   | {
       auto_mitigation_enabled = v_auto_mitigation_enabled;
       description = v_description;
       display_name = v_display_name;
       enabled = v_enabled;
       evaluation_frequency = v_evaluation_frequency;
       id = v_id;
       location = v_location;
       mute_actions_after_alert_duration =
         v_mute_actions_after_alert_duration;
       name = v_name;
       query_time_range_override = v_query_time_range_override;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       severity = v_severity;
       skip_query_validation = v_skip_query_validation;
       tags = v_tags;
       target_resource_types = v_target_resource_types;
       window_duration = v_window_duration;
       workspace_alerts_storage_enabled =
         v_workspace_alerts_storage_enabled;
       action = v_action;
       criteria = v_criteria;
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
         let arg = yojson_of_list yojson_of_criteria v_criteria in
         ("criteria", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         match v_workspace_alerts_storage_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "workspace_alerts_storage_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_window_duration
         in
         ("window_duration", arg) :: bnds
       in
       let bnds =
         match v_target_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_query_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_query_validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_severity in
         ("severity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_scopes
         in
         ("scopes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_query_time_range_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query_time_range_override", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mute_actions_after_alert_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mute_actions_after_alert_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_evaluation_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_frequency", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
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
         match v_auto_mitigation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_mitigation_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_scheduled_query_rules_alert_v2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_scheduled_query_rules_alert_v2

[@@@deriving.end]

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

let criteria ?metric_measure_column ?resource_id_column
    ?(dimension = []) ?(failing_periods = []) ~operator ~query
    ~threshold ~time_aggregation_method () : criteria =
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
    ?(action = []) ?timeouts ~location ~name ~resource_group_name
    ~scopes ~severity ~window_duration ~criteria () :
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
  tf_name : string;
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
    ?(action = []) ?timeouts ~location ~name ~resource_group_name
    ~scopes ~severity ~window_duration ~criteria __id =
  let __type = "azurerm_monitor_scheduled_query_rules_alert_v2" in
  let __attrs =
    ({
       tf_name = __id;
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
           ~action ?timeouts ~location ~name ~resource_group_name
           ~scopes ~severity ~window_duration ~criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_mitigation_enabled ?description
    ?display_name ?enabled ?evaluation_frequency ?id
    ?mute_actions_after_alert_duration ?query_time_range_override
    ?skip_query_validation ?tags ?target_resource_types
    ?workspace_alerts_storage_enabled ?(action = []) ?timeouts
    ~location ~name ~resource_group_name ~scopes ~severity
    ~window_duration ~criteria __id =
  let (r : _ Tf_core.resource) =
    make ?auto_mitigation_enabled ?description ?display_name ?enabled
      ?evaluation_frequency ?id ?mute_actions_after_alert_duration
      ?query_time_range_override ?skip_query_validation ?tags
      ?target_resource_types ?workspace_alerts_storage_enabled
      ~action ?timeouts ~location ~name ~resource_group_name ~scopes
      ~severity ~window_duration ~criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
