(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_cluster_extension__plan
type azurerm_kubernetes_cluster_extension__timeouts

type azurerm_kubernetes_cluster_extension__aks_assigned_identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}

type azurerm_kubernetes_cluster_extension

val azurerm_kubernetes_cluster_extension :
  ?configuration_protected_settings:(string * string) list ->
  ?configuration_settings:(string * string) list ->
  ?id:string ->
  ?release_namespace:string ->
  ?release_train:string ->
  ?target_namespace:string ->
  ?version:string ->
  ?timeouts:azurerm_kubernetes_cluster_extension__timeouts ->
  cluster_id:string ->
  extension_type:string ->
  name:string ->
  plan:azurerm_kubernetes_cluster_extension__plan list ->
  string ->
  unit
