(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_activity_log_alert__action
type azurerm_monitor_activity_log_alert__criteria__resource_health
type azurerm_monitor_activity_log_alert__criteria__service_health
type azurerm_monitor_activity_log_alert__criteria
type azurerm_monitor_activity_log_alert__timeouts
type azurerm_monitor_activity_log_alert

type t = private {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

val azurerm_monitor_activity_log_alert :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_monitor_activity_log_alert__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:azurerm_monitor_activity_log_alert__action list ->
  criteria:azurerm_monitor_activity_log_alert__criteria list ->
  string ->
  t
