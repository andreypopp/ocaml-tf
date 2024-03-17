(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_table__acl__access_policy
type azurerm_storage_table__acl
type azurerm_storage_table__timeouts
type azurerm_storage_table

val azurerm_storage_table :
  ?timeouts:azurerm_storage_table__timeouts ->
  name:string ->
  storage_account_name:string ->
  acl:azurerm_storage_table__acl list ->
  string ->
  unit
