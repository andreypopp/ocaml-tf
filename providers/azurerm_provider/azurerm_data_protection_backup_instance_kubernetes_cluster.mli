(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_kubernetes_cluster__backup_datasource_parameters

type azurerm_data_protection_backup_instance_kubernetes_cluster__timeouts

type azurerm_data_protection_backup_instance_kubernetes_cluster

val azurerm_data_protection_backup_instance_kubernetes_cluster :
  ?id:string ->
  ?timeouts:
    azurerm_data_protection_backup_instance_kubernetes_cluster__timeouts ->
  backup_policy_id:string ->
  kubernetes_cluster_id:string ->
  location:string ->
  name:string ->
  snapshot_resource_group_name:string ->
  vault_id:string ->
  backup_datasource_parameters:
    azurerm_data_protection_backup_instance_kubernetes_cluster__backup_datasource_parameters
    list ->
  string ->
  unit
