(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  managed_instance_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mssql_managed_instance_security_alert_policy

val yojson_of_azurerm_mssql_managed_instance_security_alert_policy :
  azurerm_mssql_managed_instance_security_alert_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  disabled_alerts : string list prop;
  email_account_admins_enabled : bool prop;
  email_addresses : string list prop;
  enabled : bool prop;
  id : string prop;
  managed_instance_name : string prop;
  resource_group_name : string prop;
  retention_days : float prop;
  storage_account_access_key : string prop;
  storage_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled_alerts:string prop list ->
  ?email_account_admins_enabled:bool prop ->
  ?email_addresses:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  managed_instance_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
