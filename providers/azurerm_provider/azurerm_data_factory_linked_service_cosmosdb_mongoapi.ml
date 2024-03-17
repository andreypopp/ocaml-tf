(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts *)

type azurerm_data_factory_linked_service_cosmosdb_mongoapi = {
  additional_properties : (string * string) list option; [@option]
      (** additional_properties *)
  annotations : string list option; [@option]  (** annotations *)
  connection_string : string option; [@option]
      (** connection_string *)
  data_factory_id : string;  (** data_factory_id *)
  database : string option; [@option]  (** database *)
  description : string option; [@option]  (** description *)
  integration_runtime_name : string option; [@option]
      (** integration_runtime_name *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  server_version_is_32_or_higher : bool option; [@option]
      (** server_version_is_32_or_higher *)
  timeouts :
    azurerm_data_factory_linked_service_cosmosdb_mongoapi__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_cosmosdb_mongoapi *)

let azurerm_data_factory_linked_service_cosmosdb_mongoapi
    ?additional_properties ?annotations ?connection_string ?database
    ?description ?integration_runtime_name ?parameters
    ?server_version_is_32_or_higher ?timeouts ~data_factory_id ~name
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_cosmosdb_mongoapi"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      connection_string;
      data_factory_id;
      database;
      description;
      integration_runtime_name;
      name;
      parameters;
      server_version_is_32_or_higher;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_cosmosdb_mongoapi
       __resource);
  ()
