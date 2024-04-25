(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type azure_blob_fs_location

val azure_blob_fs_location :
  ?dynamic_file_system_enabled:bool prop ->
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  ?file_system:string prop ->
  ?filename:string prop ->
  ?path:string prop ->
  unit ->
  azure_blob_fs_location

type azure_blob_storage_location

val azure_blob_storage_location :
  ?dynamic_container_enabled:bool prop ->
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  ?filename:string prop ->
  ?path:string prop ->
  container:string prop ->
  unit ->
  azure_blob_storage_location

type http_server_location

val http_server_location :
  ?dynamic_filename_enabled:bool prop ->
  ?dynamic_path_enabled:bool prop ->
  filename:string prop ->
  path:string prop ->
  relative_url:string prop ->
  unit ->
  http_server_location

type schema_column

val schema_column :
  ?description:string prop ->
  ?type_:string prop ->
  name:string prop ->
  unit ->
  schema_column

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_dataset_delimited_text

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
  ?azure_blob_fs_location:azure_blob_fs_location list ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?http_server_location:http_server_location list ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_dataset_delimited_text

val yojson_of_azurerm_data_factory_dataset_delimited_text :
  azurerm_data_factory_dataset_delimited_text -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?azure_blob_fs_location:azure_blob_fs_location list ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?http_server_location:http_server_location list ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
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
  ?azure_blob_fs_location:azure_blob_fs_location list ->
  ?azure_blob_storage_location:azure_blob_storage_location list ->
  ?http_server_location:http_server_location list ->
  ?schema_column:schema_column list ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  linked_service_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
