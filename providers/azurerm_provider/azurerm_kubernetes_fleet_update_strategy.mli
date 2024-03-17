(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_strategy__stage__group
type azurerm_kubernetes_fleet_update_strategy__stage
type azurerm_kubernetes_fleet_update_strategy__timeouts
type azurerm_kubernetes_fleet_update_strategy

val azurerm_kubernetes_fleet_update_strategy :
  ?timeouts:azurerm_kubernetes_fleet_update_strategy__timeouts ->
  kubernetes_fleet_manager_id:string ->
  name:string ->
  stage:azurerm_kubernetes_fleet_update_strategy__stage list ->
  string ->
  unit
