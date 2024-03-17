(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cognitive_account_customer_managed_key__timeouts
type azurerm_cognitive_account_customer_managed_key

type t = private {
  cognitive_account_id : string prop;
  id : string prop;
  identity_client_id : string prop;
  key_vault_key_id : string prop;
}

val azurerm_cognitive_account_customer_managed_key :
  ?id:string prop ->
  ?identity_client_id:string prop ->
  ?timeouts:azurerm_cognitive_account_customer_managed_key__timeouts ->
  cognitive_account_id:string prop ->
  key_vault_key_id:string prop ->
  string ->
  t
