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

type azurerm_data_protection_backup_instance_postgresql

val azurerm_data_protection_backup_instance_postgresql :
  ?database_credential_key_vault_secret_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  vault_id:string prop ->
  unit ->
  azurerm_data_protection_backup_instance_postgresql

val yojson_of_azurerm_data_protection_backup_instance_postgresql :
  azurerm_data_protection_backup_instance_postgresql -> json

(** RESOURCE REGISTRATION *)

type t = private {
  backup_policy_id : string prop;
  database_credential_key_vault_secret_id : string prop;
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?database_credential_key_vault_secret_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  vault_id:string prop ->
  string ->
  t

val make :
  ?database_credential_key_vault_secret_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  backup_policy_id:string prop ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  vault_id:string prop ->
  string ->
  t Tf_core.resource
