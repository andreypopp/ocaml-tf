(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_security_alert_policy__timeouts
type azurerm_mssql_server_security_alert_policy

val azurerm_mssql_server_security_alert_policy :
  ?disabled_alerts:string list ->
  ?email_account_admins:bool ->
  ?email_addresses:string list ->
  ?id:string ->
  ?retention_days:float ->
  ?storage_account_access_key:string ->
  ?storage_endpoint:string ->
  ?timeouts:azurerm_mssql_server_security_alert_policy__timeouts ->
  resource_group_name:string ->
  server_name:string ->
  state:string ->
  string ->
  unit
