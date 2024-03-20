(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  action_group_id : string prop;  (** action_group_id *)
  webhook_properties : (string * string prop) list option; [@option]
      (** webhook_properties *)
}
[@@deriving yojson_of]
(** action *)

type application_insights_web_test_location_availability_criteria = {
  component_id : string prop;  (** component_id *)
  failed_location_count : float prop;  (** failed_location_count *)
  web_test_id : string prop;  (** web_test_id *)
}
[@@deriving yojson_of]
(** application_insights_web_test_location_availability_criteria *)

type criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** criteria__dimension *)

type criteria = {
  aggregation : string prop;  (** aggregation *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  operator : string prop;  (** operator *)
  skip_metric_validation : bool prop option; [@option]
      (** skip_metric_validation *)
  threshold : float prop;  (** threshold *)
  dimension : criteria__dimension list;
}
[@@deriving yojson_of]
(** criteria *)

type dynamic_criteria__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** dynamic_criteria__dimension *)

type dynamic_criteria = {
  aggregation : string prop;  (** aggregation *)
  alert_sensitivity : string prop;  (** alert_sensitivity *)
  evaluation_failure_count : float prop option; [@option]
      (** evaluation_failure_count *)
  evaluation_total_count : float prop option; [@option]
      (** evaluation_total_count *)
  ignore_data_before : string prop option; [@option]
      (** ignore_data_before *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  operator : string prop;  (** operator *)
  skip_metric_validation : bool prop option; [@option]
      (** skip_metric_validation *)
  dimension : dynamic_criteria__dimension list;
}
[@@deriving yojson_of]
(** dynamic_criteria *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_monitor_metric_alert = {
  auto_mitigate : bool prop option; [@option]  (** auto_mitigate *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : string prop option; [@option]  (** frequency *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop list;  (** scopes *)
  severity : float prop option; [@option]  (** severity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_location : string prop option; [@option]
      (** The location of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes. *)
  target_resource_type : string prop option; [@option]
      (** The resource type (e.g. Microsoft.Compute/virtualMachines) of the target pluginsdk. Required when using subscription, resource group scope or multiple scopes. *)
  window_size : string prop option; [@option]  (** window_size *)
  action : action list;
  application_insights_web_test_location_availability_criteria :
    application_insights_web_test_location_availability_criteria list;
  criteria : criteria list;
  dynamic_criteria : dynamic_criteria list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_metric_alert *)

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
