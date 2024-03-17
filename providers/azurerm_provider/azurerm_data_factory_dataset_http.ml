(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_dataset_http__schema_column = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__schema_column *)

type azurerm_data_factory_dataset_http__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http__timeouts *)

type azurerm_data_factory_dataset_http = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  relative_url : string prop option; [@option]  (** relative_url *)
  request_body : string prop option; [@option]  (** request_body *)
  request_method : string prop option; [@option]
      (** request_method *)
  schema_column :
    azurerm_data_factory_dataset_http__schema_column list;
  timeouts : azurerm_data_factory_dataset_http__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_dataset_http *)

let azurerm_data_factory_dataset_http ?additional_properties
    ?annotations ?description ?folder ?id ?parameters ?relative_url
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
      id;
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
