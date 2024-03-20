(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type retention_policy = {
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_monitor_log_profile

val azurerm_monitor_log_profile :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  azurerm_monitor_log_profile

val yojson_of_azurerm_monitor_log_profile :
  azurerm_monitor_log_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  categories : string list prop;
  id : string prop;
  locations : string list prop;
  name : string prop;
  retention_policy : retention_policy list prop;
  servicebus_rule_id : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
