(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_json__azure_blob_storage_location
type azurerm_data_factory_dataset_json__http_server_location
type azurerm_data_factory_dataset_json__schema_column
type azurerm_data_factory_dataset_json__timeouts
type azurerm_data_factory_dataset_json

val azurerm_data_factory_dataset_json :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?encoding:string prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:azurerm_data_factory_dataset_json__timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_json__azure_blob_storage_location
    list ->
  http_server_location:
    azurerm_data_factory_dataset_json__http_server_location list ->
  schema_column:azurerm_data_factory_dataset_json__schema_column list ->
  string ->
  unit
