(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_dataset_postgresql__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_postgresql__schema_column *)

type azurerm_data_factory_dataset_postgresql__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_postgresql__timeouts *)

type azurerm_data_factory_dataset_postgresql = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  folder : string option; [@option]  (** folder *)
  linked_service_name : string;  (** linked_service_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  table_name : string option; [@option]  (** table_name *)
  schema_column :
    azurerm_data_factory_dataset_postgresql__schema_column list;
  timeouts : azurerm_data_factory_dataset_postgresql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_postgresql *)

let azurerm_data_factory_dataset_postgresql ?additional_properties
    ?annotations ?description ?folder ?parameters ?table_name
    ?timeouts ~data_factory_id ~linked_service_name ~name
    ~schema_column __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_postgresql" in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      folder;
      linked_service_name;
      name;
      parameters;
      table_name;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_postgresql __resource);
  ()
