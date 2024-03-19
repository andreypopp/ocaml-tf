(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kubernetes_fleet_member

val azurerm_kubernetes_fleet_member :
  ?group:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  kubernetes_fleet_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_kubernetes_fleet_member

val yojson_of_azurerm_kubernetes_fleet_member :
  azurerm_kubernetes_fleet_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  kubernetes_fleet_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?group:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  kubernetes_fleet_id:string prop ->
  name:string prop ->
  string ->
  t
