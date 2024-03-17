(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_security_alert_policy__timeouts
type azurerm_mssql_managed_instance_security_alert_policy

val azurerm_mssql_managed_instance_security_alert_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins_enabled:bool prop ->
  ?email_addresses:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:
    azurerm_mssql_managed_instance_security_alert_policy__timeouts ->
  managed_instance_name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
