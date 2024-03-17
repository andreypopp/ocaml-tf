(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_token__timeouts
type azurerm_container_registry_token

val azurerm_container_registry_token :
  ?enabled:bool ->
  ?id:string ->
  ?timeouts:azurerm_container_registry_token__timeouts ->
  container_registry_name:string ->
  name:string ->
  resource_group_name:string ->
  scope_map_id:string ->
  string ->
  unit
