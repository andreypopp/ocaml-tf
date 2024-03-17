(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_azure_sql_table__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_sql_table__schema_column *)

type azurerm_data_factory_dataset_azure_sql_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_sql_table__timeouts *)

type azurerm_data_factory_dataset_azure_sql_table = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  folder : string option; [@option]  (** folder *)
  id : string option; [@option]  (** id *)
  linked_service_id : string;  (** linked_service_id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  schema : string option; [@option]  (** schema *)
  table : string option; [@option]  (** table *)
  schema_column :
    azurerm_data_factory_dataset_azure_sql_table__schema_column list;
  timeouts :
    azurerm_data_factory_dataset_azure_sql_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_azure_sql_table *)

let azurerm_data_factory_dataset_azure_sql_table
    ?additional_properties ?annotations ?description ?folder ?id
    ?parameters ?schema ?table ?timeouts ~data_factory_id
    ~linked_service_id ~name ~schema_column __resource_id =
  let __resource_type =
    "azurerm_data_factory_dataset_azure_sql_table"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      folder;
      id;
      linked_service_id;
      name;
      parameters;
      schema;
      table;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_azure_sql_table
       __resource);
  ()
