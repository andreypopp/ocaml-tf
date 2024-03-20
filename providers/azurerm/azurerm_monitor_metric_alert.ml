(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group_id : string prop;
  webhook_properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | {
       action_group_id = v_action_group_id;
       webhook_properties = v_webhook_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_webhook_properties with
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
             let bnd = "webhook_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_group_id
         in
         ("action_group_id", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type application_insights_web_test_location_availability_criteria = {
  component_id : string prop;
  failed_location_count : float prop;
  web_test_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       application_insights_web_test_location_availability_criteria) ->
  ()

let yojson_of_application_insights_web_test_location_availability_criteria
    =
  (function
   | {
       component_id = v_component_id;
       failed_location_count = v_failed_location_count;
       web_test_id = v_web_test_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_web_test_id in
         ("web_test_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failed_location_count
         in
         ("failed_location_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component_id in
         ("component_id", arg) :: bnds
       in
       `Assoc bnds
    : application_insights_web_test_location_availability_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_application_insights_web_test_location_availability_criteria

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

type criteria = {
  aggregation : string prop;
  metric_name : string prop;
  metric_namespace : string prop;
  operator : string prop;
  skip_metric_validation : bool prop option; [@option]
  threshold : float prop;
  dimension : criteria__dimension list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : criteria) -> ()

let yojson_of_criteria =
  (function
   | {
       aggregation = v_aggregation;
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       operator = v_operator;
       skip_metric_validation = v_skip_metric_validation;
       threshold = v_threshold;
       dimension = v_dimension;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_criteria__dimension v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_threshold in
         ("threshold", arg) :: bnds
       in
       let bnds =
         match v_skip_metric_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_metric_validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_namespace
         in
         ("metric_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aggregation in
         ("aggregation", arg) :: bnds
       in
       `Assoc bnds
    : criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_criteria

[@@@deriving.end]

type dynamic_criteria__dimension = {
  name : string prop;
  operator : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamic_criteria__dimension) -> ()

let yojson_of_dynamic_criteria__dimension =
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
    : dynamic_criteria__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamic_criteria__dimension

[@@@deriving.end]

type dynamic_criteria = {
  aggregation : string prop;
  alert_sensitivity : string prop;
  evaluation_failure_count : float prop option; [@option]
  evaluation_total_count : float prop option; [@option]
  ignore_data_before : string prop option; [@option]
  metric_name : string prop;
  metric_namespace : string prop;
  operator : string prop;
  skip_metric_validation : bool prop option; [@option]
  dimension : dynamic_criteria__dimension list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamic_criteria) -> ()

let yojson_of_dynamic_criteria =
  (function
   | {
       aggregation = v_aggregation;
       alert_sensitivity = v_alert_sensitivity;
       evaluation_failure_count = v_evaluation_failure_count;
       evaluation_total_count = v_evaluation_total_count;
       ignore_data_before = v_ignore_data_before;
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       operator = v_operator;
       skip_metric_validation = v_skip_metric_validation;
       dimension = v_dimension;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dynamic_criteria__dimension
             v_dimension
         in
         ("dimension", arg) :: bnds
       in
       let bnds =
         match v_skip_metric_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_metric_validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_operator in
         ("operator", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_namespace
         in
         ("metric_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_ignore_data_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ignore_data_before", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluation_total_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "evaluation_total_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluation_failure_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "evaluation_failure_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_alert_sensitivity
         in
         ("alert_sensitivity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aggregation in
         ("aggregation", arg) :: bnds
       in
       `Assoc bnds
    : dynamic_criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamic_criteria

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

type azurerm_monitor_metric_alert = {
  auto_mitigate : bool prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  frequency : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  scopes : string prop list;
  severity : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  target_resource_location : string prop option; [@option]
  target_resource_type : string prop option; [@option]
  window_size : string prop option; [@option]
  action : action list;
  application_insights_web_test_location_availability_criteria :
    application_insights_web_test_location_availability_criteria list;
  criteria : criteria list;
  dynamic_criteria : dynamic_criteria list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_monitor_metric_alert) -> ()

let yojson_of_azurerm_monitor_metric_alert =
  (function
   | {
       auto_mitigate = v_auto_mitigate;
       description = v_description;
       enabled = v_enabled;
       frequency = v_frequency;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       severity = v_severity;
       tags = v_tags;
       target_resource_location = v_target_resource_location;
       target_resource_type = v_target_resource_type;
       window_size = v_window_size;
       action = v_action;
       application_insights_web_test_location_availability_criteria =
         v_application_insights_web_test_location_availability_criteria;
       criteria = v_criteria;
       dynamic_criteria = v_dynamic_criteria;
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
           yojson_of_list yojson_of_dynamic_criteria
             v_dynamic_criteria
         in
         ("dynamic_criteria", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_criteria v_criteria in
         ("criteria", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_application_insights_web_test_location_availability_criteria
             v_application_insights_web_test_location_availability_criteria
         in
         ( "application_insights_web_test_location_availability_criteria",
           arg )
         :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         match v_window_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "window_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_resource_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_resource_location", arg in
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
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "severity", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "frequency", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_mitigate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_mitigate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_monitor_metric_alert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_monitor_metric_alert

[@@@deriving.end]

let action ?webhook_properties ~action_group_id () : action =
  { action_group_id; webhook_properties }

let application_insights_web_test_location_availability_criteria
    ~component_id ~failed_location_count ~web_test_id () :
    application_insights_web_test_location_availability_criteria =
  { component_id; failed_location_count; web_test_id }

let criteria__dimension ~name ~operator ~values () :
    criteria__dimension =
  { name; operator; values }

let criteria ?skip_metric_validation ~aggregation ~metric_name
    ~metric_namespace ~operator ~threshold ~dimension () : criteria =
  {
    aggregation;
    metric_name;
    metric_namespace;
    operator;
    skip_metric_validation;
    threshold;
    dimension;
  }

let dynamic_criteria__dimension ~name ~operator ~values () :
    dynamic_criteria__dimension =
  { name; operator; values }

let dynamic_criteria ?evaluation_failure_count
    ?evaluation_total_count ?ignore_data_before
    ?skip_metric_validation ~aggregation ~alert_sensitivity
    ~metric_name ~metric_namespace ~operator ~dimension () :
    dynamic_criteria =
  {
    aggregation;
    alert_sensitivity;
    evaluation_failure_count;
    evaluation_total_count;
    ignore_data_before;
    metric_name;
    metric_namespace;
    operator;
    skip_metric_validation;
    dimension;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_monitor_metric_alert ?auto_mitigate ?description ?enabled
    ?frequency ?id ?severity ?tags ?target_resource_location
    ?target_resource_type ?window_size ?timeouts ~name
    ~resource_group_name ~scopes ~action
    ~application_insights_web_test_location_availability_criteria
    ~criteria ~dynamic_criteria () : azurerm_monitor_metric_alert =
  {
    auto_mitigate;
    description;
    enabled;
    frequency;
    id;
    name;
    resource_group_name;
    scopes;
    severity;
    tags;
    target_resource_location;
    target_resource_type;
    window_size;
    action;
    application_insights_web_test_location_availability_criteria;
    criteria;
    dynamic_criteria;
    timeouts;
  }

type t = {
  auto_mitigate : bool prop;
  description : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  severity : float prop;
  tags : (string * string) list prop;
  target_resource_location : string prop;
  target_resource_type : string prop;
  window_size : string prop;
}

let make ?auto_mitigate ?description ?enabled ?frequency ?id
    ?severity ?tags ?target_resource_location ?target_resource_type
    ?window_size ?timeouts ~name ~resource_group_name ~scopes ~action
    ~application_insights_web_test_location_availability_criteria
    ~criteria ~dynamic_criteria __id =
  let __type = "azurerm_monitor_metric_alert" in
  let __attrs =
    ({
       auto_mitigate = Prop.computed __type __id "auto_mitigate";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       severity = Prop.computed __type __id "severity";
       tags = Prop.computed __type __id "tags";
       target_resource_location =
         Prop.computed __type __id "target_resource_location";
       target_resource_type =
         Prop.computed __type __id "target_resource_type";
       window_size = Prop.computed __type __id "window_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_monitor_metric_alert
        (azurerm_monitor_metric_alert ?auto_mitigate ?description
           ?enabled ?frequency ?id ?severity ?tags
           ?target_resource_location ?target_resource_type
           ?window_size ?timeouts ~name ~resource_group_name ~scopes
           ~action
           ~application_insights_web_test_location_availability_criteria
           ~criteria ~dynamic_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_mitigate ?description ?enabled
    ?frequency ?id ?severity ?tags ?target_resource_location
    ?target_resource_type ?window_size ?timeouts ~name
    ~resource_group_name ~scopes ~action
    ~application_insights_web_test_location_availability_criteria
    ~criteria ~dynamic_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?auto_mitigate ?description ?enabled ?frequency ?id
      ?severity ?tags ?target_resource_location ?target_resource_type
      ?window_size ?timeouts ~name ~resource_group_name ~scopes
      ~action
      ~application_insights_web_test_location_availability_criteria
      ~criteria ~dynamic_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
