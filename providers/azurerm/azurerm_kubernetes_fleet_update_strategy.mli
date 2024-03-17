(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_update_strategy__stage__group
type azurerm_kubernetes_fleet_update_strategy__stage
type azurerm_kubernetes_fleet_update_strategy__timeouts
type azurerm_kubernetes_fleet_update_strategy

type t = private {
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

val azurerm_kubernetes_fleet_update_strategy :
  ?id:string prop ->
  ?timeouts:azurerm_kubernetes_fleet_update_strategy__timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  stage:azurerm_kubernetes_fleet_update_strategy__stage list ->
  string ->
  t
