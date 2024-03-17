(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_monitor_log_profile__retention_policy
type azurerm_monitor_log_profile__timeouts
type azurerm_monitor_log_profile

type t = private {
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

val azurerm_monitor_log_profile :
  ?id:string prop ->
  ?servicebus_rule_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:azurerm_monitor_log_profile__timeouts ->
  categories:string prop list ->
  locations:string prop list ->
  name:string prop ->
  retention_policy:azurerm_monitor_log_profile__retention_policy list ->
  string ->
  t
