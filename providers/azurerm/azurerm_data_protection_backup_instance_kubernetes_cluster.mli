(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type backup_datasource_parameters

val backup_datasource_parameters :
  ?cluster_scoped_resources_enabled:bool prop ->
  ?excluded_namespaces:string prop list ->
  ?excluded_resource_types:string prop list ->
  ?included_namespaces:string prop list ->
  ?included_resource_types:string prop list ->
  ?label_selectors:string prop list ->
  ?volume_snapshot_enabled:bool prop ->
  unit ->
  backup_datasource_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_protection_backup_instance_kubernetes_cluster

val azurerm_data_protection_backup_instance_kubernetes_cluster :
  ?id:string prop ->
  ?backup_datasource_parameters:backup_datasource_parameters list ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  name:string prop ->
  snapshot_resource_group_name:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_data_protection_backup_instance_kubernetes_cluster

val yojson_of_azurerm_data_protection_backup_instance_kubernetes_cluster :
  azurerm_data_protection_backup_instance_kubernetes_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_policy_id : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?backup_datasource_parameters:backup_datasource_parameters list ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  name:string prop ->
  snapshot_resource_group_name:string prop ->
  vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?backup_datasource_parameters:backup_datasource_parameters list ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  kubernetes_cluster_id:string prop ->
  location:string prop ->
  name:string prop ->
  snapshot_resource_group_name:string prop ->
  vault_id:string prop ->
  string ->
  t Tf_core.resource
