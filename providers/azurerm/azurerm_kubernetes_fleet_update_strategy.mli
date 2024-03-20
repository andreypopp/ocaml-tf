(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

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

type azurerm_kubernetes_fleet_update_strategy

val azurerm_kubernetes_fleet_update_strategy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  stage:stage list ->
  unit ->
  azurerm_kubernetes_fleet_update_strategy

val yojson_of_azurerm_kubernetes_fleet_update_strategy :
  azurerm_kubernetes_fleet_update_strategy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  kubernetes_fleet_manager_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  stage:stage list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_fleet_manager_id:string prop ->
  name:string prop ->
  stage:stage list ->
  string ->
  t Tf_core.resource
