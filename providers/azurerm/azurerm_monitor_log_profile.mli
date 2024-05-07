(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_policy

val retention_policy :
  ?days:float prop -> enabled:bool prop -> unit -> retention_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_monitor_log_profile

val azurerm_monitor_log_profile :
  ?id:string prop ->
  ?servicebus_rule_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  categories:string prop list ->
  locations:string prop list ->
  name:string prop ->
  retention_policy:retention_policy list ->
  unit ->
  azurerm_monitor_log_profile

val yojson_of_azurerm_monitor_log_profile :
  azurerm_monitor_log_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?servicebus_rule_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  categories:string prop list ->
  locations:string prop list ->
  name:string prop ->
  retention_policy:retention_policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?servicebus_rule_id:string prop ->
  ?storage_account_id:string prop ->
  ?timeouts:timeouts ->
  categories:string prop list ->
  locations:string prop list ->
  name:string prop ->
  retention_policy:retention_policy list ->
  string ->
  t Tf_core.resource
