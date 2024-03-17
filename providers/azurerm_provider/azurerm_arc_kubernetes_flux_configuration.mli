(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_arc_kubernetes_flux_configuration__blob_storage__service_principal

type azurerm_arc_kubernetes_flux_configuration__blob_storage
type azurerm_arc_kubernetes_flux_configuration__bucket
type azurerm_arc_kubernetes_flux_configuration__git_repository
type azurerm_arc_kubernetes_flux_configuration__kustomizations
type azurerm_arc_kubernetes_flux_configuration__timeouts
type azurerm_arc_kubernetes_flux_configuration

val azurerm_arc_kubernetes_flux_configuration :
  ?continuous_reconciliation_enabled:bool ->
  ?scope:string ->
  ?timeouts:azurerm_arc_kubernetes_flux_configuration__timeouts ->
  cluster_id:string ->
  name:string ->
  namespace:string ->
  blob_storage:
    azurerm_arc_kubernetes_flux_configuration__blob_storage list ->
  bucket:azurerm_arc_kubernetes_flux_configuration__bucket list ->
  git_repository:
    azurerm_arc_kubernetes_flux_configuration__git_repository list ->
  kustomizations:
    azurerm_arc_kubernetes_flux_configuration__kustomizations list ->
  string ->
  unit
