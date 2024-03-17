(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_cluster_trusted_access_role_binding__timeouts
type azurerm_kubernetes_cluster_trusted_access_role_binding

val azurerm_kubernetes_cluster_trusted_access_role_binding :
  ?timeouts:
    azurerm_kubernetes_cluster_trusted_access_role_binding__timeouts ->
  kubernetes_cluster_id:string ->
  name:string ->
  roles:string list ->
  source_resource_id:string ->
  string ->
  unit
