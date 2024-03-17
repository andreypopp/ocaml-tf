(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__node_image_selection

type azurerm_kubernetes_fleet_update_run__managed_cluster_update__upgrade

type azurerm_kubernetes_fleet_update_run__managed_cluster_update
type azurerm_kubernetes_fleet_update_run__stage__group
type azurerm_kubernetes_fleet_update_run__stage
type azurerm_kubernetes_fleet_update_run__timeouts
type azurerm_kubernetes_fleet_update_run

val azurerm_kubernetes_fleet_update_run :
  ?fleet_update_strategy_id:string ->
  ?timeouts:azurerm_kubernetes_fleet_update_run__timeouts ->
  kubernetes_fleet_manager_id:string ->
  name:string ->
  managed_cluster_update:
    azurerm_kubernetes_fleet_update_run__managed_cluster_update list ->
  stage:azurerm_kubernetes_fleet_update_run__stage list ->
  string ->
  unit
