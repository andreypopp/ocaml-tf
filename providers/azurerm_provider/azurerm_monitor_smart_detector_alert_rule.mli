(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_smart_detector_alert_rule__action_group
type azurerm_monitor_smart_detector_alert_rule__timeouts
type azurerm_monitor_smart_detector_alert_rule

val azurerm_monitor_smart_detector_alert_rule :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?throttling_duration:string prop ->
  ?timeouts:azurerm_monitor_smart_detector_alert_rule__timeouts ->
  detector_type:string prop ->
  frequency:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_resource_ids:string prop list ->
  severity:string prop ->
  action_group:
    azurerm_monitor_smart_detector_alert_rule__action_group list ->
  string ->
  unit
