(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_scope_connection__timeouts
type azurerm_network_manager_scope_connection

val azurerm_network_manager_scope_connection :
  ?description:string ->
  ?id:string ->
  ?timeouts:azurerm_network_manager_scope_connection__timeouts ->
  name:string ->
  network_manager_id:string ->
  target_scope_id:string ->
  tenant_id:string ->
  string ->
  unit
