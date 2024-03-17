(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_object_replication__rules
type azurerm_storage_object_replication__timeouts
type azurerm_storage_object_replication

val azurerm_storage_object_replication :
  ?timeouts:azurerm_storage_object_replication__timeouts ->
  destination_storage_account_id:string ->
  source_storage_account_id:string ->
  rules:azurerm_storage_object_replication__rules list ->
  string ->
  unit
