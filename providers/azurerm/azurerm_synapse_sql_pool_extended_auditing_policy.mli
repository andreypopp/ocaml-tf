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

type azurerm_synapse_sql_pool_extended_auditing_policy

val azurerm_synapse_sql_pool_extended_auditing_policy :
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  sql_pool_id:string prop ->
  unit ->
  azurerm_synapse_sql_pool_extended_auditing_policy

val yojson_of_azurerm_synapse_sql_pool_extended_auditing_policy :
  azurerm_synapse_sql_pool_extended_auditing_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  log_monitoring_enabled : bool prop;
  retention_in_days : float prop;
  sql_pool_id : string prop;
  storage_account_access_key : string prop;
  storage_account_access_key_is_secondary : bool prop;
  storage_endpoint : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?log_monitoring_enabled:bool prop ->
  ?retention_in_days:float prop ->
  ?storage_account_access_key:string prop ->
  ?storage_account_access_key_is_secondary:bool prop ->
  ?storage_endpoint:string prop ->
  ?timeouts:timeouts ->
  sql_pool_id:string prop ->
  string ->
  t
