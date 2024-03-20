(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_share_dataset_kusto_database

val azurerm_data_share_dataset_kusto_database :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kusto_database_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  unit ->
  azurerm_data_share_dataset_kusto_database

val yojson_of_azurerm_data_share_dataset_kusto_database :
  azurerm_data_share_dataset_kusto_database -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  id : string prop;
  kusto_cluster_location : string prop;
  kusto_database_id : string prop;
  name : string prop;
  share_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  kusto_database_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  kusto_database_id:string prop ->
  name:string prop ->
  share_id:string prop ->
  string ->
  t Tf_core.resource
