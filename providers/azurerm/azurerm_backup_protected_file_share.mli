(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_backup_protected_file_share

val azurerm_backup_protected_file_share :
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_file_share_name:string prop ->
  source_storage_account_id:string prop ->
  unit ->
  azurerm_backup_protected_file_share

val yojson_of_azurerm_backup_protected_file_share :
  azurerm_backup_protected_file_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backup_policy_id : string prop;
  id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_file_share_name : string prop;
  source_storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_file_share_name:string prop ->
  source_storage_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_file_share_name:string prop ->
  source_storage_account_id:string prop ->
  string ->
  t Tf_core.resource
