(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_parquet__azure_blob_fs_location = {
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
(** azurerm_data_factory_dataset_parquet__azure_blob_fs_location *)

type azurerm_data_factory_dataset_parquet__azure_blob_storage_location = {
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
(** azurerm_data_factory_dataset_parquet__azure_blob_storage_location *)

type azurerm_data_factory_dataset_parquet__http_server_location = {
  dynamic_filename_enabled : bool option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool option; [@option]
      (** dynamic_path_enabled *)
  filename : string;  (** filename *)
  path : string option; [@option]  (** path *)
  relative_url : string;  (** relative_url *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__http_server_location *)

type azurerm_data_factory_dataset_parquet__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__schema_column *)

type azurerm_data_factory_dataset_parquet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__timeouts *)

type azurerm_data_factory_dataset_parquet = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  compression_codec : string option; [@option]
      (** compression_codec *)
  compression_level : string option; [@option]
      (** compression_level *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  folder : string option; [@option]  (** folder *)
  linked_service_name : string;  (** linked_service_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  azure_blob_fs_location :
    azurerm_data_factory_dataset_parquet__azure_blob_fs_location list;
  azure_blob_storage_location :
    azurerm_data_factory_dataset_parquet__azure_blob_storage_location
    list;
  http_server_location :
    azurerm_data_factory_dataset_parquet__http_server_location list;
  schema_column :
    azurerm_data_factory_dataset_parquet__schema_column list;
  timeouts : azurerm_data_factory_dataset_parquet__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet *)

let azurerm_data_factory_dataset_parquet ?additional_properties
    ?annotations ?compression_codec ?compression_level ?description
    ?folder ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~azure_blob_fs_location
    ~azure_blob_storage_location ~http_server_location ~schema_column
    __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_parquet" in
  let __resource =
    {
      additional_properties;
      annotations;
      compression_codec;
      compression_level;
      data_factory_id;
      description;
      folder;
      linked_service_name;
      name;
      parameters;
      azure_blob_fs_location;
      azure_blob_storage_location;
      http_server_location;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_parquet __resource);
  ()
