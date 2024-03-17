(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_synapse_sql_pool_security_alert_policy__timeouts
type azurerm_synapse_sql_pool_security_alert_policy

val azurerm_synapse_sql_pool_security_alert_policy :
  ?disabled_alerts:string list ->
  ?email_account_admins_enabled:bool ->
  ?email_addresses:string list ->
  ?retention_days:float ->
  ?storage_account_access_key:string ->
  ?storage_endpoint:string ->
  ?timeouts:azurerm_synapse_sql_pool_security_alert_policy__timeouts ->
  policy_state:string ->
  sql_pool_id:string ->
  string ->
  unit
