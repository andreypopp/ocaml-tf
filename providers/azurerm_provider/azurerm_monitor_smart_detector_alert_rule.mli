(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_smart_detector_alert_rule__action_group
type azurerm_monitor_smart_detector_alert_rule__timeouts
type azurerm_monitor_smart_detector_alert_rule

val azurerm_monitor_smart_detector_alert_rule :
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?throttling_duration:string ->
  ?timeouts:azurerm_monitor_smart_detector_alert_rule__timeouts ->
  detector_type:string ->
  frequency:string ->
  name:string ->
  resource_group_name:string ->
  scope_resource_ids:string list ->
  severity:string ->
  action_group:
    azurerm_monitor_smart_detector_alert_rule__action_group list ->
  string ->
  unit
