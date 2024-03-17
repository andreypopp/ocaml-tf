(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_encryption_scope__timeouts
type azurerm_storage_encryption_scope

val azurerm_storage_encryption_scope :
  ?id:string ->
  ?infrastructure_encryption_required:bool ->
  ?key_vault_key_id:string ->
  ?timeouts:azurerm_storage_encryption_scope__timeouts ->
  name:string ->
  source:string ->
  storage_account_id:string ->
  string ->
  unit
