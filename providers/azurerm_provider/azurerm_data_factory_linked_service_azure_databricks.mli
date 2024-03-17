(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_databricks__instance_pool

type azurerm_data_factory_linked_service_azure_databricks__key_vault_password

type azurerm_data_factory_linked_service_azure_databricks__new_cluster_config

type azurerm_data_factory_linked_service_azure_databricks__timeouts
type azurerm_data_factory_linked_service_azure_databricks

val azurerm_data_factory_linked_service_azure_databricks :
  ?access_token:string ->
  ?additional_properties:(string * string) list ->
  ?annotations:string list ->
  ?description:string ->
  ?existing_cluster_id:string ->
  ?id:string ->
  ?integration_runtime_name:string ->
  ?msi_work_space_resource_id:string ->
  ?parameters:(string * string) list ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_databricks__timeouts ->
  adb_domain:string ->
  data_factory_id:string ->
  name:string ->
  instance_pool:
    azurerm_data_factory_linked_service_azure_databricks__instance_pool
    list ->
  key_vault_password:
    azurerm_data_factory_linked_service_azure_databricks__key_vault_password
    list ->
  new_cluster_config:
    azurerm_data_factory_linked_service_azure_databricks__new_cluster_config
    list ->
  string ->
  unit
