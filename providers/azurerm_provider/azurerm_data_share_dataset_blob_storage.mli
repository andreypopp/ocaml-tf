(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_blob_storage__storage_account
type azurerm_data_share_dataset_blob_storage__timeouts
type azurerm_data_share_dataset_blob_storage

val azurerm_data_share_dataset_blob_storage :
  ?file_path:string prop ->
  ?folder_path:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_data_share_dataset_blob_storage__timeouts ->
  container_name:string prop ->
  data_share_id:string prop ->
  name:string prop ->
  storage_account:
    azurerm_data_share_dataset_blob_storage__storage_account list ->
  string ->
  unit
