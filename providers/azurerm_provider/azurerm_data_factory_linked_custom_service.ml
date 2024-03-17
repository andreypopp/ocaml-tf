(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_custom_service__integration_runtime = {
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service__integration_runtime *)

type azurerm_data_factory_linked_custom_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service__timeouts *)

type azurerm_data_factory_linked_custom_service = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  type_ : string; [@key "type"]  (** type *)
  type_properties_json : string;  (** type_properties_json *)
  integration_runtime :
    azurerm_data_factory_linked_custom_service__integration_runtime
    list;
  timeouts :
    azurerm_data_factory_linked_custom_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service *)

let azurerm_data_factory_linked_custom_service ?additional_properties
    ?annotations ?description ?id ?parameters ?timeouts
    ~data_factory_id ~name ~type_ ~type_properties_json
    ~integration_runtime __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_custom_service"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      id;
      name;
      parameters;
      type_;
      type_properties_json;
      integration_runtime;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_custom_service __resource);
  ()
