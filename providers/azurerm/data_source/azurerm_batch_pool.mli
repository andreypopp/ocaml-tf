(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_scale = {
  evaluation_interval : string prop;  (** evaluation_interval *)
  formula : string prop;  (** formula *)
}

type certificate = {
  id : string prop;  (** id *)
  store_location : string prop;  (** store_location *)
  store_name : string prop;  (** store_name *)
  visibility : string prop list;  (** visibility *)
}

type container_configuration__container_registries = {
  password : string prop;  (** password *)
  registry_server : string prop;  (** registry_server *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
  user_name : string prop;  (** user_name *)
}

type container_configuration = {
  container_image_names : string prop list;
      (** container_image_names *)
  container_registries :
    container_configuration__container_registries list;
      (** container_registries *)
  type_ : string prop; [@key "type"]  (** type *)
}

type data_disks = {
  caching : string prop;  (** caching *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  lun : float prop;  (** lun *)
  storage_account_type : string prop;  (** storage_account_type *)
}

type disk_encryption = {
  disk_encryption_target : string prop;  (** disk_encryption_target *)
}

type extensions = {
  auto_upgrade_minor_version : bool prop;
      (** auto_upgrade_minor_version *)
  name : string prop;  (** name *)
  protected_settings : string prop;  (** protected_settings *)
  provision_after_extensions : string prop list;
      (** provision_after_extensions *)
  publisher : string prop;  (** publisher *)
  settings_json : string prop;  (** settings_json *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
}

type fixed_scale = {
  resize_timeout : string prop;  (** resize_timeout *)
  target_dedicated_nodes : float prop;  (** target_dedicated_nodes *)
  target_low_priority_nodes : float prop;
      (** target_low_priority_nodes *)
}

type mount__nfs_mount = {
  mount_options : string prop;  (** mount_options *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  source : string prop;  (** source *)
}

type mount__cifs_mount = {
  mount_options : string prop;  (** mount_options *)
  password : string prop;  (** password *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  source : string prop;  (** source *)
  user_name : string prop;  (** user_name *)
}

type mount__azure_file_share = {
  account_key : string prop;  (** account_key *)
  account_name : string prop;  (** account_name *)
  azure_file_url : string prop;  (** azure_file_url *)
  mount_options : string prop;  (** mount_options *)
  relative_mount_path : string prop;  (** relative_mount_path *)
}

type mount__azure_blob_file_system = {
  account_key : string prop;  (** account_key *)
  account_name : string prop;  (** account_name *)
  blobfuse_options : string prop;  (** blobfuse_options *)
  container_name : string prop;  (** container_name *)
  identity_id : string prop;  (** identity_id *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  sas_key : string prop;  (** sas_key *)
}

type mount = {
  azure_blob_file_system : mount__azure_blob_file_system list;
      (** azure_blob_file_system *)
  azure_file_share : mount__azure_file_share list;
      (** azure_file_share *)
  cifs_mount : mount__cifs_mount list;  (** cifs_mount *)
  nfs_mount : mount__nfs_mount list;  (** nfs_mount *)
}

type network_configuration__endpoint_configuration__network_security_group_rules = {
  access : string prop;  (** access *)
  priority : float prop;  (** priority *)
  source_address_prefix : string prop;  (** source_address_prefix *)
  source_port_ranges : string prop list;  (** source_port_ranges *)
}

type network_configuration__endpoint_configuration = {
  backend_port : float prop;  (** backend_port *)
  frontend_port_range : string prop;  (** frontend_port_range *)
  name : string prop;  (** name *)
  network_security_group_rules :
    network_configuration__endpoint_configuration__network_security_group_rules
    list;
      (** network_security_group_rules *)
  protocol : string prop;  (** protocol *)
}

type network_configuration = {
  accelerated_networking_enabled : bool prop;
      (** accelerated_networking_enabled *)
  dynamic_vnet_assignment_scope : string prop;
      (** dynamic_vnet_assignment_scope *)
  endpoint_configuration :
    network_configuration__endpoint_configuration list;
      (** endpoint_configuration *)
  public_address_provisioning_type : string prop;
      (** public_address_provisioning_type *)
  public_ips : string prop list;  (** public_ips *)
  subnet_id : string prop;  (** subnet_id *)
}

type node_placement = { policy : string prop  (** policy *) }

type start_task__user_identity__auto_user = {
  elevation_level : string prop;  (** elevation_level *)
  scope : string prop;  (** scope *)
}

type start_task__user_identity = {
  auto_user : start_task__user_identity__auto_user list;
      (** auto_user *)
  user_name : string prop;  (** user_name *)
}

type start_task__resource_file = {
  auto_storage_container_name : string prop;
      (** auto_storage_container_name *)
  blob_prefix : string prop;  (** blob_prefix *)
  file_mode : string prop;  (** file_mode *)
  file_path : string prop;  (** file_path *)
  http_url : string prop;  (** http_url *)
  storage_container_url : string prop;  (** storage_container_url *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}

type start_task__container__registry = {
  password : string prop;  (** password *)
  registry_server : string prop;  (** registry_server *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
  user_name : string prop;  (** user_name *)
}

type start_task__container = {
  image_name : string prop;  (** image_name *)
  registry : start_task__container__registry list;  (** registry *)
  run_options : string prop;  (** run_options *)
  working_directory : string prop;  (** working_directory *)
}

type start_task = {
  command_line : string prop;  (** command_line *)
  common_environment_properties : (string * string prop) list;
      (** common_environment_properties *)
  container : start_task__container list;  (** container *)
  resource_file : start_task__resource_file list;
      (** resource_file *)
  task_retry_maximum : float prop;  (** task_retry_maximum *)
  user_identity : start_task__user_identity list;
      (** user_identity *)
  wait_for_success : bool prop;  (** wait_for_success *)
}

type storage_image_reference = {
  id : string prop;  (** id *)
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}

type task_scheduling_policy = {
  node_fill_type : string prop;  (** node_fill_type *)
}

type user_accounts__windows_user_configuration = {
  login_mode : string prop;  (** login_mode *)
}

type user_accounts__linux_user_configuration = {
  gid : float prop;  (** gid *)
  ssh_private_key : string prop;  (** ssh_private_key *)
  uid : float prop;  (** uid *)
}

type user_accounts = {
  elevation_level : string prop;  (** elevation_level *)
  linux_user_configuration :
    user_accounts__linux_user_configuration list;
      (** linux_user_configuration *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  windows_user_configuration :
    user_accounts__windows_user_configuration list;
      (** windows_user_configuration *)
}

type windows = {
  enable_automatic_updates : bool prop;
      (** enable_automatic_updates *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_batch_pool

val azurerm_batch_pool :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_batch_pool

val yojson_of_azurerm_batch_pool : azurerm_batch_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  auto_scale : auto_scale list prop;
  certificate : certificate list prop;
  container_configuration : container_configuration list prop;
  data_disks : data_disks list prop;
  disk_encryption : disk_encryption list prop;
  display_name : string prop;
  extensions : extensions list prop;
  fixed_scale : fixed_scale list prop;
  id : string prop;
  inter_node_communication : string prop;
  license_type : string prop;
  max_tasks_per_node : float prop;
  metadata : (string * string) list prop;
  mount : mount list prop;
  name : string prop;
  network_configuration : network_configuration list prop;
  node_agent_sku_id : string prop;
  node_placement : node_placement list prop;
  os_disk_placement : string prop;
  resource_group_name : string prop;
  start_task : start_task list prop;
  storage_image_reference : storage_image_reference list prop;
  task_scheduling_policy : task_scheduling_policy list prop;
  user_accounts : user_accounts list prop;
  vm_size : string prop;
  windows : windows list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
