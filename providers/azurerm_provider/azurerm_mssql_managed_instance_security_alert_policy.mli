(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_security_alert_policy__timeouts
type azurerm_mssql_managed_instance_security_alert_policy

val azurerm_mssql_managed_instance_security_alert_policy :
  ?disabled_alerts:string list ->
  ?email_account_admins_enabled:bool ->
  ?email_addresses:string list ->
  ?enabled:bool ->
  ?retention_days:float ->
  ?storage_account_access_key:string ->
  ?storage_endpoint:string ->
  ?timeouts:
    azurerm_mssql_managed_instance_security_alert_policy__timeouts ->
  managed_instance_name:string ->
  resource_group_name:string ->
  string ->
  unit
