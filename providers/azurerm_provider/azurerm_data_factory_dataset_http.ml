(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_http__schema_column = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__schema_column *)

type azurerm_data_factory_dataset_http__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__timeouts *)

type azurerm_data_factory_dataset_http = {
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
  relative_url : string option; [@option]  (** relative_url *)
  request_body : string option; [@option]  (** request_body *)
  request_method : string option; [@option]  (** request_method *)
  schema_column :
    azurerm_data_factory_dataset_http__schema_column list;
  timeouts : azurerm_data_factory_dataset_http__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http *)

let azurerm_data_factory_dataset_http ?additional_properties
    ?annotations ?description ?folder ?parameters ?relative_url
    ?request_body ?request_method ?timeouts ~data_factory_id
    ~linked_service_name ~name ~schema_column __resource_id =
  let __resource_type = "azurerm_data_factory_dataset_http" in
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
      relative_url;
      request_body;
      request_method;
      schema_column;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_dataset_http __resource);
  ()
