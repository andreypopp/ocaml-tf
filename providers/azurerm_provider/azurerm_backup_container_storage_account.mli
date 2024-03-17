(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_container_storage_account__timeouts
type azurerm_backup_container_storage_account

val azurerm_backup_container_storage_account :
  ?id:string ->
  ?timeouts:azurerm_backup_container_storage_account__timeouts ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  storage_account_id:string ->
  string ->
  unit
