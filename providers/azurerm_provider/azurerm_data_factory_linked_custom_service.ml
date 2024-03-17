(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_custom_service__integration_runtime = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service__integration_runtime *)

type azurerm_data_factory_linked_custom_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service__timeouts *)

type azurerm_data_factory_linked_custom_service = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  type_ : string prop; [@key "type"]  (** type *)
  type_properties_json : string prop;  (** type_properties_json *)
  integration_runtime :
    azurerm_data_factory_linked_custom_service__integration_runtime
    list;
  timeouts :
    azurerm_data_factory_linked_custom_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_custom_service *)

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  type_ : string prop;
  type_properties_json : string prop;
}

let azurerm_data_factory_linked_custom_service ?additional_properties
    ?annotations ?description ?id ?parameters ?timeouts
    ~data_factory_id ~name ~type_ ~type_properties_json
    ~integration_runtime __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_custom_service"
  in
  let __resource =
    ({
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
      : azurerm_data_factory_linked_custom_service)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_custom_service __resource);
  let __resource_attributes =
    ({
       additional_properties =
         Prop.computed __resource_type __resource_id
           "additional_properties";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       type_ = Prop.computed __resource_type __resource_id "type";
       type_properties_json =
         Prop.computed __resource_type __resource_id
           "type_properties_json";
     }
      : t)
  in
  __resource_attributes
