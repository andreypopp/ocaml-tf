(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type single_server_configuration__disk_volume_configuration

val single_server_configuration__disk_volume_configuration :
  number_of_disks:float prop ->
  size_in_gb:float prop ->
  sku_name:string prop ->
  volume_name:string prop ->
  unit ->
  single_server_configuration__disk_volume_configuration

type single_server_configuration__virtual_machine_configuration__image

val single_server_configuration__virtual_machine_configuration__image :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  single_server_configuration__virtual_machine_configuration__image

type single_server_configuration__virtual_machine_configuration__os_profile

val single_server_configuration__virtual_machine_configuration__os_profile :
  admin_username:string prop ->
  ssh_private_key:string prop ->
  ssh_public_key:string prop ->
  unit ->
  single_server_configuration__virtual_machine_configuration__os_profile

type single_server_configuration__virtual_machine_configuration

val single_server_configuration__virtual_machine_configuration :
  virtual_machine_size:string prop ->
  image:
    single_server_configuration__virtual_machine_configuration__image
    list ->
  os_profile:
    single_server_configuration__virtual_machine_configuration__os_profile
    list ->
  unit ->
  single_server_configuration__virtual_machine_configuration

type single_server_configuration__virtual_machine_resource_names__data_disk

val single_server_configuration__virtual_machine_resource_names__data_disk :
  names:string prop list ->
  volume_name:string prop ->
  unit ->
  single_server_configuration__virtual_machine_resource_names__data_disk

type single_server_configuration__virtual_machine_resource_names

val single_server_configuration__virtual_machine_resource_names :
  ?host_name:string prop ->
  ?network_interface_names:string prop list ->
  ?os_disk_name:string prop ->
  ?virtual_machine_name:string prop ->
  data_disk:
    single_server_configuration__virtual_machine_resource_names__data_disk
    list ->
  unit ->
  single_server_configuration__virtual_machine_resource_names

type single_server_configuration

val single_server_configuration :
  ?database_type:string prop ->
  ?secondary_ip_enabled:bool prop ->
  ?virtual_machine_resource_names:
    single_server_configuration__virtual_machine_resource_names list ->
  app_resource_group_name:string prop ->
  subnet_id:string prop ->
  disk_volume_configuration:
    single_server_configuration__disk_volume_configuration list ->
  virtual_machine_configuration:
    single_server_configuration__virtual_machine_configuration list ->
  unit ->
  single_server_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_workloads_sap_single_node_virtual_instance

val azurerm_workloads_sap_single_node_virtual_instance :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  single_server_configuration:single_server_configuration list ->
  unit ->
  azurerm_workloads_sap_single_node_virtual_instance

val yojson_of_azurerm_workloads_sap_single_node_virtual_instance :
  azurerm_workloads_sap_single_node_virtual_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  single_server_configuration:single_server_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  single_server_configuration:single_server_configuration list ->
  string ->
  t Tf_core.resource
