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

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  collection_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  linked_service_name : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

let azurerm_data_factory_dataset_cosmosdb_sqlapi
    ?additional_properties ?annotations ?collection_name ?description
    ?folder ?id ?parameters ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column __resource_id =
  let __resource_type =
    "azurerm_data_factory_dataset_cosmosdb_sqlapi"
  in
  let __resource =
    ({
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
      : azurerm_data_factory_dataset_cosmosdb_sqlapi)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_cosmosdb_sqlapi
       __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       collection_name =
         Prop.computed __resource_type __resource_id
           "collection_name";
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
