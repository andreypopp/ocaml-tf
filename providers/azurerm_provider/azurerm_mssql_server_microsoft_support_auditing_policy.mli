(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_microsoft_support_auditing_policy__timeouts
type azurerm_mssql_server_microsoft_support_auditing_policy

val azurerm_mssql_server_microsoft_support_auditing_policy :
  ?blob_storage_endpoint:string ->
  ?enabled:bool ->
  ?id:string ->
  ?log_monitoring_enabled:bool ->
  ?storage_account_access_key:string ->
  ?storage_account_subscription_id:string ->
  ?timeouts:
    azurerm_mssql_server_microsoft_support_auditing_policy__timeouts ->
  server_id:string ->
  string ->
  unit
