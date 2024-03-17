(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_azure_blob__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_blob__schema_column *)

type azurerm_data_factory_dataset_azure_blob__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_blob__timeouts *)

type azurerm_data_factory_dataset_azure_blob = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  dynamic_filename_enabled : bool option; [@option]
      (** dynamic_filename_enabled *)
  dynamic_path_enabled : bool option; [@option]
      (** dynamic_path_enabled *)
  filename : string option; [@option]  (** filename *)
  folder : string option; [@option]  (** folder *)
  id : string option; [@option]  (** id *)
  linked_service_name : string;  (** linked_service_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  path : string option; [@option]  (** path *)
  schema_column :
    azurerm_data_factory_dataset_azure_blob__schema_column list;
  timeouts : azurerm_data_factory_dataset_azure_blob__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_blob *)

let azurerm_data_factory_dataset_azure_blob ?additional_properties
    ?annotations ?description ?dynamic_filename_enabled
    ?dynamic_path_enabled ?filename ?folder ?id ?parameters ?path
    ?timeouts ~data_factory_id ~linked_service_name ~name
    ~schema_column __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_azure_blob" in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      dynamic_filename_enabled;
      dynamic_path_enabled;
      filename;
      folder;
      id;
      linked_service_name;
      name;
      parameters;
      path;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_azure_blob __resource);
  ()
