(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_alert_prometheus_rule_group__rule__action

type azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution

type azurerm_monitor_alert_prometheus_rule_group__rule
type azurerm_monitor_alert_prometheus_rule_group__timeouts
type azurerm_monitor_alert_prometheus_rule_group

val azurerm_monitor_alert_prometheus_rule_group :
  ?cluster_name:string ->
  ?description:string ->
  ?interval:string ->
  ?rule_group_enabled:bool ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_monitor_alert_prometheus_rule_group__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  scopes:string list ->
  rule:azurerm_monitor_alert_prometheus_rule_group__rule list ->
  string ->
  unit
