(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cognitive_account_customer_managed_key__timeouts
type azurerm_cognitive_account_customer_managed_key

val azurerm_cognitive_account_customer_managed_key :
  ?id:string ->
  ?identity_client_id:string ->
  ?timeouts:azurerm_cognitive_account_customer_managed_key__timeouts ->
  cognitive_account_id:string ->
  key_vault_key_id:string ->
  string ->
  unit
