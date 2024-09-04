(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type catalog_info

val catalog_info :
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?dual_standby_pair_name:string prop ->
  ?elastic_pool_name:string prop ->
  ?pricing_tier:string prop ->
  server_endpoint:string prop ->
  unit ->
  catalog_info

type copy_compute_scale

val copy_compute_scale :
  ?data_integration_unit:float prop ->
  ?time_to_live:float prop ->
  unit ->
  copy_compute_scale

type custom_setup_script

val custom_setup_script :
  blob_container_uri:string prop ->
  sas_token:string prop ->
  unit ->
  custom_setup_script

type express_custom_setup__command_key__key_vault_password

val express_custom_setup__command_key__key_vault_password :
  ?parameters:string prop Tf_core.assoc ->
  ?secret_version:string prop ->
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  express_custom_setup__command_key__key_vault_password

type express_custom_setup__command_key

val express_custom_setup__command_key :
  ?password:string prop ->
  ?key_vault_password:
    express_custom_setup__command_key__key_vault_password list ->
  target_name:string prop ->
  user_name:string prop ->
  unit ->
  express_custom_setup__command_key

type express_custom_setup__component__key_vault_license

val express_custom_setup__component__key_vault_license :
  ?parameters:string prop Tf_core.assoc ->
  ?secret_version:string prop ->
  linked_service_name:string prop ->
  secret_name:string prop ->
  unit ->
  express_custom_setup__component__key_vault_license

type express_custom_setup__component

val express_custom_setup__component :
  ?license:string prop ->
  ?key_vault_license:
    express_custom_setup__component__key_vault_license list ->
  name:string prop ->
  unit ->
  express_custom_setup__component

type express_custom_setup

val express_custom_setup :
  ?environment:string prop Tf_core.assoc ->
  ?powershell_version:string prop ->
  ?command_key:express_custom_setup__command_key list ->
  ?component:express_custom_setup__component list ->
  unit ->
  express_custom_setup

type express_vnet_integration

val express_vnet_integration :
  subnet_id:string prop -> unit -> express_vnet_integration

type package_store

val package_store :
  linked_service_name:string prop ->
  name:string prop ->
  unit ->
  package_store

type pipeline_external_compute_scale

val pipeline_external_compute_scale :
  ?number_of_external_nodes:float prop ->
  ?number_of_pipeline_nodes:float prop ->
  ?time_to_live:float prop ->
  unit ->
  pipeline_external_compute_scale

type proxy

val proxy :
  ?path:string prop ->
  self_hosted_integration_runtime_name:string prop ->
  staging_storage_linked_service_name:string prop ->
  unit ->
  proxy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vnet_integration

val vnet_integration :
  ?public_ips:string prop list ->
  ?subnet_id:string prop ->
  ?subnet_name:string prop ->
  ?vnet_id:string prop ->
  unit ->
  vnet_integration

type azurerm_data_factory_integration_runtime_azure_ssis

val azurerm_data_factory_integration_runtime_azure_ssis :
  ?credential_name:string prop ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_parallel_executions_per_node:float prop ->
  ?number_of_nodes:float prop ->
  ?catalog_info:catalog_info list ->
  ?copy_compute_scale:copy_compute_scale list ->
  ?custom_setup_script:custom_setup_script list ->
  ?express_custom_setup:express_custom_setup list ->
  ?express_vnet_integration:express_vnet_integration list ->
  ?package_store:package_store list ->
  ?pipeline_external_compute_scale:
    pipeline_external_compute_scale list ->
  ?proxy:proxy list ->
  ?timeouts:timeouts ->
  ?vnet_integration:vnet_integration list ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  unit ->
  azurerm_data_factory_integration_runtime_azure_ssis

val yojson_of_azurerm_data_factory_integration_runtime_azure_ssis :
  azurerm_data_factory_integration_runtime_azure_ssis -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  credential_name : string prop;
  data_factory_id : string prop;
  description : string prop;
  edition : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_parallel_executions_per_node : float prop;
  name : string prop;
  node_size : string prop;
  number_of_nodes : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?credential_name:string prop ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_parallel_executions_per_node:float prop ->
  ?number_of_nodes:float prop ->
  ?catalog_info:catalog_info list ->
  ?copy_compute_scale:copy_compute_scale list ->
  ?custom_setup_script:custom_setup_script list ->
  ?express_custom_setup:express_custom_setup list ->
  ?express_vnet_integration:express_vnet_integration list ->
  ?package_store:package_store list ->
  ?pipeline_external_compute_scale:
    pipeline_external_compute_scale list ->
  ?proxy:proxy list ->
  ?timeouts:timeouts ->
  ?vnet_integration:vnet_integration list ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  string ->
  t

val make :
  ?credential_name:string prop ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_parallel_executions_per_node:float prop ->
  ?number_of_nodes:float prop ->
  ?catalog_info:catalog_info list ->
  ?copy_compute_scale:copy_compute_scale list ->
  ?custom_setup_script:custom_setup_script list ->
  ?express_custom_setup:express_custom_setup list ->
  ?express_vnet_integration:express_vnet_integration list ->
  ?package_store:package_store list ->
  ?pipeline_external_compute_scale:
    pipeline_external_compute_scale list ->
  ?proxy:proxy list ->
  ?timeouts:timeouts ->
  ?vnet_integration:vnet_integration list ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  string ->
  t Tf_core.resource
