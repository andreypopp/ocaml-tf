(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_blob_inventory_policy__rules__filter
type azurerm_storage_blob_inventory_policy__rules
type azurerm_storage_blob_inventory_policy__timeouts
type azurerm_storage_blob_inventory_policy

type t = private {
  id : string prop;
  storage_account_id : string prop;
}

val azurerm_storage_blob_inventory_policy :
  ?id:string prop ->
  ?timeouts:azurerm_storage_blob_inventory_policy__timeouts ->
  storage_account_id:string prop ->
  rules:azurerm_storage_blob_inventory_policy__rules list ->
  string ->
  t
