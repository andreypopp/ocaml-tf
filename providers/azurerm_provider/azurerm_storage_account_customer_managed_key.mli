(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_customer_managed_key__timeouts
type azurerm_storage_account_customer_managed_key

val azurerm_storage_account_customer_managed_key :
  ?federated_identity_client_id:string prop ->
  ?id:string prop ->
  ?key_vault_id:string prop ->
  ?key_vault_uri:string prop ->
  ?key_version:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?timeouts:azurerm_storage_account_customer_managed_key__timeouts ->
  key_name:string prop ->
  storage_account_id:string prop ->
  string ->
  unit
