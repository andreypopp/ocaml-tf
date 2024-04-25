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
  ?custom_tags:(string * string prop) list ->
  ?driver_node_type:string prop ->
  ?init_scripts:string prop list ->
  ?log_destination:string prop ->
  ?max_number_of_workers:float prop ->
  ?min_number_of_workers:float prop ->
  ?spark_config:(string * string prop) list ->
  ?spark_environment_variables:(string * string prop) list ->
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
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:(string * string prop) list ->
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

val register :
  ?tf_module:tf_module ->
  ?access_token:string prop ->
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:(string * string prop) list ->
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
  ?additional_properties:(string * string prop) list ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?existing_cluster_id:string prop ->
  ?id:string prop ->
  ?integration_runtime_name:string prop ->
  ?msi_work_space_resource_id:string prop ->
  ?parameters:(string * string prop) list ->
  ?instance_pool:instance_pool list ->
  ?key_vault_password:key_vault_password list ->
  ?new_cluster_config:new_cluster_config list ->
  ?timeouts:timeouts ->
  adb_domain:string prop ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
