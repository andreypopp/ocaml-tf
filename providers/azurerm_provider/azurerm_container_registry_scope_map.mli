(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_scope_map__timeouts
type azurerm_container_registry_scope_map

val azurerm_container_registry_scope_map :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_container_registry_scope_map__timeouts ->
  actions:string prop list ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
