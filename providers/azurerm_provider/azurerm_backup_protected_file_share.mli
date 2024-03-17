(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_protected_file_share__timeouts
type azurerm_backup_protected_file_share

val azurerm_backup_protected_file_share :
  ?timeouts:azurerm_backup_protected_file_share__timeouts ->
  backup_policy_id:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  source_file_share_name:string ->
  source_storage_account_id:string ->
  string ->
  unit
