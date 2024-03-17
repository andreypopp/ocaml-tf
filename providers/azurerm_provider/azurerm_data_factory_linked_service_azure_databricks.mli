(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_data_factory_linked_service_azure_databricks__instance_pool

type azurerm_data_factory_linked_service_azure_databricks__key_vault_password

type azurerm_data_factory_linked_service_azure_databricks__new_cluster_config

type azurerm_data_factory_linked_service_azure_databricks__timeouts
type azurerm_data_factory_linked_service_azure_databricks

type t = private {
  access_token : string prop;
  adb_domain : string prop;
  additional_properties : (string * string) list prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  existing_cluster_id : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  msi_work_space_resource_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
}

val azurerm_data_factory_linked_service_azure_databricks :
  ?access_token:string prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?timeouts:
    azurerm_data_factory_linked_service_azure_databricks__timeouts ->
  adb_domain:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
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
  t
