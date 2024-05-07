(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type catalog_info

val catalog_info :
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?pricing_tier:string prop ->
  server_endpoint:string prop ->
  unit ->
  catalog_info

type custom_setup_script

val custom_setup_script :
  blob_container_uri:string prop ->
  sas_token:string prop ->
  unit ->
  custom_setup_script

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
  subnet_name:string prop ->
  vnet_id:string prop ->
  unit ->
  vnet_integration

type azurerm_data_factory_integration_runtime_managed

val azurerm_data_factory_integration_runtime_managed :
  ?credential_name:string prop ->
  ?description:string prop ->
  ?edition:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_parallel_executions_per_node:float prop ->
  ?number_of_nodes:float prop ->
  ?catalog_info:catalog_info list ->
  ?custom_setup_script:custom_setup_script list ->
  ?timeouts:timeouts ->
  ?vnet_integration:vnet_integration list ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  unit ->
  azurerm_data_factory_integration_runtime_managed

val yojson_of_azurerm_data_factory_integration_runtime_managed :
  azurerm_data_factory_integration_runtime_managed -> json

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
  ?custom_setup_script:custom_setup_script list ->
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
  ?custom_setup_script:custom_setup_script list ->
  ?timeouts:timeouts ->
  ?vnet_integration:vnet_integration list ->
  data_factory_id:string prop ->
  location:string prop ->
  name:string prop ->
  node_size:string prop ->
  string ->
  t Tf_core.resource
