(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location

type azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location

type azurerm_data_factory_dataset_delimited_text__http_server_location
type azurerm_data_factory_dataset_delimited_text__schema_column
type azurerm_data_factory_dataset_delimited_text__timeouts
type azurerm_data_factory_dataset_delimited_text

val azurerm_data_factory_dataset_delimited_text :
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?column_delimiter:string ->
  ?compression_codec:string ->
  ?compression_level:string ->
  ?description:string ->
  ?encoding:string ->
  ?escape_character:string ->
  ?first_row_as_header:bool ->
  ?folder:string ->
  ?id:string ->
  ?null_value:string ->
  ?parameters:(string * string) list ->
  ?quote_character:string ->
  ?row_delimiter:string ->
  ?timeouts:azurerm_data_factory_dataset_delimited_text__timeouts ->
  data_factory_id:string ->
  linked_service_name:string ->
  name:string ->
  azure_blob_fs_location:
    azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location
    list ->
  azure_blob_storage_location:
    azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location
    list ->
  http_server_location:
    azurerm_data_factory_dataset_delimited_text__http_server_location
    list ->
  schema_column:
    azurerm_data_factory_dataset_delimited_text__schema_column list ->
  string ->
  unit
