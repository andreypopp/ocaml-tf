(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_kubernetes_cluster__backup_datasource_parameters

type azurerm_data_protection_backup_instance_kubernetes_cluster__timeouts

type azurerm_data_protection_backup_instance_kubernetes_cluster

type t = private {
  backup_policy_id : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
}

val azurerm_data_protection_backup_instance_kubernetes_cluster :
  ?id:string prop ->
  ?timeouts:
    azurerm_data_protection_backup_instance_kubernetes_cluster__timeouts ->
  backup_policy_id:string prop ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  name:string prop ->
  snapshot_resource_group_name:string prop ->
  vault_id:string prop ->
  backup_datasource_parameters:
    azurerm_data_protection_backup_instance_kubernetes_cluster__backup_datasource_parameters
    list ->
  string ->
  t
