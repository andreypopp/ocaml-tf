(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_disk__timeouts
type azurerm_data_protection_backup_instance_disk

val azurerm_data_protection_backup_instance_disk :
  ?timeouts:azurerm_data_protection_backup_instance_disk__timeouts ->
  backup_policy_id:string ->
  disk_id:string ->
  location:string ->
  name:string ->
  snapshot_resource_group_name:string ->
  vault_id:string ->
  string ->
  unit
