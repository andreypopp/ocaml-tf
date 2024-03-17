(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_table_entity__timeouts
type azurerm_storage_table_entity

val azurerm_storage_table_entity :
  ?id:string ->
  ?storage_account_name:string ->
  ?storage_table_id:string ->
  ?table_name:string ->
  ?timeouts:azurerm_storage_table_entity__timeouts ->
  entity:(string * string) list ->
  partition_key:string ->
  row_key:string ->
  string ->
  unit
