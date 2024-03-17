(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_share_dataset_blob_storage__storage_account
type azurerm_data_share_dataset_blob_storage__timeouts
type azurerm_data_share_dataset_blob_storage

val azurerm_data_share_dataset_blob_storage :
  ?file_path:string ->
  ?folder_path:string ->
  ?id:string ->
  ?timeouts:azurerm_data_share_dataset_blob_storage__timeouts ->
  container_name:string ->
  data_share_id:string ->
  name:string ->
  storage_account:
    azurerm_data_share_dataset_blob_storage__storage_account list ->
  string ->
  unit
