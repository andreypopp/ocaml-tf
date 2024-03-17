(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kubernetes_cluster_extension__plan
type azurerm_kubernetes_cluster_extension__timeouts

type azurerm_kubernetes_cluster_extension__aks_assigned_identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type azurerm_kubernetes_cluster_extension

val azurerm_kubernetes_cluster_extension :
  ?configuration_protected_settings:(string * string prop) list ->
  ?configuration_settings:(string * string prop) list ->
  ?id:string prop ->
  ?release_namespace:string prop ->
  ?release_train:string prop ->
  ?target_namespace:string prop ->
  ?version:string prop ->
  ?timeouts:azurerm_kubernetes_cluster_extension__timeouts ->
  cluster_id:string prop ->
  extension_type:string prop ->
  name:string prop ->
  plan:azurerm_kubernetes_cluster_extension__plan list ->
  string ->
  unit
