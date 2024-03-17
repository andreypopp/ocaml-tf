(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_cosmosdb__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_cosmosdb__timeouts *)

type azurerm_data_factory_linked_service_cosmosdb = {
  account_endpoint : string prop option; [@option]
      (** account_endpoint *)
  account_key : string prop option; [@option]  (** account_key *)
  additional_properties : (string * string prop) list option;
      [@option]
      (** additional_properties *)
  annotations : string prop list option; [@option]
      (** annotations *)
  connection_string : string prop option; [@option]
      (** connection_string *)
  data_factory_id : string prop;  (** data_factory_id *)
  database : string prop option; [@option]  (** database *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  integration_runtime_name : string prop option; [@option]
      (** integration_runtime_name *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  timeouts :
    azurerm_data_factory_linked_service_cosmosdb__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_cosmosdb *)

let azurerm_data_factory_linked_service_cosmosdb ?account_endpoint
    ?account_key ?additional_properties ?annotations
    ?connection_string ?database ?description ?id
    ?integration_runtime_name ?parameters ?timeouts ~data_factory_id
    ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_cosmosdb"
  in
  let __resource =
    {
      account_endpoint;
      account_key;
      additional_properties;
      annotations;
      connection_string;
      data_factory_id;
      database;
      description;
      id;
      integration_runtime_name;
      name;
      parameters;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_cosmosdb
       __resource);
  ()
