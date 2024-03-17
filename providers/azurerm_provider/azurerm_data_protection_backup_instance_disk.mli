(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_disk__timeouts
type azurerm_data_protection_backup_instance_disk

val azurerm_data_protection_backup_instance_disk :
  ?id:string prop ->
  ?timeouts:azurerm_data_protection_backup_instance_disk__timeouts ->
  backup_policy_id:string prop ->
  disk_id:string prop ->
  location:string prop ->
  name:string prop ->
  snapshot_resource_group_name:string prop ->
  vault_id:string prop ->
  string ->
  unit
