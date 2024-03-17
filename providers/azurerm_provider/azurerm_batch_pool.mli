(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_pool__auto_scale
type azurerm_batch_pool__certificate

type azurerm_batch_pool__container_configuration__container_registries = {
  password : string;  (** password *)
  registry_server : string;  (** registry_server *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
  user_name : string;  (** user_name *)
}

type azurerm_batch_pool__container_configuration
type azurerm_batch_pool__data_disks
type azurerm_batch_pool__disk_encryption
type azurerm_batch_pool__extensions
type azurerm_batch_pool__fixed_scale
type azurerm_batch_pool__identity
type azurerm_batch_pool__mount__azure_blob_file_system
type azurerm_batch_pool__mount__azure_file_share
type azurerm_batch_pool__mount__cifs_mount
type azurerm_batch_pool__mount__nfs_mount
type azurerm_batch_pool__mount

type azurerm_batch_pool__network_configuration__endpoint_configuration__network_security_group_rules

type azurerm_batch_pool__network_configuration__endpoint_configuration
type azurerm_batch_pool__network_configuration
type azurerm_batch_pool__node_placement
type azurerm_batch_pool__start_task__container__registry
type azurerm_batch_pool__start_task__container
type azurerm_batch_pool__start_task__resource_file
type azurerm_batch_pool__start_task__user_identity__auto_user
type azurerm_batch_pool__start_task__user_identity
type azurerm_batch_pool__start_task
type azurerm_batch_pool__storage_image_reference
type azurerm_batch_pool__task_scheduling_policy
type azurerm_batch_pool__timeouts
type azurerm_batch_pool__user_accounts__linux_user_configuration
type azurerm_batch_pool__user_accounts__windows_user_configuration
type azurerm_batch_pool__user_accounts
type azurerm_batch_pool__windows
type azurerm_batch_pool

val azurerm_batch_pool :
  ?display_name:string ->
  ?id:string ->
  ?inter_node_communication:string ->
  ?license_type:string ->
  ?max_tasks_per_node:float ->
  ?metadata:(string * string) list ->
  ?os_disk_placement:string ->
  ?stop_pending_resize_operation:bool ->
  ?target_node_communication_mode:string ->
  ?timeouts:azurerm_batch_pool__timeouts ->
  account_name:string ->
  name:string ->
  node_agent_sku_id:string ->
  resource_group_name:string ->
  vm_size:string ->
  auto_scale:azurerm_batch_pool__auto_scale list ->
  certificate:azurerm_batch_pool__certificate list ->
  container_configuration:
    azurerm_batch_pool__container_configuration list ->
  data_disks:azurerm_batch_pool__data_disks list ->
  disk_encryption:azurerm_batch_pool__disk_encryption list ->
  extensions:azurerm_batch_pool__extensions list ->
  fixed_scale:azurerm_batch_pool__fixed_scale list ->
  identity:azurerm_batch_pool__identity list ->
  mount:azurerm_batch_pool__mount list ->
  network_configuration:
    azurerm_batch_pool__network_configuration list ->
  node_placement:azurerm_batch_pool__node_placement list ->
  start_task:azurerm_batch_pool__start_task list ->
  storage_image_reference:
    azurerm_batch_pool__storage_image_reference list ->
  task_scheduling_policy:
    azurerm_batch_pool__task_scheduling_policy list ->
  user_accounts:azurerm_batch_pool__user_accounts list ->
  windows:azurerm_batch_pool__windows list ->
  string ->
  unit
