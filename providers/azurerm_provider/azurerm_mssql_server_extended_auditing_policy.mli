(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_extended_auditing_policy__timeouts
type azurerm_mssql_server_extended_auditing_policy

val azurerm_mssql_server_extended_auditing_policy :
  ?enabled:bool ->
  ?id:string ->
  ?log_monitoring_enabled:bool ->
  ?retention_in_days:float ->
  ?storage_account_access_key:string ->
  ?storage_account_access_key_is_secondary:bool ->
  ?storage_account_subscription_id:string ->
  ?storage_endpoint:string ->
  ?timeouts:azurerm_mssql_server_extended_auditing_policy__timeouts ->
  server_id:string ->
  string ->
  unit
