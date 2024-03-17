(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_account_customer_managed_key__timeouts
type azurerm_storage_account_customer_managed_key

val azurerm_storage_account_customer_managed_key :
  ?federated_identity_client_id:string ->
  ?key_vault_id:string ->
  ?key_version:string ->
  ?user_assigned_identity_id:string ->
  ?timeouts:azurerm_storage_account_customer_managed_key__timeouts ->
  key_name:string ->
  storage_account_id:string ->
  string ->
  unit
