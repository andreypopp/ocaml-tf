(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_table__acl__access_policy
type azurerm_storage_table__acl
type azurerm_storage_table__timeouts
type azurerm_storage_table

type t = private {
  id : string prop;
  name : string prop;
  storage_account_name : string prop;
}

val azurerm_storage_table :
  ?id:string prop ->
  ?timeouts:azurerm_storage_table__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  acl:azurerm_storage_table__acl list ->
  string ->
  t
