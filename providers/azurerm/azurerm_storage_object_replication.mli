(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_object_replication__rules
type azurerm_storage_object_replication__timeouts
type azurerm_storage_object_replication

type t = private {
  destination_object_replication_id : string prop;
  destination_storage_account_id : string prop;
  id : string prop;
  source_object_replication_id : string prop;
  source_storage_account_id : string prop;
}

val azurerm_storage_object_replication :
  ?id:string prop ->
  ?timeouts:azurerm_storage_object_replication__timeouts ->
  destination_storage_account_id:string prop ->
  source_storage_account_id:string prop ->
  rules:azurerm_storage_object_replication__rules list ->
  string ->
  t
