(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__image

val three_tier_configuration__application_server_configuration__virtual_machine_configuration__image :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  three_tier_configuration__application_server_configuration__virtual_machine_configuration__image

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile

val three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile :
  admin_username:string prop ->
  ssh_private_key:string prop ->
  ssh_public_key:string prop ->
  unit ->
  three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile

type three_tier_configuration__application_server_configuration__virtual_machine_configuration

val three_tier_configuration__application_server_configuration__virtual_machine_configuration :
  virtual_machine_size:string prop ->
  image:
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    list ->
  os_profile:
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    list ->
  unit ->
  three_tier_configuration__application_server_configuration__virtual_machine_configuration

type three_tier_configuration__application_server_configuration

val three_tier_configuration__application_server_configuration :
  instance_count:float prop ->
  subnet_id:string prop ->
  virtual_machine_configuration:
    three_tier_configuration__application_server_configuration__virtual_machine_configuration
    list ->
  unit ->
  three_tier_configuration__application_server_configuration

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__image

val three_tier_configuration__central_server_configuration__virtual_machine_configuration__image :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  three_tier_configuration__central_server_configuration__virtual_machine_configuration__image

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile

val three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile :
  admin_username:string prop ->
  ssh_private_key:string prop ->
  ssh_public_key:string prop ->
  unit ->
  three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile

type three_tier_configuration__central_server_configuration__virtual_machine_configuration

val three_tier_configuration__central_server_configuration__virtual_machine_configuration :
  virtual_machine_size:string prop ->
  image:
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    list ->
  os_profile:
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    list ->
  unit ->
  three_tier_configuration__central_server_configuration__virtual_machine_configuration

type three_tier_configuration__central_server_configuration

val three_tier_configuration__central_server_configuration :
  instance_count:float prop ->
  subnet_id:string prop ->
  virtual_machine_configuration:
    three_tier_configuration__central_server_configuration__virtual_machine_configuration
    list ->
  unit ->
  three_tier_configuration__central_server_configuration

type three_tier_configuration__database_server_configuration__disk_volume_configuration

val three_tier_configuration__database_server_configuration__disk_volume_configuration :
  number_of_disks:float prop ->
  size_in_gb:float prop ->
  sku_name:string prop ->
  volume_name:string prop ->
  unit ->
  three_tier_configuration__database_server_configuration__disk_volume_configuration

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__image

val three_tier_configuration__database_server_configuration__virtual_machine_configuration__image :
  offer:string prop ->
  publisher:string prop ->
  sku:string prop ->
  version:string prop ->
  unit ->
  three_tier_configuration__database_server_configuration__virtual_machine_configuration__image

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile

val three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile :
  admin_username:string prop ->
  ssh_private_key:string prop ->
  ssh_public_key:string prop ->
  unit ->
  three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile

type three_tier_configuration__database_server_configuration__virtual_machine_configuration

val three_tier_configuration__database_server_configuration__virtual_machine_configuration :
  virtual_machine_size:string prop ->
  image:
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    list ->
  os_profile:
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    list ->
  unit ->
  three_tier_configuration__database_server_configuration__virtual_machine_configuration

type three_tier_configuration__database_server_configuration

val three_tier_configuration__database_server_configuration :
  ?database_type:string prop ->
  instance_count:float prop ->
  subnet_id:string prop ->
  disk_volume_configuration:
    three_tier_configuration__database_server_configuration__disk_volume_configuration
    list ->
  virtual_machine_configuration:
    three_tier_configuration__database_server_configuration__virtual_machine_configuration
    list ->
  unit ->
  three_tier_configuration__database_server_configuration

type three_tier_configuration__resource_names__application_server__virtual_machine__data_disk

val three_tier_configuration__resource_names__application_server__virtual_machine__data_disk :
  names:string prop list ->
  volume_name:string prop ->
  unit ->
  three_tier_configuration__resource_names__application_server__virtual_machine__data_disk

type three_tier_configuration__resource_names__application_server__virtual_machine

val three_tier_configuration__resource_names__application_server__virtual_machine :
  ?host_name:string prop ->
  ?network_interface_names:string prop list ->
  ?os_disk_name:string prop ->
  ?virtual_machine_name:string prop ->
  data_disk:
    three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    list ->
  unit ->
  three_tier_configuration__resource_names__application_server__virtual_machine

type three_tier_configuration__resource_names__application_server

val three_tier_configuration__resource_names__application_server :
  ?availability_set_name:string prop ->
  ?virtual_machine:
    three_tier_configuration__resource_names__application_server__virtual_machine
    list ->
  unit ->
  three_tier_configuration__resource_names__application_server

type three_tier_configuration__resource_names__central_server__load_balancer

val three_tier_configuration__resource_names__central_server__load_balancer :
  ?backend_pool_names:string prop list ->
  ?frontend_ip_configuration_names:string prop list ->
  ?health_probe_names:string prop list ->
  ?name:string prop ->
  unit ->
  three_tier_configuration__resource_names__central_server__load_balancer

type three_tier_configuration__resource_names__central_server__virtual_machine__data_disk

val three_tier_configuration__resource_names__central_server__virtual_machine__data_disk :
  names:string prop list ->
  volume_name:string prop ->
  unit ->
  three_tier_configuration__resource_names__central_server__virtual_machine__data_disk

type three_tier_configuration__resource_names__central_server__virtual_machine

val three_tier_configuration__resource_names__central_server__virtual_machine :
  ?host_name:string prop ->
  ?network_interface_names:string prop list ->
  ?os_disk_name:string prop ->
  ?virtual_machine_name:string prop ->
  data_disk:
    three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    list ->
  unit ->
  three_tier_configuration__resource_names__central_server__virtual_machine

type three_tier_configuration__resource_names__central_server

val three_tier_configuration__resource_names__central_server :
  ?availability_set_name:string prop ->
  ?load_balancer:
    three_tier_configuration__resource_names__central_server__load_balancer
    list ->
  ?virtual_machine:
    three_tier_configuration__resource_names__central_server__virtual_machine
    list ->
  unit ->
  three_tier_configuration__resource_names__central_server

type three_tier_configuration__resource_names__database_server__load_balancer

val three_tier_configuration__resource_names__database_server__load_balancer :
  ?backend_pool_names:string prop list ->
  ?frontend_ip_configuration_names:string prop list ->
  ?health_probe_names:string prop list ->
  ?name:string prop ->
  unit ->
  three_tier_configuration__resource_names__database_server__load_balancer

type three_tier_configuration__resource_names__database_server__virtual_machine__data_disk

val three_tier_configuration__resource_names__database_server__virtual_machine__data_disk :
  names:string prop list ->
  volume_name:string prop ->
  unit ->
  three_tier_configuration__resource_names__database_server__virtual_machine__data_disk

type three_tier_configuration__resource_names__database_server__virtual_machine

val three_tier_configuration__resource_names__database_server__virtual_machine :
  ?host_name:string prop ->
  ?network_interface_names:string prop list ->
  ?os_disk_name:string prop ->
  ?virtual_machine_name:string prop ->
  data_disk:
    three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    list ->
  unit ->
  three_tier_configuration__resource_names__database_server__virtual_machine

type three_tier_configuration__resource_names__database_server

val three_tier_configuration__resource_names__database_server :
  ?availability_set_name:string prop ->
  ?load_balancer:
    three_tier_configuration__resource_names__database_server__load_balancer
    list ->
  ?virtual_machine:
    three_tier_configuration__resource_names__database_server__virtual_machine
    list ->
  unit ->
  three_tier_configuration__resource_names__database_server

type three_tier_configuration__resource_names__shared_storage

val three_tier_configuration__resource_names__shared_storage :
  ?account_name:string prop ->
  ?private_endpoint_name:string prop ->
  unit ->
  three_tier_configuration__resource_names__shared_storage

type three_tier_configuration__resource_names

val three_tier_configuration__resource_names :
  ?application_server:
    three_tier_configuration__resource_names__application_server list ->
  ?central_server:
    three_tier_configuration__resource_names__central_server list ->
  ?database_server:
    three_tier_configuration__resource_names__database_server list ->
  ?shared_storage:
    three_tier_configuration__resource_names__shared_storage list ->
  unit ->
  three_tier_configuration__resource_names

type three_tier_configuration__transport_create_and_mount

val three_tier_configuration__transport_create_and_mount :
  ?resource_group_id:string prop ->
  ?storage_account_name:string prop ->
  unit ->
  three_tier_configuration__transport_create_and_mount

type three_tier_configuration

val three_tier_configuration :
  ?high_availability_type:string prop ->
  ?secondary_ip_enabled:bool prop ->
  ?resource_names:three_tier_configuration__resource_names list ->
  ?transport_create_and_mount:
    three_tier_configuration__transport_create_and_mount list ->
  app_resource_group_name:string prop ->
  application_server_configuration:
    three_tier_configuration__application_server_configuration list ->
  central_server_configuration:
    three_tier_configuration__central_server_configuration list ->
  database_server_configuration:
    three_tier_configuration__database_server_configuration list ->
  unit ->
  three_tier_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_workloads_sap_three_tier_virtual_instance

val azurerm_workloads_sap_three_tier_virtual_instance :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  three_tier_configuration:three_tier_configuration list ->
  unit ->
  azurerm_workloads_sap_three_tier_virtual_instance

val yojson_of_azurerm_workloads_sap_three_tier_virtual_instance :
  azurerm_workloads_sap_three_tier_virtual_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  three_tier_configuration:three_tier_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?managed_resource_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?identity:identity list ->
  ?timeouts:timeouts ->
  app_location:string prop ->
  environment:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sap_fqdn:string prop ->
  sap_product:string prop ->
  three_tier_configuration:three_tier_configuration list ->
  string ->
  t Tf_core.resource
