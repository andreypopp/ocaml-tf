(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_protection_backup_instance_postgresql__timeouts
type azurerm_data_protection_backup_instance_postgresql

val azurerm_data_protection_backup_instance_postgresql :
  ?database_credential_key_vault_secret_id:string ->
  ?id:string ->
  ?timeouts:
    azurerm_data_protection_backup_instance_postgresql__timeouts ->
  backup_policy_id:string ->
  database_id:string ->
  location:string ->
  name:string ->
  vault_id:string ->
  string ->
  unit
