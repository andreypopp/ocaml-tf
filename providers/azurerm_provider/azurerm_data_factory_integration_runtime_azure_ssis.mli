(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_azure_ssis__catalog_info

type azurerm_data_factory_integration_runtime_azure_ssis__custom_setup_script

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key__key_vault_password

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__command_key

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component__key_vault_license

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup__component

type azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup

type azurerm_data_factory_integration_runtime_azure_ssis__express_vnet_integration

type azurerm_data_factory_integration_runtime_azure_ssis__package_store

type azurerm_data_factory_integration_runtime_azure_ssis__proxy
type azurerm_data_factory_integration_runtime_azure_ssis__timeouts

type azurerm_data_factory_integration_runtime_azure_ssis__vnet_integration

type azurerm_data_factory_integration_runtime_azure_ssis

val azurerm_data_factory_integration_runtime_azure_ssis :
  ?credential_name:string ->
  ?description:string ->
  ?edition:string ->
  ?license_type:string ->
  ?max_parallel_executions_per_node:float ->
  ?number_of_nodes:float ->
  ?timeouts:
    azurerm_data_factory_integration_runtime_azure_ssis__timeouts ->
  data_factory_id:string ->
  location:string ->
  name:string ->
  node_size:string ->
  catalog_info:
    azurerm_data_factory_integration_runtime_azure_ssis__catalog_info
    list ->
  custom_setup_script:
    azurerm_data_factory_integration_runtime_azure_ssis__custom_setup_script
    list ->
  express_custom_setup:
    azurerm_data_factory_integration_runtime_azure_ssis__express_custom_setup
    list ->
  express_vnet_integration:
    azurerm_data_factory_integration_runtime_azure_ssis__express_vnet_integration
    list ->
  package_store:
    azurerm_data_factory_integration_runtime_azure_ssis__package_store
    list ->
  proxy:
    azurerm_data_factory_integration_runtime_azure_ssis__proxy list ->
  vnet_integration:
    azurerm_data_factory_integration_runtime_azure_ssis__vnet_integration
    list ->
  string ->
  unit
