(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_extended_auditing_policy__timeouts
type azurerm_mssql_server_extended_auditing_policy

val azurerm_mssql_server_extended_auditing_policy :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_account_subscription_id:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:azurerm_mssql_server_extended_auditing_policy__timeouts ->
  server_id:string prop ->
  string ->
  unit
