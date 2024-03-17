(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_context

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_id

type azurerm_monitor_alert_processing_rule_suppression__condition__alert_rule_name

type azurerm_monitor_alert_processing_rule_suppression__condition__description

type azurerm_monitor_alert_processing_rule_suppression__condition__monitor_condition

type azurerm_monitor_alert_processing_rule_suppression__condition__monitor_service

type azurerm_monitor_alert_processing_rule_suppression__condition__severity

type azurerm_monitor_alert_processing_rule_suppression__condition__signal_type

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_group

type azurerm_monitor_alert_processing_rule_suppression__condition__target_resource_type

type azurerm_monitor_alert_processing_rule_suppression__condition

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__daily

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__monthly

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence__weekly

type azurerm_monitor_alert_processing_rule_suppression__schedule__recurrence

type azurerm_monitor_alert_processing_rule_suppression__schedule
type azurerm_monitor_alert_processing_rule_suppression__timeouts
type azurerm_monitor_alert_processing_rule_suppression

type t = private {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

val azurerm_monitor_alert_processing_rule_suppression :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:
    azurerm_monitor_alert_processing_rule_suppression__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  condition:
    azurerm_monitor_alert_processing_rule_suppression__condition list ->
  schedule:
    azurerm_monitor_alert_processing_rule_suppression__schedule list ->
  string ->
  t
