(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location

type azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location

type azurerm_data_factory_dataset_delimited_text__http_server_location
type azurerm_data_factory_dataset_delimited_text__schema_column
type azurerm_data_factory_dataset_delimited_text__timeouts
type azurerm_data_factory_dataset_delimited_text

type t = private {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  column_delimiter : string prop;
  compression_codec : string prop;
  compression_level : string prop;
  data_factory_id : string prop;
  description : string prop;
  encoding : string prop;
  escape_character : string prop;
  first_row_as_header : bool prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  null_value : string prop;
  parameters : (string * string) list prop;
  quote_character : string prop;
  row_delimiter : string prop;
}

val azurerm_data_factory_dataset_delimited_text :
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?column_delimiter:string prop ->
  ?compression_codec:string prop ->
  ?compression_level:string prop ->
  ?description:string prop ->
  ?encoding:string prop ->
  ?escape_character:string prop ->
  ?first_row_as_header:bool prop ->
  ?folder:string prop ->
  ?id:string prop ->
  ?null_value:string prop ->
  ?parameters:(string * string prop) list ->
  ?quote_character:string prop ->
  ?row_delimiter:string prop ->
  ?timeouts:azurerm_data_factory_dataset_delimited_text__timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
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
  t
