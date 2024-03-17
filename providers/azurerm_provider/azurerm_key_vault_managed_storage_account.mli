(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account__timeouts
type azurerm_key_vault_managed_storage_account

val azurerm_key_vault_managed_storage_account :
  ?id:string ->
  ?regenerate_key_automatically:bool ->
  ?regeneration_period:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_key_vault_managed_storage_account__timeouts ->
  key_vault_id:string ->
  name:string ->
  storage_account_id:string ->
  storage_account_key:string ->
  string ->
  unit
