(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_network_manager_deployment__timeouts
type azurerm_network_manager_deployment

val azurerm_network_manager_deployment :
  ?id:string ->
  ?triggers:(string * string) list ->
  ?timeouts:azurerm_network_manager_deployment__timeouts ->
  configuration_ids:string list ->
  location:string ->
  network_manager_id:string ->
  scope_access:string ->
  string ->
  unit
