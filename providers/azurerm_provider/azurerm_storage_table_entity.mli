(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_table_entity__timeouts
type azurerm_storage_table_entity

val azurerm_storage_table_entity :
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?storage_table_id:string prop ->
  ?table_name:string prop ->
  ?timeouts:azurerm_storage_table_entity__timeouts ->
  entity:(string * string prop) list ->
  partition_key:string prop ->
  row_key:string prop ->
  string ->
  unit
