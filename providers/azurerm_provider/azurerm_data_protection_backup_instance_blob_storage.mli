(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_blob_storage__timeouts
type azurerm_data_protection_backup_instance_blob_storage

val azurerm_data_protection_backup_instance_blob_storage :
  ?timeouts:
    azurerm_data_protection_backup_instance_blob_storage__timeouts ->
  backup_policy_id:string ->
  location:string ->
  name:string ->
  storage_account_id:string ->
  vault_id:string ->
  string ->
  unit
