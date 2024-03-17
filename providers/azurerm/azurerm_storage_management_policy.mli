(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_management_policy__rule__actions__base_blob
type azurerm_storage_management_policy__rule__actions__snapshot
type azurerm_storage_management_policy__rule__actions__version
type azurerm_storage_management_policy__rule__actions

type azurerm_storage_management_policy__rule__filters__match_blob_index_tag

type azurerm_storage_management_policy__rule__filters
type azurerm_storage_management_policy__rule
type azurerm_storage_management_policy__timeouts
type azurerm_storage_management_policy

type t = private {
  id : string prop;
  storage_account_id : string prop;
}

val azurerm_storage_management_policy :
  ?id:string prop ->
  ?timeouts:azurerm_storage_management_policy__timeouts ->
  storage_account_id:string prop ->
  rule:azurerm_storage_management_policy__rule list ->
  string ->
  t
