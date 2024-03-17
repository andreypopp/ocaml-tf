(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_factory_linked_service_azure_search__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_search__timeouts *)

type azurerm_data_factory_linked_service_azure_search = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  search_service_key : string;  (** search_service_key *)
  url : string;  (** url *)
  timeouts :
    azurerm_data_factory_linked_service_azure_search__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_azure_search *)

let azurerm_data_factory_linked_service_azure_search
    ?additional_properties ?annotations ?description
    ?integration_runtime_name ?parameters ?timeouts ~data_factory_id
    ~name ~search_service_key ~url __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_azure_search"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      integration_runtime_name;
      name;
      parameters;
      search_service_key;
      url;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_azure_search
       __resource);
  ()
