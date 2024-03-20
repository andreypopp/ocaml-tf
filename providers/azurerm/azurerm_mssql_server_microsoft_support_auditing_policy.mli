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

type azurerm_mssql_server_microsoft_support_auditing_policy

val azurerm_mssql_server_microsoft_support_auditing_policy :
  ?blob_storage_endpoint:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_subscription_id:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  unit ->
  azurerm_mssql_server_microsoft_support_auditing_policy

val yojson_of_azurerm_mssql_server_microsoft_support_auditing_policy :
  azurerm_mssql_server_microsoft_support_auditing_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  blob_storage_endpoint : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_subscription_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?blob_storage_endpoint:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_subscription_id:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  string ->
  t

val make :
  ?blob_storage_endpoint:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_subscription_id:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
