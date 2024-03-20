(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_backup_container_storage_account

val azurerm_backup_container_storage_account :
  ?id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_backup_container_storage_account

val yojson_of_azurerm_backup_container_storage_account :
  azurerm_backup_container_storage_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
