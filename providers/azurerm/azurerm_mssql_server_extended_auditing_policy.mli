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

type azurerm_mssql_server_extended_auditing_policy

val azurerm_mssql_server_extended_auditing_policy :
  ?audit_actions_and_groups:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?predicate_expression:string prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_account_subscription_id:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  unit ->
  azurerm_mssql_server_extended_auditing_policy

val yojson_of_azurerm_mssql_server_extended_auditing_policy :
  azurerm_mssql_server_extended_auditing_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audit_actions_and_groups : string list prop;
  enabled : bool prop;
  id : string prop;
  log_monitoring_enabled : bool prop;
  predicate_expression : string prop;
  retention_in_days : float prop;
  server_id : string prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_account_subscription_id : string prop;
  storage_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_actions_and_groups:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?predicate_expression:string prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_account_subscription_id:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  string ->
  t

val make :
  ?audit_actions_and_groups:string prop list ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?predicate_expression:string prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_account_subscription_id:string prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
