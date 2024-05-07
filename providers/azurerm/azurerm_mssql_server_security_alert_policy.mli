(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_server_security_alert_policy

val azurerm_mssql_server_security_alert_policy :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  server_name:string prop ->
  state:string prop ->
  unit ->
  azurerm_mssql_server_security_alert_policy

val yojson_of_azurerm_mssql_server_security_alert_policy :
  azurerm_mssql_server_security_alert_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  server_name:string prop ->
  state:string prop ->
  string ->
  t

val make :
  ?disabled_alerts:string prop list ->
  ?email_account_admins:bool prop ->
  ?email_addresses:string prop list ->
  ?id:string prop ->
  ?retention_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  resource_group_name:string prop ->
  server_name:string prop ->
  state:string prop ->
  string ->
  t Tf_core.resource
