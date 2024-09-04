(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_storage_table_entity

val azurerm_storage_table_entity :
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?storage_table_id:string prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  entity:string prop Tf_core.assoc ->
  partition_key:string prop ->
  row_key:string prop ->
  unit ->
  azurerm_storage_table_entity

val yojson_of_azurerm_storage_table_entity :
  azurerm_storage_table_entity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  entity : string Tf_core.assoc prop;
  id : string prop;
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  storage_table_id : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?storage_table_id:string prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  entity:string prop Tf_core.assoc ->
  partition_key:string prop ->
  row_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?storage_table_id:string prop ->
  ?table_name:string prop ->
  ?timeouts:timeouts ->
  entity:string prop Tf_core.assoc ->
  partition_key:string prop ->
  row_key:string prop ->
  string ->
  t Tf_core.resource
