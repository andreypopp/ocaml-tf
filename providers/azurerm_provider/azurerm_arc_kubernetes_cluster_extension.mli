(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_kubernetes_cluster_extension__identity
type azurerm_arc_kubernetes_cluster_extension__timeouts
type azurerm_arc_kubernetes_cluster_extension

val azurerm_arc_kubernetes_cluster_extension :
  ?configuration_protected_settings:(string * string) list ->
  ?configuration_settings:(string * string) list ->
  ?id:string ->
  ?release_namespace:string ->
  ?release_train:string ->
  ?target_namespace:string ->
  ?version:string ->
  ?timeouts:azurerm_arc_kubernetes_cluster_extension__timeouts ->
  cluster_id:string ->
  extension_type:string ->
  name:string ->
  identity:azurerm_arc_kubernetes_cluster_extension__identity list ->
  string ->
  unit
