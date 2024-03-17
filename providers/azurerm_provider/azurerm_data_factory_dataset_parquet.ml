(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_parquet__azure_blob_fs_location = {
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
(** azurerm_data_factory_dataset_parquet__azure_blob_fs_location *)

type azurerm_data_factory_dataset_parquet__azure_blob_storage_location = {
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
(** azurerm_data_factory_dataset_parquet__azure_blob_storage_location *)

type azurerm_data_factory_dataset_parquet__http_server_location = {
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop;  (** filename *)
  path : string prop option; [@option]  (** path *)
  relative_url : string prop;  (** relative_url *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__http_server_location *)

type azurerm_data_factory_dataset_parquet__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__schema_column *)

type azurerm_data_factory_dataset_parquet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_parquet__timeouts *)

type azurerm_data_factory_dataset_parquet = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  compression_codec : string prop option; [@option]
      (** compression_codec *)
  compression_level : string prop option; [@option]
      (** compression_level *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
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

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  compression_codec : string prop;
  compression_level : string prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let azurerm_data_factory_dataset_parquet ?additional_properties
    ?annotations ?compression_codec ?compression_level ?description
    ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~azure_blob_fs_location
    ~azure_blob_storage_location ~http_server_location ~schema_column
    __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_parquet" in
  let __resource =
    ({
       additional_properties;
       annotations;
       compression_codec;
       compression_level;
       data_factory_id;
       description;
       folder;
       id;
       linked_service_name;
       name;
       parameters;
       azure_blob_fs_location;
       azure_blob_storage_location;
       http_server_location;
       schema_column;
       timeouts;
     }
      : azurerm_data_factory_dataset_parquet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_parquet __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       compression_codec =
         Prop.computed __resource_type __resource_id
           "compression_codec";
       compression_level =
         Prop.computed __resource_type __resource_id
           "compression_level";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       linked_service_name =
         Prop.computed __resource_type __resource_id
           "linked_service_name";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
     }
      : t)
  in
  __resource_attributes
