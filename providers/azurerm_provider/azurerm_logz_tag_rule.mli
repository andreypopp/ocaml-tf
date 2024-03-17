(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_logz_tag_rule__tag_filter
type azurerm_logz_tag_rule__timeouts
type azurerm_logz_tag_rule

val azurerm_logz_tag_rule :
  ?id:string ->
  ?send_aad_logs:bool ->
  ?send_activity_logs:bool ->
  ?send_subscription_logs:bool ->
  ?timeouts:azurerm_logz_tag_rule__timeouts ->
  logz_monitor_id:string ->
  tag_filter:azurerm_logz_tag_rule__tag_filter list ->
  string ->
  unit
