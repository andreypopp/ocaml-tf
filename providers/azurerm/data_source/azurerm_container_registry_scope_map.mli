(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_container_registry_scope_map

val azurerm_container_registry_scope_map :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_container_registry_scope_map

val yojson_of_azurerm_container_registry_scope_map :
  azurerm_container_registry_scope_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  actions : string list prop;
  container_registry_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
