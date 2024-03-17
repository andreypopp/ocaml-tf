(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_manager__hub_profile
type azurerm_kubernetes_fleet_manager__timeouts
type azurerm_kubernetes_fleet_manager

val azurerm_kubernetes_fleet_manager :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_kubernetes_fleet_manager__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  hub_profile:azurerm_kubernetes_fleet_manager__hub_profile list ->
  string ->
  unit
