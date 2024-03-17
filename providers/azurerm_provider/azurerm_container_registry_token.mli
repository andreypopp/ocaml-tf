(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_registry_token__timeouts
type azurerm_container_registry_token

val azurerm_container_registry_token :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?timeouts:azurerm_container_registry_token__timeouts ->
  container_registry_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scope_map_id:string prop ->
  string ->
  unit
