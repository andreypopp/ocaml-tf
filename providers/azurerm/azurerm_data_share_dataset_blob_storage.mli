(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type storage_account

val storage_account :
  name:string prop ->
  resource_group_name:string prop ->
  subscription_id:string prop ->
  unit ->
  storage_account

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_data_share_dataset_blob_storage

val azurerm_data_share_dataset_blob_storage :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  data_share_id:string prop ->
  name:string prop ->
  storage_account:storage_account list ->
  unit ->
  azurerm_data_share_dataset_blob_storage

val yojson_of_azurerm_data_share_dataset_blob_storage :
  azurerm_data_share_dataset_blob_storage -> json

(** RESOURCE REGISTRATION *)

type t = private {
  container_name : string prop;
  data_share_id : string prop;
  display_name : string prop;
  file_path : string prop;
  folder_path : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  data_share_id:string prop ->
  name:string prop ->
  storage_account:storage_account list ->
  string ->
  t

val make :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  container_name:string prop ->
  data_share_id:string prop ->
  name:string prop ->
  storage_account:storage_account list ->
  string ->
  t Tf_core.resource
