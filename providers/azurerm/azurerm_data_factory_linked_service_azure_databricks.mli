(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type instance_pool

val instance_pool :
  ?max_number_of_workers:float prop ->
  ?min_number_of_workers:float prop ->
  cluster_version:string prop ->
  instance_pool_id:string prop ->
  unit ->
  instance_pool

type key_vault_password

val key_vault_password :
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  key_vault_password

type new_cluster_config

val new_cluster_config :
  ?custom_tags:string prop Tf_core.assoc ->
  ?driver_node_type:string prop ->
  ?init_scripts:string prop list ->
  ?log_destination:string prop ->
  ?max_number_of_workers:float prop ->
  ?min_number_of_workers:float prop ->
  ?spark_config:string prop Tf_core.assoc ->
  ?spark_environment_variables:string prop Tf_core.assoc ->
  cluster_version:string prop ->
  node_type:string prop ->
  unit ->
  new_cluster_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_data_factory_linked_service_azure_databricks

val azurerm_data_factory_linked_service_azure_databricks :
  ?access_token:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?instance_pool:instance_pool list ->
  ?key_vault_password:key_vault_password list ->
  ?new_cluster_config:new_cluster_config list ->
  ?timeouts:timeouts ->
  adb_domain:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_linked_service_azure_databricks

val yojson_of_azurerm_data_factory_linked_service_azure_databricks :
  azurerm_data_factory_linked_service_azure_databricks -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_token : string prop;
  adb_domain : string prop;
  additional_properties : string Tf_core.assoc prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  existing_cluster_id : string prop;
  id : string prop;
  integration_runtime_name : string prop;
  msi_work_space_resource_id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?access_token:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?instance_pool:instance_pool list ->
  ?key_vault_password:key_vault_password list ->
  ?new_cluster_config:new_cluster_config list ->
  ?timeouts:timeouts ->
  adb_domain:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?access_token:string prop ->
  ?additional_properties:string prop Tf_core.assoc ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:string prop Tf_core.assoc ->
  ?instance_pool:instance_pool list ->
  ?key_vault_password:key_vault_password list ->
  ?new_cluster_config:new_cluster_config list ->
  ?timeouts:timeouts ->
  adb_domain:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
