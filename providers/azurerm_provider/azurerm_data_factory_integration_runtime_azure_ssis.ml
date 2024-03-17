(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure_ssis__catalog_info = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_password : string prop option; [@option]
      (** administrator_password *)
  dual_standby_pair_name : string prop option; [@option]
      (** dual_standby_pair_name *)
  elastic_pool_name : string prop option; [@option]
      (** elastic_pool_name *)
  pricing_tier : string prop option; [@option]  (** pricing_tier *)
  server_endpoint : string prop;  (** server_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__catalog_info *)

type azurerm_data_factory_integration_runtime_azure_ssis__custom_setup_script = {
  blob_container_uri : string prop;  (** blob_container_uri *)
  sas_token : string prop;  (** sas_token *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__custom_setup_script *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key__key_vault_password = {
  linked_service_name : string prop;  (** linked_service_name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  secret_name : string prop;  (** secret_name *)
  secret_version : string prop option; [@option]
      (** secret_version *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key__key_vault_password *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key = {
  password : string prop option; [@option]  (** password *)
  target_name : string prop;  (** target_name *)
  user_name : string prop;  (** user_name *)
  key_vault_password :
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key__key_vault_password
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component__key_vault_license = {
  linked_service_name : string prop;  (** linked_service_name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  secret_name : string prop;  (** secret_name *)
  secret_version : string prop option; [@option]
      (** secret_version *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component__key_vault_license *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component = {
  license : string prop option; [@option]  (** license *)
  name : string prop;  (** name *)
  key_vault_license :
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component__key_vault_license
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup = {
  environment : (string * string prop) list option; [@option]
      (** environment *)
  powershell_version : string prop option; [@option]
      (** powershell_version *)
  command_key :
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key
    list;
  component :
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup *)

type azurerm_data_factory_integration_runtime_azure_ssis__express_vnet_integration = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__express_vnet_integration *)

type azurerm_data_factory_integration_runtime_azure_ssis__package_store = {
  linked_service_name : string prop;  (** linked_service_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__package_store *)

type azurerm_data_factory_integration_runtime_azure_ssis__proxy = {
  path : string prop option; [@option]  (** path *)
  self_hosted_integration_runtime_name : string prop;
      (** self_hosted_integration_runtime_name *)
  staging_storage_linked_service_name : string prop;
      (** staging_storage_linked_service_name *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__proxy *)

type azurerm_data_factory_integration_runtime_azure_ssis__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__timeouts *)

type azurerm_data_factory_integration_runtime_azure_ssis__vnet_integration = {
  public_ips : string prop list option; [@option]  (** public_ips *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  subnet_name : string prop option; [@option]  (** subnet_name *)
  vnet_id : string prop option; [@option]  (** vnet_id *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis__vnet_integration *)

type azurerm_data_factory_integration_runtime_azure_ssis = {
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
    azurerm_data_factory_integration_runtime_azure_ssis__catalog_info
    list;
  custom_setup_script :
    azurerm_data_factory_integration_runtime_azure_ssis__custom_setup_script
    list;
  express_custom_setup :
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup
    list;
  express_vnet_integration :
    azurerm_data_factory_integration_runtime_azure_ssis__express_vnet_integration
    list;
  package_store :
    azurerm_data_factory_integration_runtime_azure_ssis__package_store
    list;
  proxy :
    azurerm_data_factory_integration_runtime_azure_ssis__proxy list;
  timeouts :
    azurerm_data_factory_integration_runtime_azure_ssis__timeouts
    option;
  vnet_integration :
    azurerm_data_factory_integration_runtime_azure_ssis__vnet_integration
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_azure_ssis *)

let azurerm_data_factory_integration_runtime_azure_ssis
    ?credential_name ?description ?edition ?id ?license_type
    ?max_parallel_executions_per_node ?number_of_nodes ?timeouts
    ~data_factory_id ~location ~name ~node_size ~catalog_info
    ~custom_setup_script ~express_custom_setup
    ~express_vnet_integration ~package_store ~proxy ~vnet_integration
    __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_azure_ssis"
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
      express_custom_setup;
      express_vnet_integration;
      package_store;
      proxy;
      timeouts;
      vnet_integration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_azure_ssis
       __resource);
  ()
