(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_json__azure_blob_storage_location
type azurerm_data_factory_dataset_json__http_server_location
type azurerm_data_factory_dataset_json__schema_column
type azurerm_data_factory_dataset_json__timeouts
type azurerm_data_factory_dataset_json

val azurerm_data_factory_dataset_json :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?encoding:string ->
  ?folder:string ->
  ?id:string ->
  ?parameters:(string * string) list ->
  ?timeouts:azurerm_data_factory_dataset_json__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_json__azure_blob_storage_location
    list ->
  http_server_location:
    azurerm_data_factory_dataset_json__http_server_location list ->
  schema_column:azurerm_data_factory_dataset_json__schema_column list ->
  string ->
  unit
