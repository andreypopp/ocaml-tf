(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_json__azure_blob_storage_location = {
  container : string prop;  (** container *)
  dynamic_container_enabled : bool prop option; [@option]
      (** dynamic_container_enabled *)
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop;  (** filename *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_json__azure_blob_storage_location *)

type azurerm_data_factory_dataset_json__http_server_location = {
  dynamic_filename_enabled : bool prop option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool prop option; [@option]
      (** dynamic_path_enabled *)
  filename : string prop;  (** filename *)
  path : string prop;  (** path *)
  relative_url : string prop;  (** relative_url *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_json__http_server_location *)

type azurerm_data_factory_dataset_json__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_json__schema_column *)

type azurerm_data_factory_dataset_json__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_json__timeouts *)

type azurerm_data_factory_dataset_json = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  encoding : string prop option; [@option]  (** encoding *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  azure_blob_storage_location :
    azurerm_data_factory_dataset_json__azure_blob_storage_location
    list;
  http_server_location :
    azurerm_data_factory_dataset_json__http_server_location list;
  schema_column :
    azurerm_data_factory_dataset_json__schema_column list;
  timeouts : azurerm_data_factory_dataset_json__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_json *)

let azurerm_data_factory_dataset_json ?additional_properties
    ?annotations ?description ?encoding ?folder ?id ?parameters
    ?timeouts ~data_factory_id ~linked_service_name ~name
    ~azure_blob_storage_location ~http_server_location ~schema_column
    __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_json" in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      encoding;
      folder;
      id;
      linked_service_name;
      name;
      parameters;
      azure_blob_storage_location;
      http_server_location;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_json __resource);
  ()
