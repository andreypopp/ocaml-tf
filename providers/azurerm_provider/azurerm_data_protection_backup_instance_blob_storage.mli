(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_blob_storage__timeouts
type azurerm_data_protection_backup_instance_blob_storage

val azurerm_data_protection_backup_instance_blob_storage :
  ?id:string prop ->
  ?timeouts:
    azurerm_data_protection_backup_instance_blob_storage__timeouts ->
  backup_policy_id:string prop ->
  location:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  vault_id:string prop ->
  string ->
  unit
