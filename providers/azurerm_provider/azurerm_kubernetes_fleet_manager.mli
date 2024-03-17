(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_fleet_manager__hub_profile
type azurerm_kubernetes_fleet_manager__timeouts
type azurerm_kubernetes_fleet_manager

val azurerm_kubernetes_fleet_manager :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_kubernetes_fleet_manager__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  hub_profile:azurerm_kubernetes_fleet_manager__hub_profile list ->
  string ->
  unit
