(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_member__timeouts
type azurerm_kubernetes_fleet_member

val azurerm_kubernetes_fleet_member :
  ?group:string ->
  ?timeouts:azurerm_kubernetes_fleet_member__timeouts ->
  kubernetes_cluster_id:string ->
  kubernetes_fleet_id:string ->
  name:string ->
  string ->
  unit
