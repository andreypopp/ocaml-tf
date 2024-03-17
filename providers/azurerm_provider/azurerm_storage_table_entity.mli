(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_table_entity__timeouts
type azurerm_storage_table_entity

val azurerm_storage_table_entity :
  ?timeouts:azurerm_storage_table_entity__timeouts ->
  entity:(string * string) list ->
  partition_key:string ->
  row_key:string ->
  string ->
  unit
