(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_managed__catalog_info = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_password : string prop option; [@option]
      (** administrator_password *)
  pricing_tier : string prop option; [@option]  (** pricing_tier *)
  server_endpoint : string prop;  (** server_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__catalog_info *)

type azurerm_data_factory_integration_runtime_managed__custom_setup_script = {
  blob_container_uri : string prop;  (** blob_container_uri *)
  sas_token : string prop;  (** sas_token *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__custom_setup_script *)

type azurerm_data_factory_integration_runtime_managed__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__timeouts *)

type azurerm_data_factory_integration_runtime_managed__vnet_integration = {
  subnet_name : string prop;  (** subnet_name *)
  vnet_id : string prop;  (** vnet_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_managed__vnet_integration *)

type azurerm_data_factory_integration_runtime_managed = {
  credential_name : string prop option; [@option]
      (** credential_name *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  edition : string prop option; [@option]  (** edition *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_parallel_executions_per_node : float prop option; [@option]
      (** max_parallel_executions_per_node *)
  name : string prop;  (** name *)
  node_size : string prop;  (** node_size *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
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
    ?description ?edition ?id ?license_type
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
      id;
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
