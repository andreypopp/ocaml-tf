(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_function__key_vault_key = {
  linked_service_name : string;  (** linked_service_name *)
  secret_name : string;  (** secret_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function__key_vault_key *)

type azurerm_data_factory_linked_service_azure_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function__timeouts *)

type azurerm_data_factory_linked_service_azure_function = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  key : string option; [@option]  (** key *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  url : string;  (** url *)
  key_vault_key :
    azurerm_data_factory_linked_service_azure_function__key_vault_key
    list;
  timeouts :
    azurerm_data_factory_linked_service_azure_function__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_function *)

let azurerm_data_factory_linked_service_azure_function
    ?additional_properties ?annotations ?description ?id
    ?integration_runtime_name ?key ?parameters ?timeouts
    ~data_factory_id ~name ~url ~key_vault_key __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_function"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_function
       __resource);
  ()
