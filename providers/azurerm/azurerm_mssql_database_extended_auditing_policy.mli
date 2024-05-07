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

type azurerm_mssql_database_extended_auditing_policy

val azurerm_mssql_database_extended_auditing_policy :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  unit ->
  azurerm_mssql_database_extended_auditing_policy

val yojson_of_azurerm_mssql_database_extended_auditing_policy :
  azurerm_mssql_database_extended_auditing_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  database_id : string prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  database_id:string prop ->
  string ->
  t Tf_core.resource
