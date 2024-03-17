(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_binary__azure_blob_storage_location
type azurerm_data_factory_dataset_binary__compression
type azurerm_data_factory_dataset_binary__http_server_location
type azurerm_data_factory_dataset_binary__sftp_server_location
type azurerm_data_factory_dataset_binary__timeouts
type azurerm_data_factory_dataset_binary

val azurerm_data_factory_dataset_binary :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?folder:string ->
  ?id:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_dataset_binary__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_binary__azure_blob_storage_location
    list ->
  compression:azurerm_data_factory_dataset_binary__compression list ->
  http_server_location:
    azurerm_data_factory_dataset_binary__http_server_location list ->
  sftp_server_location:
    azurerm_data_factory_dataset_binary__sftp_server_location list ->
  string ->
  unit
