(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_alert_prometheus_rule_group__rule__action

type azurerm_monitor_alert_prometheus_rule_group__rule__alert_resolution

type azurerm_monitor_alert_prometheus_rule_group__rule
type azurerm_monitor_alert_prometheus_rule_group__timeouts
type azurerm_monitor_alert_prometheus_rule_group

val azurerm_monitor_alert_prometheus_rule_group :
  ?cluster_name:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?interval:string prop ->
  ?rule_group_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_monitor_alert_prometheus_rule_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  rule:azurerm_monitor_alert_prometheus_rule_group__rule list ->
  string ->
  unit
