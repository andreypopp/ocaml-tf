(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_protected_file_share__timeouts
type azurerm_backup_protected_file_share

type t = private {
  backup_policy_id : string prop;
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_file_share_name : string prop;
  source_storage_account_id : string prop;
}

val azurerm_backup_protected_file_share :
  ?id:string prop ->
  ?timeouts:azurerm_backup_protected_file_share__timeouts ->
  backup_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_file_share_name:string prop ->
  source_storage_account_id:string prop ->
  string ->
  t
