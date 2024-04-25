(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type enabled_log__retention_policy

val enabled_log__retention_policy :
  ?days:float prop ->
  enabled:bool prop ->
  unit ->
  enabled_log__retention_policy

type enabled_log

val enabled_log :
  ?category:string prop ->
  ?category_group:string prop ->
  ?retention_policy:enabled_log__retention_policy list ->
  unit ->
  enabled_log

type log__retention_policy

val log__retention_policy :
  ?days:float prop ->
  enabled:bool prop ->
  unit ->
  log__retention_policy

type log

val log :
  ?category:string prop ->
  ?category_group:string prop ->
  ?enabled:bool prop ->
  ?retention_policy:log__retention_policy list ->
  unit ->
  log

type metric__retention_policy

val metric__retention_policy :
  ?days:float prop ->
  enabled:bool prop ->
  unit ->
  metric__retention_policy

type metric

val metric :
  ?enabled:bool prop ->
  ?retention_policy:metric__retention_policy list ->
  category:string prop ->
  unit ->
  metric

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_diagnostic_setting

val azurerm_monitor_diagnostic_setting :
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_destination_type:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?partner_solution_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target_resource_id:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  metric:metric list ->
  unit ->
  azurerm_monitor_diagnostic_setting

val yojson_of_azurerm_monitor_diagnostic_setting :
  azurerm_monitor_diagnostic_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_destination_type : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  partner_solution_id : string prop;
  storage_account_id : string prop;
  target_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_destination_type:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?partner_solution_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target_resource_id:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  metric:metric list ->
  string ->
  t

val make :
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_destination_type:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?partner_solution_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  target_resource_id:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  metric:metric list ->
  string ->
  t Tf_core.resource
