(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type items = {
  partition_key : string prop;  (** partition_key *)
  properties : string prop Tf_core.assoc;  (** properties *)
  row_key : string prop;  (** row_key *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_storage_table_entities

val azurerm_storage_table_entities :
  ?id:string prop ->
  ?select:string prop list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  storage_account_name:string prop ->
  table_name:string prop ->
  unit ->
  azurerm_storage_table_entities

val yojson_of_azurerm_storage_table_entities :
  azurerm_storage_table_entities -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  items : items list prop;
  select : string list prop;
  storage_account_name : string prop;
  table_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?select:string prop list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  storage_account_name:string prop ->
  table_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?select:string prop list ->
  ?timeouts:timeouts ->
  filter:string prop ->
  storage_account_name:string prop ->
  table_name:string prop ->
  string ->
  t Tf_core.resource
