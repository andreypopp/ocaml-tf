(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_server_security_alert_policy__timeouts
type azurerm_mssql_server_security_alert_policy

type t = private {
  disabled_alerts : string list prop;
  email_account_admins : bool prop;
  email_addresses : string list prop;
  id : string prop;
  resource_group_name : string prop;
  retention_days : float prop;
  server_name : string prop;
  state : string prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}

val azurerm_mssql_server_security_alert_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:azurerm_mssql_server_security_alert_policy__timeouts ->
  resource_group_name:string prop ->
  server_name:string prop ->
  state:string prop ->
  string ->
  t
