(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_custom_dataset__linked_service = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_custom_dataset__linked_service *)

type azurerm_data_factory_custom_dataset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_custom_dataset__timeouts *)

type azurerm_data_factory_custom_dataset = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  folder : string option; [@option]  (** folder *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  schema_json : string option; [@option]  (** schema_json *)
  type_ : string; [@key "type"]  (** type *)
  type_properties_json : string;  (** type_properties_json *)
  linked_service :
    azurerm_data_factory_custom_dataset__linked_service list;
  timeouts : azurerm_data_factory_custom_dataset__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_custom_dataset *)

let azurerm_data_factory_custom_dataset ?additional_properties
    ?annotations ?description ?folder ?id ?parameters ?schema_json
    ?timeouts ~data_factory_id ~name ~type_ ~type_properties_json
    ~linked_service __resource_id =
  let __resource_type = "azurerm_data_factory_custom_dataset" in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      folder;
      id;
      name;
      parameters;
      schema_json;
      type_;
      type_properties_json;
      linked_service;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_custom_dataset __resource);
  ()
