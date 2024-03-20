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

type azurerm_eventhub_namespace_disaster_recovery_config

val azurerm_eventhub_namespace_disaster_recovery_config :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  partner_namespace_id:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_eventhub_namespace_disaster_recovery_config

val yojson_of_azurerm_eventhub_namespace_disaster_recovery_config :
  azurerm_eventhub_namespace_disaster_recovery_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  partner_namespace_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  namespace_name:string prop ->
  partner_namespace_id:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
