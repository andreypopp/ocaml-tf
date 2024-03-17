(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_managed__catalog_info = {
  administrator_login : string option; [@option]
      (** administrator_login *)
  administrator_password : string option; [@option]
      (** administrator_password *)
  pricing_tier : string option; [@option]  (** pricing_tier *)
  server_endpoint : string;  (** server_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__catalog_info *)

type azurerm_data_factory_integration_runtime_managed__custom_setup_script = {
  blob_container_uri : string;  (** blob_container_uri *)
  sas_token : string;  (** sas_token *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__custom_setup_script *)

type azurerm_data_factory_integration_runtime_managed__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__timeouts *)

type azurerm_data_factory_integration_runtime_managed__vnet_integration = {
  subnet_name : string;  (** subnet_name *)
  vnet_id : string;  (** vnet_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__vnet_integration *)

type azurerm_data_factory_integration_runtime_managed = {
  credential_name : string option; [@option]  (** credential_name *)
  data_factory_id : string;  (** data_factory_id *)
  description : string option; [@option]  (** description *)
  edition : string option; [@option]  (** edition *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  max_parallel_executions_per_node : float option; [@option]
      (** max_parallel_executions_per_node *)
  name : string;  (** name *)
  node_size : string;  (** node_size *)
  number_of_nodes : float option; [@option]  (** number_of_nodes *)
  catalog_info :
    azurerm_data_factory_integration_runtime_managed__catalog_info
    list;
  custom_setup_script :
    azurerm_data_factory_integration_runtime_managed__custom_setup_script
    list;
  timeouts :
    azurerm_data_factory_integration_runtime_managed__timeouts option;
  vnet_integration :
    azurerm_data_factory_integration_runtime_managed__vnet_integration
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed *)

let azurerm_data_factory_integration_runtime_managed ?credential_name
    ?description ?edition ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes ?timeouts
    ~data_factory_id ~location ~name ~node_size ~catalog_info
    ~custom_setup_script ~vnet_integration __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_managed"
  in
  let __resource =
    {
      credential_name;
      data_factory_id;
      description;
      edition;
      license_type;
      location;
      max_parallel_executions_per_node;
      name;
      node_size;
      number_of_nodes;
      catalog_info;
      custom_setup_script;
      timeouts;
      vnet_integration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_managed
       __resource);
  ()
