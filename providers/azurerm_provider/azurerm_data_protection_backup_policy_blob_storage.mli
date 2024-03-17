(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_policy_blob_storage__timeouts
type azurerm_data_protection_backup_policy_blob_storage

val azurerm_data_protection_backup_policy_blob_storage :
  ?id:string prop ->
  ?timeouts:
    azurerm_data_protection_backup_policy_blob_storage__timeouts ->
  name:string prop ->
  retention_duration:string prop ->
  vault_id:string prop ->
  string ->
  unit
