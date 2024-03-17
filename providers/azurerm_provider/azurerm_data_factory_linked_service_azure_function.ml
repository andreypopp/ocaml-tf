(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_function__key_vault_key = {
  linked_service_name : string prop;  (** linked_service_name *)
  secret_name : string prop;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function__key_vault_key *)

type azurerm_data_factory_linked_service_azure_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function__timeouts *)

type azurerm_data_factory_linked_service_azure_function = {
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  key : string prop option; [@option]  (** key *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  url : string prop;  (** url *)
  key_vault_key :
    azurerm_data_factory_linked_service_azure_function__key_vault_key
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_function__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function *)

type t = {
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  key : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  url : string prop;
}

let azurerm_data_factory_linked_service_azure_function
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?timeouts
    ~data_factory_id ~name ~url ~key_vault_key __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_function"
  in
  let __resource =
    ({
       additional_properties;
       annotations;
       data_factory_id;
       description;
       id;
       integration_runtime_name;
       key;
       name;
       parameters;
       url;
       key_vault_key;
       timeouts;
     }
      : azurerm_data_factory_linked_service_azure_function)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_function
       __resource);
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
       integration_runtime_name =
         Prop.computed __resource_type __resource_id
           "integration_runtime_name";
       key = Prop.computed __resource_type __resource_id "key";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
