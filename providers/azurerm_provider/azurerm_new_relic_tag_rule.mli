(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_new_relic_tag_rule__log_tag_filter
type azurerm_new_relic_tag_rule__metric_tag_filter
type azurerm_new_relic_tag_rule__timeouts
type azurerm_new_relic_tag_rule

val azurerm_new_relic_tag_rule :
  ?activity_log_enabled:bool ->
  ?azure_active_directory_log_enabled:bool ->
  ?metric_enabled:bool ->
  ?subscription_log_enabled:bool ->
  ?timeouts:azurerm_new_relic_tag_rule__timeouts ->
  monitor_id:string ->
  log_tag_filter:azurerm_new_relic_tag_rule__log_tag_filter list ->
  metric_tag_filter:
    azurerm_new_relic_tag_rule__metric_tag_filter list ->
  string ->
  unit
