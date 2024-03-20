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

type azurerm_data_share_dataset_data_lake_gen2

val azurerm_data_share_dataset_data_lake_gen2 :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  file_system_name:string prop ->
  name:string prop ->
  share_id:string prop ->
  storage_account_id:string prop ->
  unit ->
  azurerm_data_share_dataset_data_lake_gen2

val yojson_of_azurerm_data_share_dataset_data_lake_gen2 :
  azurerm_data_share_dataset_data_lake_gen2 -> json

(** RESOURCE REGISTRATION *)

type t = private {
  display_name : string prop;
  file_path : string prop;
  file_system_name : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
  share_id : string prop;
  storage_account_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  file_system_name:string prop ->
  name:string prop ->
  share_id:string prop ->
  storage_account_id:string prop ->
  string ->
  t

val make :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  file_system_name:string prop ->
  name:string prop ->
  share_id:string prop ->
  storage_account_id:string prop ->
  string ->
  t Tf_core.resource
