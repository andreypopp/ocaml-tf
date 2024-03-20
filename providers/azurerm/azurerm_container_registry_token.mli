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

type azurerm_container_registry_token

val azurerm_container_registry_token :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_map_id:string prop ->
  unit ->
  azurerm_container_registry_token

val yojson_of_azurerm_container_registry_token :
  azurerm_container_registry_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_registry_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  scope_map_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_map_id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_map_id:string prop ->
  string ->
  t Tf_core.resource
