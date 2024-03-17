(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column *)

type azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts *)

type azurerm_data_factory_dataset_cosmosdb_sqlapi = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  collection_name : string prop option; [@option]
      (** collection_name *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  schema_column :
    azurerm_data_factory_dataset_cosmosdb_sqlapi__schema_column list;
  timeouts :
    azurerm_data_factory_dataset_cosmosdb_sqlapi__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_cosmosdb_sqlapi *)

let azurerm_data_factory_dataset_cosmosdb_sqlapi
    ?additional_properties ?annotations ?collection_name ?description
    ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column __resource_id =
  let __resource_type =
    "azurerm_data_factory_dataset_cosmosdb_sqlapi"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      collection_name;
      data_factory_id;
      description;
      folder;
      id;
      linked_service_name;
      name;
      parameters;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_cosmosdb_sqlapi
       __resource);
  ()
