(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_linked_service_kusto__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_kusto__timeouts *)

type azurerm_data_factory_linked_service_kusto = {
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
  kusto_database_name : string prop;  (** kusto_database_name *)
  kusto_endpoint : string prop;  (** kusto_endpoint *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  service_principal_id : string prop option; [@option]
      (** service_principal_id *)
  service_principal_key : string prop option; [@option]
      (** service_principal_key *)
  tenant : string prop option; [@option]  (** tenant *)
  use_managed_identity : bool prop option; [@option]
      (** use_managed_identity *)
  timeouts :
    azurerm_data_factory_linked_service_kusto__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_linked_service_kusto *)

let azurerm_data_factory_linked_service_kusto ?additional_properties
    ?annotations ?description ?id ?integration_runtime_name
    ?parameters ?service_principal_id ?service_principal_key ?tenant
    ?use_managed_identity ?timeouts ~data_factory_id
    ~kusto_database_name ~kusto_endpoint ~name __resource_id =
  let __resource_type =
    "azurerm_data_factory_linked_service_kusto"
  in
  let __resource =
    {
      additional_properties;
      annotations;
      data_factory_id;
      description;
      id;
      integration_runtime_name;
      kusto_database_name;
      kusto_endpoint;
      name;
      parameters;
      service_principal_id;
      service_principal_key;
      tenant;
      use_managed_identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_linked_service_kusto __resource);
  ()
