(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_log_profile__retention_policy
type azurerm_monitor_log_profile__timeouts
type azurerm_monitor_log_profile

val azurerm_monitor_log_profile :
  ?servicebus_rule_id:string ->
  ?storage_account_id:string ->
  ?timeouts:azurerm_monitor_log_profile__timeouts ->
  categories:string list ->
  locations:string list ->
  name:string ->
  retention_policy:azurerm_monitor_log_profile__retention_policy list ->
  string ->
  unit
