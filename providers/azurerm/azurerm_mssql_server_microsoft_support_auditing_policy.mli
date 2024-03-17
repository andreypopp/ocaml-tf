(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_microsoft_support_auditing_policy__timeouts
type azurerm_mssql_server_microsoft_support_auditing_policy

type t = private {
  blob_storage_endpoint : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_subscription_id : string prop;
}

val azurerm_mssql_server_microsoft_support_auditing_policy :
  ?blob_storage_endpoint:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_subscription_id:string prop ->
  ?timeouts:
    azurerm_mssql_server_microsoft_support_auditing_policy__timeouts ->
  server_id:string prop ->
  string ->
  t
