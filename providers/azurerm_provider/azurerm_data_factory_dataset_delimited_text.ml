(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location = {
  dynamic_file_system_enabled : bool prop option; [@option]
      (** dynamic_file_system_enabled *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  file_system : string prop option; [@option]  (** file_system *)
  filename : string prop option; [@option]  (** filename *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__azure_blob_fs_location *)

type azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location = {
  container : string prop;  (** container *)
  dynamic_container_enabled : bool prop option; [@option]
      (** dynamic_container_enabled *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop option; [@option]  (** filename *)
  path : string prop option; [@option]  (** path *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__azure_blob_storage_location *)

type azurerm_data_factory_dataset_delimited_text__http_server_location = {
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop;  (** filename *)
  path : string prop;  (** path *)
  relative_url : string prop;  (** relative_url *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__http_server_location *)

type azurerm_data_factory_dataset_delimited_text__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__schema_column *)

type azurerm_data_factory_dataset_delimited_text__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_delimited_text__timeouts *)

type azurerm_data_factory_dataset_delimited_text = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  column_delimiter : string prop option; [@option]
      (** column_delimiter *)
  compression_codec : string prop option; [@option]
      (** compression_codec *)
  compression_level : string prop option; [@option]
      (** compression_level *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  encoding : string prop option; [@option]  (** encoding *)
  escape_character : string prop option; [@option]
      (** escape_character *)
  first_row_as_header : bool prop option; [@option]
      (** first_row_as_header *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  null_value : string prop option; [@option]  (** null_value *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  quote_character : string prop option; [@option]
      (** quote_character *)
  row_delimiter : string prop option; [@option]  (** row_delimiter *)
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
