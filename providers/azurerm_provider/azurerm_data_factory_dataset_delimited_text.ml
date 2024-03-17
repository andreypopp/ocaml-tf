(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location = {
  dynamic_file_system_enabled : bool option; [@option]
      (** dynamic_file_system_enabled *)
  dynamic_filename_enabled : bool option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool option; [@option]
      (** dynamic_path_enabled *)
  file_system : string option; [@option]  (** file_system *)
  filename : string option; [@option]  (** filename *)
  path : string option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location *)

type azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location = {
  container : string;  (** container *)
  dynamic_container_enabled : bool option; [@option]
      (** dynamic_container_enabled *)
  dynamic_filename_enabled : bool option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool option; [@option]
      (** dynamic_path_enabled *)
  filename : string option; [@option]  (** filename *)
  path : string option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location *)

type azurerm_data_factory_dataset_delimited_text__http_server_location = {
  dynamic_filename_enabled : bool option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool option; [@option]
      (** dynamic_path_enabled *)
  filename : string;  (** filename *)
  path : string;  (** path *)
  relative_url : string;  (** relative_url *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__http_server_location *)

type azurerm_data_factory_dataset_delimited_text__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__schema_column *)

type azurerm_data_factory_dataset_delimited_text__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__timeouts *)

type azurerm_data_factory_dataset_delimited_text = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  column_delimiter : string option; [@option]
      (** column_delimiter *)
  compression_codec : string option; [@option]
      (** compression_codec *)
  compression_level : string option; [@option]
      (** compression_level *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  encoding : string option; [@option]  (** encoding *)
  escape_character : string option; [@option]
      (** escape_character *)
  first_row_as_header : bool option; [@option]
      (** first_row_as_header *)
  folder : string option; [@option]  (** folder *)
  id : string option; [@option]  (** id *)
  linked_service_name : string;  (** linked_service_name *)
  name : string;  (** name *)
  null_value : string option; [@option]  (** null_value *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  quote_character : string option; [@option]  (** quote_character *)
  row_delimiter : string option; [@option]  (** row_delimiter *)
  azure_blob_fs_location :
    azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location
    list;
  azure_blob_storage_location :
    azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location
    list;
  http_server_location :
    azurerm_data_factory_dataset_delimited_text__http_server_location
    list;
  schema_column :
    azurerm_data_factory_dataset_delimited_text__schema_column list;
  timeouts :
    azurerm_data_factory_dataset_delimited_text__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text *)

let azurerm_data_factory_dataset_delimited_text
    ?additional_properties ?annotations ?column_delimiter
    ?compression_codec ?compression_level ?description ?encoding
    ?escape_character ?first_row_as_header ?folder ?id ?null_value
    ?parameters ?quote_character ?row_delimiter ?timeouts
    ~data_factory_id ~linked_service_name ~name
    ~azure_blob_fs_location ~azure_blob_storage_location
    ~http_server_location ~schema_column __resource_id =
  let __resource_type =
    "azurerm_data_factory_dataset_delimited_text"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      column_delimiter;
      compression_codec;
      compression_level;
      data_factory_id;
      description;
      encoding;
      escape_character;
      first_row_as_header;
      folder;
      id;
      linked_service_name;
      name;
      null_value;
      parameters;
      quote_character;
      row_delimiter;
      azure_blob_fs_location;
      azure_blob_storage_location;
      http_server_location;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_delimited_text __resource);
  ()
