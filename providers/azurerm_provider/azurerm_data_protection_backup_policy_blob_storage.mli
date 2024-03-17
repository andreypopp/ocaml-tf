(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_policy_blob_storage__timeouts
type azurerm_data_protection_backup_policy_blob_storage

val azurerm_data_protection_backup_policy_blob_storage :
  ?timeouts:
    azurerm_data_protection_backup_policy_blob_storage__timeouts ->
  name:string ->
  retention_duration:string ->
  vault_id:string ->
  string ->
  unit
