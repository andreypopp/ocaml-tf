(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_database_extended_auditing_policy__timeouts
type azurerm_mssql_database_extended_auditing_policy

val azurerm_mssql_database_extended_auditing_policy :
  ?enabled:bool ->
  ?log_monitoring_enabled:bool ->
  ?retention_in_days:float ->
  ?storage_account_access_key:string ->
  ?storage_account_access_key_is_secondary:bool ->
  ?storage_endpoint:string ->
  ?timeouts:azurerm_mssql_database_extended_auditing_policy__timeouts ->
  database_id:string ->
  string ->
  unit
