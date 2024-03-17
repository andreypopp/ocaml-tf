(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_member__timeouts
type azurerm_kubernetes_fleet_member

val azurerm_kubernetes_fleet_member :
  ?group:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_kubernetes_fleet_member__timeouts ->
  kubernetes_cluster_id:string prop ->
  kubernetes_fleet_id:string prop ->
  name:string prop ->
  string ->
  unit
