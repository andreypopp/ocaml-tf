(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_scope_map__timeouts
type azurerm_container_registry_scope_map

val azurerm_container_registry_scope_map :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_container_registry_scope_map__timeouts ->
  actions:string list ->
  container_registry_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
