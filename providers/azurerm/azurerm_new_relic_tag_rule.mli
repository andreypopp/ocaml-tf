(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_new_relic_tag_rule__log_tag_filter
type azurerm_new_relic_tag_rule__metric_tag_filter
type azurerm_new_relic_tag_rule__timeouts
type azurerm_new_relic_tag_rule

type t = private {
  activity_log_enabled : bool prop;
  azure_active_directory_log_enabled : bool prop;
  id : string prop;
  metric_enabled : bool prop;
  monitor_id : string prop;
  subscription_log_enabled : bool prop;
}

val azurerm_new_relic_tag_rule :
  ?activity_log_enabled:bool prop ->
  ?azure_active_directory_log_enabled:bool prop ->
  ?id:string prop ->
  ?metric_enabled:bool prop ->
  ?subscription_log_enabled:bool prop ->
  ?timeouts:azurerm_new_relic_tag_rule__timeouts ->
  monitor_id:string prop ->
  log_tag_filter:azurerm_new_relic_tag_rule__log_tag_filter list ->
  metric_tag_filter:
    azurerm_new_relic_tag_rule__metric_tag_filter list ->
  string ->
  t
