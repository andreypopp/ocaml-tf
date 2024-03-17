(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_blob_inventory_policy__rules__filter
type azurerm_storage_blob_inventory_policy__rules
type azurerm_storage_blob_inventory_policy__timeouts
type azurerm_storage_blob_inventory_policy

val azurerm_storage_blob_inventory_policy :
  ?timeouts:azurerm_storage_blob_inventory_policy__timeouts ->
  storage_account_id:string ->
  rules:azurerm_storage_blob_inventory_policy__rules list ->
  string ->
  unit
