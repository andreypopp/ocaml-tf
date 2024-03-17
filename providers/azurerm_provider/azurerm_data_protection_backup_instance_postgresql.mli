(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_postgresql__timeouts
type azurerm_data_protection_backup_instance_postgresql

val azurerm_data_protection_backup_instance_postgresql :
  ?database_credential_key_vault_secret_id:string prop ->
  ?id:string prop ->
  ?timeouts:
    azurerm_data_protection_backup_instance_postgresql__timeouts ->
  backup_policy_id:string prop ->
  database_id:string prop ->
  location:string prop ->
  name:string prop ->
  vault_id:string prop ->
  string ->
  unit
