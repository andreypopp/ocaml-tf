(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_integration_runtime_managed__catalog_info

type azurerm_data_factory_integration_runtime_managed__custom_setup_script

type azurerm_data_factory_integration_runtime_managed__timeouts

type azurerm_data_factory_integration_runtime_managed__vnet_integration

type azurerm_data_factory_integration_runtime_managed

val azurerm_data_factory_integration_runtime_managed :
  ?credential_name:string prop ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_parallel_executions_per_node:float prop ->
  ?number_of_nodes:float prop ->
  ?timeouts:
    azurerm_data_factory_integration_runtime_managed__timeouts ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  catalog_info:
    azurerm_data_factory_integration_runtime_managed__catalog_info
    list ->
  custom_setup_script:
    azurerm_data_factory_integration_runtime_managed__custom_setup_script
    list ->
  vnet_integration:
    azurerm_data_factory_integration_runtime_managed__vnet_integration
    list ->
  string ->
  unit
