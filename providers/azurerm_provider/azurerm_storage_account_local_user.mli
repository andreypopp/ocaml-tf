(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_local_user__permission_scope__permissions
type azurerm_storage_account_local_user__permission_scope
type azurerm_storage_account_local_user__ssh_authorized_key
type azurerm_storage_account_local_user__timeouts
type azurerm_storage_account_local_user

val azurerm_storage_account_local_user :
  ?home_directory:string ->
  ?ssh_key_enabled:bool ->
  ?ssh_password_enabled:bool ->
  ?timeouts:azurerm_storage_account_local_user__timeouts ->
  name:string ->
  storage_account_id:string ->
  permission_scope:
    azurerm_storage_account_local_user__permission_scope list ->
  ssh_authorized_key:
    azurerm_storage_account_local_user__ssh_authorized_key list ->
  string ->
  unit
