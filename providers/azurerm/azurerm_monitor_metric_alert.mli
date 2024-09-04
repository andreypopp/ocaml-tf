(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?webhook_properties:string prop Tf_core.assoc ->
  action_group_id:string prop ->
  unit ->
  action

type application_insights_web_test_location_availability_criteria

val application_insights_web_test_location_availability_criteria :
  component_id:string prop ->
  failed_location_count:float prop ->
  web_test_id:string prop ->
  unit ->
  application_insights_web_test_location_availability_criteria

type criteria__dimension

val criteria__dimension :
  name:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  criteria__dimension

type criteria

val criteria :
  ?skip_metric_validation:bool prop ->
  ?dimension:criteria__dimension list ->
  aggregation:string prop ->
  metric_name:string prop ->
  metric_namespace:string prop ->
  operator:string prop ->
  threshold:float prop ->
  unit ->
  criteria

type dynamic_criteria__dimension

val dynamic_criteria__dimension :
  name:string prop ->
  operator:string prop ->
  values:string prop list ->
  unit ->
  dynamic_criteria__dimension

type dynamic_criteria

val dynamic_criteria :
  ?evaluation_failure_count:float prop ->
  ?evaluation_total_count:float prop ->
  ?ignore_data_before:string prop ->
  ?skip_metric_validation:bool prop ->
  ?dimension:dynamic_criteria__dimension list ->
  aggregation:string prop ->
  alert_sensitivity:string prop ->
  metric_name:string prop ->
  metric_namespace:string prop ->
  operator:string prop ->
  unit ->
  dynamic_criteria

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_metric_alert

val azurerm_monitor_metric_alert :
  ?auto_mitigate:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?severity:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_location:string prop ->
  ?target_resource_type:string prop ->
  ?window_size:string prop ->
  ?application_insights_web_test_location_availability_criteria:
    application_insights_web_test_location_availability_criteria list ->
  ?criteria:criteria list ->
  ?dynamic_criteria:dynamic_criteria list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  unit ->
  azurerm_monitor_metric_alert

val yojson_of_azurerm_monitor_metric_alert :
  azurerm_monitor_metric_alert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_mitigate : bool prop;
  description : string prop;
  enabled : bool prop;
  frequency : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  severity : float prop;
  tags : string Tf_core.assoc prop;
  target_resource_location : string prop;
  target_resource_type : string prop;
  window_size : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_mitigate:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?severity:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_location:string prop ->
  ?target_resource_type:string prop ->
  ?window_size:string prop ->
  ?application_insights_web_test_location_availability_criteria:
    application_insights_web_test_location_availability_criteria list ->
  ?criteria:criteria list ->
  ?dynamic_criteria:dynamic_criteria list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  string ->
  t

val make :
  ?auto_mitigate:bool prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:string prop ->
  ?id:string prop ->
  ?severity:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?target_resource_location:string prop ->
  ?target_resource_type:string prop ->
  ?window_size:string prop ->
  ?application_insights_web_test_location_availability_criteria:
    application_insights_web_test_location_availability_criteria list ->
  ?criteria:criteria list ->
  ?dynamic_criteria:dynamic_criteria list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  string ->
  t Tf_core.resource
