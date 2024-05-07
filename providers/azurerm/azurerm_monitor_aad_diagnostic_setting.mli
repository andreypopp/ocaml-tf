(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type enabled_log__retention_policy

val enabled_log__retention_policy :
  ?days:float prop ->
  ?enabled:bool prop ->
  unit ->
  enabled_log__retention_policy

type enabled_log

val enabled_log :
  category:string prop ->
  retention_policy:enabled_log__retention_policy list ->
  unit ->
  enabled_log

type log__retention_policy

val log__retention_policy :
  ?days:float prop ->
  ?enabled:bool prop ->
  unit ->
  log__retention_policy

type log

val log :
  ?enabled:bool prop ->
  category:string prop ->
  retention_policy:log__retention_policy list ->
  unit ->
  log

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_aad_diagnostic_setting

val azurerm_monitor_aad_diagnostic_setting :
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  unit ->
  azurerm_monitor_aad_diagnostic_setting

val yojson_of_azurerm_monitor_aad_diagnostic_setting :
  azurerm_monitor_aad_diagnostic_setting -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  eventhub_authorization_rule_id : string prop;
  eventhub_name : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  string ->
  t

val make :
  ?eventhub_authorization_rule_id:string prop ->
  ?eventhub_name:string prop ->
  ?id:string prop ->
  ?log_analytics_workspace_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  enabled_log:enabled_log list ->
  log:log list ->
  string ->
  t Tf_core.resource
