(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account__timeouts
type azurerm_key_vault_managed_storage_account

val azurerm_key_vault_managed_storage_account :
  ?id:string prop ->
  ?regenerate_key_automatically:bool prop ->
  ?regeneration_period:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault_managed_storage_account__timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  storage_account_id:string prop ->
  storage_account_key:string prop ->
  string ->
  unit
