(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_backup_container_storage_account__timeouts
type azurerm_backup_container_storage_account

type t = private {
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
}

val azurerm_backup_container_storage_account :
  ?id:string prop ->
  ?timeouts:azurerm_backup_container_storage_account__timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t
