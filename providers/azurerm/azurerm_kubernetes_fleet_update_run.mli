(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_cluster_update__node_image_selection

val managed_cluster_update__node_image_selection :
  type_:string prop ->
  unit ->
  managed_cluster_update__node_image_selection

type managed_cluster_update__upgrade

val managed_cluster_update__upgrade :
  ?kubernetes_version:string prop ->
  type_:string prop ->
  unit ->
  managed_cluster_update__upgrade

type managed_cluster_update

val managed_cluster_update :
  node_image_selection:
    managed_cluster_update__node_image_selection list ->
  upgrade:managed_cluster_update__upgrade list ->
  unit ->
  managed_cluster_update

type stage__group

val stage__group : name:string prop -> unit -> stage__group

type stage

val stage :
  ?after_stage_wait_in_seconds:float prop ->
  name:string prop ->
  group:stage__group list ->
  unit ->
  stage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kubernetes_fleet_update_run

val azurerm_kubernetes_fleet_update_run :
  ?fleet_update_strategy_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  managed_cluster_update:managed_cluster_update list ->
  stage:stage list ->
  unit ->
  azurerm_kubernetes_fleet_update_run

val yojson_of_azurerm_kubernetes_fleet_update_run :
  azurerm_kubernetes_fleet_update_run -> json

(** RESOURCE REGISTRATION *)

type t = private {
  fleet_update_strategy_id : string prop;
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?fleet_update_strategy_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  managed_cluster_update:managed_cluster_update list ->
  stage:stage list ->
  string ->
  t

val make :
  ?fleet_update_strategy_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  managed_cluster_update:managed_cluster_update list ->
  stage:stage list ->
  string ->
  t Tf_core.resource
