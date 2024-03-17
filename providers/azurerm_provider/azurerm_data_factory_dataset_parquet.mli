(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_parquet__azure_blob_fs_location
type azurerm_data_factory_dataset_parquet__azure_blob_storage_location
type azurerm_data_factory_dataset_parquet__http_server_location
type azurerm_data_factory_dataset_parquet__schema_column
type azurerm_data_factory_dataset_parquet__timeouts
type azurerm_data_factory_dataset_parquet

val azurerm_data_factory_dataset_parquet :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?compression_codec:string ->
  ?compression_level:string ->
  ?description:string ->
  ?folder:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_dataset_parquet__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  azure_blob_fs_location:
    azurerm_data_factory_dataset_parquet__azure_blob_fs_location list ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_parquet__azure_blob_storage_location
    list ->
  http_server_location:
    azurerm_data_factory_dataset_parquet__http_server_location list ->
  schema_column:
    azurerm_data_factory_dataset_parquet__schema_column list ->
  string ->
  unit
