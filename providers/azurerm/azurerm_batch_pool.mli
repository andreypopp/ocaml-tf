(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type auto_scale

val auto_scale :
  ?evaluation_interval:string prop ->
  formula:string prop ->
  unit ->
  auto_scale

type certificate

val certificate :
  ?store_name:string prop ->
  ?visibility:string prop list ->
  id:string prop ->
  store_location:string prop ->
  unit ->
  certificate

type container_configuration__container_registries = {
  password : string prop;  (** password *)
  registry_server : string prop;  (** registry_server *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
  user_name : string prop;  (** user_name *)
}

type container_configuration

val container_configuration :
  ?container_image_names:string prop list ->
  ?container_registries:
    container_configuration__container_registries list ->
  ?type_:string prop ->
  unit ->
  container_configuration

type data_disks

val data_disks :
  ?caching:string prop ->
  ?storage_account_type:string prop ->
  disk_size_gb:float prop ->
  lun:float prop ->
  unit ->
  data_disks

type disk_encryption

val disk_encryption :
  disk_encryption_target:string prop -> unit -> disk_encryption

type extensions

val extensions :
  ?auto_upgrade_minor_version:bool prop ->
  ?automatic_upgrade_enabled:bool prop ->
  ?protected_settings:string prop ->
  ?provision_after_extensions:string prop list ->
  ?settings_json:string prop ->
  ?type_handler_version:string prop ->
  name:string prop ->
  publisher:string prop ->
  type_:string prop ->
  unit ->
  extensions

type fixed_scale

val fixed_scale :
  ?node_deallocation_method:string prop ->
  ?resize_timeout:string prop ->
  ?target_dedicated_nodes:float prop ->
  ?target_low_priority_nodes:float prop ->
  unit ->
  fixed_scale

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type mount__azure_blob_file_system

val mount__azure_blob_file_system :
  ?account_key:string prop ->
  ?blobfuse_options:string prop ->
  ?identity_id:string prop ->
  ?sas_key:string prop ->
  account_name:string prop ->
  container_name:string prop ->
  relative_mount_path:string prop ->
  unit ->
  mount__azure_blob_file_system

type mount__azure_file_share

val mount__azure_file_share :
  ?mount_options:string prop ->
  account_key:string prop ->
  account_name:string prop ->
  azure_file_url:string prop ->
  relative_mount_path:string prop ->
  unit ->
  mount__azure_file_share

type mount__cifs_mount

val mount__cifs_mount :
  ?mount_options:string prop ->
  password:string prop ->
  relative_mount_path:string prop ->
  source:string prop ->
  user_name:string prop ->
  unit ->
  mount__cifs_mount

type mount__nfs_mount

val mount__nfs_mount :
  ?mount_options:string prop ->
  relative_mount_path:string prop ->
  source:string prop ->
  unit ->
  mount__nfs_mount

type mount

val mount :
  azure_blob_file_system:mount__azure_blob_file_system list ->
  azure_file_share:mount__azure_file_share list ->
  cifs_mount:mount__cifs_mount list ->
  nfs_mount:mount__nfs_mount list ->
  unit ->
  mount

type network_configuration__endpoint_configuration__network_security_group_rules

val network_configuration__endpoint_configuration__network_security_group_rules :
  ?source_port_ranges:string prop list ->
  access:string prop ->
  priority:float prop ->
  source_address_prefix:string prop ->
  unit ->
  network_configuration__endpoint_configuration__network_security_group_rules

type network_configuration__endpoint_configuration

val network_configuration__endpoint_configuration :
  backend_port:float prop ->
  frontend_port_range:string prop ->
  name:string prop ->
  protocol:string prop ->
  network_security_group_rules:
    network_configuration__endpoint_configuration__network_security_group_rules
    list ->
  unit ->
  network_configuration__endpoint_configuration

type network_configuration

val network_configuration :
  ?accelerated_networking_enabled:bool prop ->
  ?dynamic_vnet_assignment_scope:string prop ->
  ?public_address_provisioning_type:string prop ->
  ?public_ips:string prop list ->
  ?subnet_id:string prop ->
  endpoint_configuration:
    network_configuration__endpoint_configuration list ->
  unit ->
  network_configuration

type node_placement

val node_placement : ?policy:string prop -> unit -> node_placement

type start_task__container__registry

val start_task__container__registry :
  ?password:string prop ->
  ?user_assigned_identity_id:string prop ->
  ?user_name:string prop ->
  registry_server:string prop ->
  unit ->
  start_task__container__registry

type start_task__container

val start_task__container :
  ?run_options:string prop ->
  ?working_directory:string prop ->
  image_name:string prop ->
  registry:start_task__container__registry list ->
  unit ->
  start_task__container

type start_task__resource_file

val start_task__resource_file :
  ?auto_storage_container_name:string prop ->
  ?blob_prefix:string prop ->
  ?file_mode:string prop ->
  ?file_path:string prop ->
  ?http_url:string prop ->
  ?storage_container_url:string prop ->
  ?user_assigned_identity_id:string prop ->
  unit ->
  start_task__resource_file

type start_task__user_identity__auto_user

val start_task__user_identity__auto_user :
  ?elevation_level:string prop ->
  ?scope:string prop ->
  unit ->
  start_task__user_identity__auto_user

type start_task__user_identity

val start_task__user_identity :
  ?user_name:string prop ->
  auto_user:start_task__user_identity__auto_user list ->
  unit ->
  start_task__user_identity

type start_task

val start_task :
  ?common_environment_properties:(string * string prop) list ->
  ?task_retry_maximum:float prop ->
  ?wait_for_success:bool prop ->
  command_line:string prop ->
  container:start_task__container list ->
  resource_file:start_task__resource_file list ->
  user_identity:start_task__user_identity list ->
  unit ->
  start_task

type storage_image_reference

val storage_image_reference :
  ?id:string prop ->
  ?offer:string prop ->
  ?publisher:string prop ->
  ?sku:string prop ->
  ?version:string prop ->
  unit ->
  storage_image_reference

type task_scheduling_policy

val task_scheduling_policy :
  ?node_fill_type:string prop -> unit -> task_scheduling_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type user_accounts__linux_user_configuration

val user_accounts__linux_user_configuration :
  ?gid:float prop ->
  ?ssh_private_key:string prop ->
  ?uid:float prop ->
  unit ->
  user_accounts__linux_user_configuration

type user_accounts__windows_user_configuration

val user_accounts__windows_user_configuration :
  login_mode:string prop ->
  unit ->
  user_accounts__windows_user_configuration

type user_accounts

val user_accounts :
  elevation_level:string prop ->
  name:string prop ->
  password:string prop ->
  linux_user_configuration:
    user_accounts__linux_user_configuration list ->
  windows_user_configuration:
    user_accounts__windows_user_configuration list ->
  unit ->
  user_accounts

type windows

val windows : ?enable_automatic_updates:bool prop -> unit -> windows

type azurerm_batch_pool

val azurerm_batch_pool :
  ?display_name:string prop ->
  ?id:string prop ->
  ?inter_node_communication:string prop ->
  ?license_type:string prop ->
  ?max_tasks_per_node:float prop ->
  ?metadata:(string * string prop) list ->
  ?os_disk_placement:string prop ->
  ?stop_pending_resize_operation:bool prop ->
  ?target_node_communication_mode:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  node_agent_sku_id:string prop ->
  resource_group_name:string prop ->
  vm_size:string prop ->
  auto_scale:auto_scale list ->
  certificate:certificate list ->
  container_configuration:container_configuration list ->
  data_disks:data_disks list ->
  disk_encryption:disk_encryption list ->
  extensions:extensions list ->
  fixed_scale:fixed_scale list ->
  identity:identity list ->
  mount:mount list ->
  network_configuration:network_configuration list ->
  node_placement:node_placement list ->
  start_task:start_task list ->
  storage_image_reference:storage_image_reference list ->
  task_scheduling_policy:task_scheduling_policy list ->
  user_accounts:user_accounts list ->
  windows:windows list ->
  unit ->
  azurerm_batch_pool

val yojson_of_azurerm_batch_pool : azurerm_batch_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_name : string prop;
  display_name : string prop;
  id : string prop;
  inter_node_communication : string prop;
  license_type : string prop;
  max_tasks_per_node : float prop;
  metadata : (string * string) list prop;
  name : string prop;
  node_agent_sku_id : string prop;
  os_disk_placement : string prop;
  resource_group_name : string prop;
  stop_pending_resize_operation : bool prop;
  target_node_communication_mode : string prop;
  vm_size : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?inter_node_communication:string prop ->
  ?license_type:string prop ->
  ?max_tasks_per_node:float prop ->
  ?metadata:(string * string prop) list ->
  ?os_disk_placement:string prop ->
  ?stop_pending_resize_operation:bool prop ->
  ?target_node_communication_mode:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  node_agent_sku_id:string prop ->
  resource_group_name:string prop ->
  vm_size:string prop ->
  auto_scale:auto_scale list ->
  certificate:certificate list ->
  container_configuration:container_configuration list ->
  data_disks:data_disks list ->
  disk_encryption:disk_encryption list ->
  extensions:extensions list ->
  fixed_scale:fixed_scale list ->
  identity:identity list ->
  mount:mount list ->
  network_configuration:network_configuration list ->
  node_placement:node_placement list ->
  start_task:start_task list ->
  storage_image_reference:storage_image_reference list ->
  task_scheduling_policy:task_scheduling_policy list ->
  user_accounts:user_accounts list ->
  windows:windows list ->
  string ->
  t
