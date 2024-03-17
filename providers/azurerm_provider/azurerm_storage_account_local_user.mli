(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_local_user__permission_scope__permissions
type azurerm_storage_account_local_user__permission_scope
type azurerm_storage_account_local_user__ssh_authorized_key
type azurerm_storage_account_local_user__timeouts
type azurerm_storage_account_local_user

val azurerm_storage_account_local_user :
  ?home_directory:string prop ->
  ?id:string prop ->
  ?ssh_key_enabled:bool prop ->
  ?ssh_password_enabled:bool prop ->
  ?timeouts:azurerm_storage_account_local_user__timeouts ->
  name:string prop ->
  storage_account_id:string prop ->
  permission_scope:
    azurerm_storage_account_local_user__permission_scope list ->
  ssh_authorized_key:
    azurerm_storage_account_local_user__ssh_authorized_key list ->
  string ->
  unit
