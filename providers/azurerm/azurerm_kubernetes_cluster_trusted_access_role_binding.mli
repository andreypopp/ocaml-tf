(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kubernetes_cluster_trusted_access_role_binding

val azurerm_kubernetes_cluster_trusted_access_role_binding :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  roles:string prop list ->
  source_resource_id:string prop ->
  unit ->
  azurerm_kubernetes_cluster_trusted_access_role_binding

val yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding :
  azurerm_kubernetes_cluster_trusted_access_role_binding -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  kubernetes_cluster_id : string prop;
  name : string prop;
  roles : string list prop;
  source_resource_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  roles:string prop list ->
  source_resource_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kubernetes_cluster_id:string prop ->
  name:string prop ->
  roles:string prop list ->
  source_resource_id:string prop ->
  string ->
  t Tf_core.resource
