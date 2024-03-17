(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_batch_pool__auto_scale = {
  evaluation_interval : string prop option; [@option]
      (** evaluation_interval *)
  formula : string prop;  (** formula *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__auto_scale *)

type azurerm_batch_pool__certificate = {
  id : string prop;  (** id *)
  store_location : string prop;  (** store_location *)
  store_name : string prop option; [@option]  (** store_name *)
  visibility : string prop list option; [@option]  (** visibility *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__certificate *)

type azurerm_batch_pool__container_configuration__container_registries = {
  password : string prop;  (** password *)
  registry_server : string prop;  (** registry_server *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]

type azurerm_batch_pool__container_configuration = {
  container_image_names : string prop list option; [@option]
      (** container_image_names *)
  container_registries :
    azurerm_batch_pool__container_configuration__container_registries
    list
    option;
      [@option]
      (** container_registries *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__container_configuration *)

type azurerm_batch_pool__data_disks = {
  caching : string prop option; [@option]  (** caching *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  lun : float prop;  (** lun *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__data_disks *)

type azurerm_batch_pool__disk_encryption = {
  disk_encryption_target : string prop;  (** disk_encryption_target *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__disk_encryption *)

type azurerm_batch_pool__extensions = {
  auto_upgrade_minor_version : bool prop option; [@option]
      (** auto_upgrade_minor_version *)
  automatic_upgrade_enabled : bool prop option; [@option]
      (** automatic_upgrade_enabled *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  provision_after_extensions : string prop list option; [@option]
      (** provision_after_extensions *)
  publisher : string prop;  (** publisher *)
  settings_json : string prop option; [@option]  (** settings_json *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop option; [@option]
      (** type_handler_version *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__extensions *)

type azurerm_batch_pool__fixed_scale = {
  node_deallocation_method : string prop option; [@option]
      (** node_deallocation_method *)
  resize_timeout : string prop option; [@option]
      (** resize_timeout *)
  target_dedicated_nodes : float prop option; [@option]
      (** target_dedicated_nodes *)
  target_low_priority_nodes : float prop option; [@option]
      (** target_low_priority_nodes *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__fixed_scale *)

type azurerm_batch_pool__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__identity *)

type azurerm_batch_pool__mount__azure_blob_file_system = {
  account_key : string prop option; [@option]  (** account_key *)
  account_name : string prop;  (** account_name *)
  blobfuse_options : string prop option; [@option]
      (** blobfuse_options *)
  container_name : string prop;  (** container_name *)
  identity_id : string prop option; [@option]  (** identity_id *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  sas_key : string prop option; [@option]  (** sas_key *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__mount__azure_blob_file_system *)

type azurerm_batch_pool__mount__azure_file_share = {
  account_key : string prop;  (** account_key *)
  account_name : string prop;  (** account_name *)
  azure_file_url : string prop;  (** azure_file_url *)
  mount_options : string prop option; [@option]  (** mount_options *)
  relative_mount_path : string prop;  (** relative_mount_path *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__mount__azure_file_share *)

type azurerm_batch_pool__mount__cifs_mount = {
  mount_options : string prop option; [@option]  (** mount_options *)
  password : string prop;  (** password *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  source : string prop;  (** source *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__mount__cifs_mount *)

type azurerm_batch_pool__mount__nfs_mount = {
  mount_options : string prop option; [@option]  (** mount_options *)
  relative_mount_path : string prop;  (** relative_mount_path *)
  source : string prop;  (** source *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__mount__nfs_mount *)

type azurerm_batch_pool__mount = {
  azure_blob_file_system :
    azurerm_batch_pool__mount__azure_blob_file_system list;
  azure_file_share :
    azurerm_batch_pool__mount__azure_file_share list;
  cifs_mount : azurerm_batch_pool__mount__cifs_mount list;
  nfs_mount : azurerm_batch_pool__mount__nfs_mount list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__mount *)

type azurerm_batch_pool__network_configuration__endpoint_configuration__network_security_group_rules = {
  access : string prop;  (** access *)
  priority : float prop;  (** priority *)
  source_address_prefix : string prop;  (** source_address_prefix *)
  source_port_ranges : string prop list option; [@option]
      (** source_port_ranges *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__network_configuration__endpoint_configuration__network_security_group_rules *)

type azurerm_batch_pool__network_configuration__endpoint_configuration = {
  backend_port : float prop;  (** backend_port *)
  frontend_port_range : string prop;  (** frontend_port_range *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  network_security_group_rules :
    azurerm_batch_pool__network_configuration__endpoint_configuration__network_security_group_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__network_configuration__endpoint_configuration *)

type azurerm_batch_pool__network_configuration = {
  accelerated_networking_enabled : bool prop option; [@option]
      (** accelerated_networking_enabled *)
  dynamic_vnet_assignment_scope : string prop option; [@option]
      (** dynamic_vnet_assignment_scope *)
  public_address_provisioning_type : string prop option; [@option]
      (** public_address_provisioning_type *)
  public_ips : string prop list option; [@option]  (** public_ips *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  endpoint_configuration :
    azurerm_batch_pool__network_configuration__endpoint_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__network_configuration *)

type azurerm_batch_pool__node_placement = {
  policy : string prop option; [@option]  (** policy *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__node_placement *)

type azurerm_batch_pool__start_task__container__registry = {
  password : string prop option; [@option]  (** password *)
  registry_server : string prop;  (** registry_server *)
  user_assigned_identity_id : string prop option; [@option]
      (** The User Assigned Identity to use for Container Registry access. *)
  user_name : string prop option; [@option]  (** user_name *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task__container__registry *)

type azurerm_batch_pool__start_task__container = {
  image_name : string prop;  (** image_name *)
  run_options : string prop option; [@option]  (** run_options *)
  working_directory : string prop option; [@option]
      (** working_directory *)
  registry : azurerm_batch_pool__start_task__container__registry list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task__container *)

type azurerm_batch_pool__start_task__resource_file = {
  auto_storage_container_name : string prop option; [@option]
      (** auto_storage_container_name *)
  blob_prefix : string prop option; [@option]  (** blob_prefix *)
  file_mode : string prop option; [@option]  (** file_mode *)
  file_path : string prop option; [@option]  (** file_path *)
  http_url : string prop option; [@option]  (** http_url *)
  storage_container_url : string prop option; [@option]
      (** storage_container_url *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task__resource_file *)

type azurerm_batch_pool__start_task__user_identity__auto_user = {
  elevation_level : string prop option; [@option]
      (** elevation_level *)
  scope : string prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task__user_identity__auto_user *)

type azurerm_batch_pool__start_task__user_identity = {
  user_name : string prop option; [@option]  (** user_name *)
  auto_user :
    azurerm_batch_pool__start_task__user_identity__auto_user list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task__user_identity *)

type azurerm_batch_pool__start_task = {
  command_line : string prop;  (** command_line *)
  common_environment_properties : (string * string prop) list option;
      [@option]
      (** common_environment_properties *)
  task_retry_maximum : float prop option; [@option]
      (** task_retry_maximum *)
  wait_for_success : bool prop option; [@option]
      (** wait_for_success *)
  container : azurerm_batch_pool__start_task__container list;
  resource_file : azurerm_batch_pool__start_task__resource_file list;
  user_identity : azurerm_batch_pool__start_task__user_identity list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__start_task *)

type azurerm_batch_pool__storage_image_reference = {
  id : string prop option; [@option]  (** id *)
  offer : string prop option; [@option]  (** offer *)
  publisher : string prop option; [@option]  (** publisher *)
  sku : string prop option; [@option]  (** sku *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__storage_image_reference *)

type azurerm_batch_pool__task_scheduling_policy = {
  node_fill_type : string prop option; [@option]
      (** node_fill_type *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__task_scheduling_policy *)

type azurerm_batch_pool__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__timeouts *)

type azurerm_batch_pool__user_accounts__linux_user_configuration = {
  gid : float prop option; [@option]  (** gid *)
  ssh_private_key : string prop option; [@option]
      (** ssh_private_key *)
  uid : float prop option; [@option]  (** uid *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__user_accounts__linux_user_configuration *)

type azurerm_batch_pool__user_accounts__windows_user_configuration = {
  login_mode : string prop;  (** login_mode *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__user_accounts__windows_user_configuration *)

type azurerm_batch_pool__user_accounts = {
  elevation_level : string prop;  (** elevation_level *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  linux_user_configuration :
    azurerm_batch_pool__user_accounts__linux_user_configuration list;
  windows_user_configuration :
    azurerm_batch_pool__user_accounts__windows_user_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool__user_accounts *)

type azurerm_batch_pool__windows = {
  enable_automatic_updates : bool prop option; [@option]
      (** enable_automatic_updates *)
}
[@@deriving yojson_of]
(** azurerm_batch_pool__windows *)

type azurerm_batch_pool = {
  account_name : string prop;  (** account_name *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  inter_node_communication : string prop option; [@option]
      (** inter_node_communication *)
  license_type : string prop option; [@option]  (** license_type *)
  max_tasks_per_node : float prop option; [@option]
      (** max_tasks_per_node *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  node_agent_sku_id : string prop;  (** node_agent_sku_id *)
  os_disk_placement : string prop option; [@option]
      (** os_disk_placement *)
  resource_group_name : string prop;  (** resource_group_name *)
  stop_pending_resize_operation : bool prop option; [@option]
      (** stop_pending_resize_operation *)
  target_node_communication_mode : string prop option; [@option]
      (** target_node_communication_mode *)
  vm_size : string prop;  (** vm_size *)
  auto_scale : azurerm_batch_pool__auto_scale list;
  certificate : azurerm_batch_pool__certificate list;
  container_configuration :
    azurerm_batch_pool__container_configuration list;
  data_disks : azurerm_batch_pool__data_disks list;
  disk_encryption : azurerm_batch_pool__disk_encryption list;
  extensions : azurerm_batch_pool__extensions list;
  fixed_scale : azurerm_batch_pool__fixed_scale list;
  identity : azurerm_batch_pool__identity list;
  mount : azurerm_batch_pool__mount list;
  network_configuration :
    azurerm_batch_pool__network_configuration list;
  node_placement : azurerm_batch_pool__node_placement list;
  start_task : azurerm_batch_pool__start_task list;
  storage_image_reference :
    azurerm_batch_pool__storage_image_reference list;
  task_scheduling_policy :
    azurerm_batch_pool__task_scheduling_policy list;
  timeouts : azurerm_batch_pool__timeouts option;
  user_accounts : azurerm_batch_pool__user_accounts list;
  windows : azurerm_batch_pool__windows list;
}
[@@deriving yojson_of]
(** azurerm_batch_pool *)

type t = {
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

let azurerm_batch_pool ?display_name ?id ?inter_node_communication
    ?license_type ?max_tasks_per_node ?metadata ?os_disk_placement
    ?stop_pending_resize_operation ?target_node_communication_mode
    ?timeouts ~account_name ~name ~node_agent_sku_id
    ~resource_group_name ~vm_size ~auto_scale ~certificate
    ~container_configuration ~data_disks ~disk_encryption ~extensions
    ~fixed_scale ~identity ~mount ~network_configuration
    ~node_placement ~start_task ~storage_image_reference
    ~task_scheduling_policy ~user_accounts ~windows __resource_id =
  let __resource_type = "azurerm_batch_pool" in
  let __resource =
    ({
       account_name;
       display_name;
       id;
       inter_node_communication;
       license_type;
       max_tasks_per_node;
       metadata;
       name;
       node_agent_sku_id;
       os_disk_placement;
       resource_group_name;
       stop_pending_resize_operation;
       target_node_communication_mode;
       vm_size;
       auto_scale;
       certificate;
       container_configuration;
       data_disks;
       disk_encryption;
       extensions;
       fixed_scale;
       identity;
       mount;
       network_configuration;
       node_placement;
       start_task;
       storage_image_reference;
       task_scheduling_policy;
       timeouts;
       user_accounts;
       windows;
     }
      : azurerm_batch_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_pool __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       inter_node_communication =
         Prop.computed __resource_type __resource_id
           "inter_node_communication";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       max_tasks_per_node =
         Prop.computed __resource_type __resource_id
           "max_tasks_per_node";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       node_agent_sku_id =
         Prop.computed __resource_type __resource_id
           "node_agent_sku_id";
       os_disk_placement =
         Prop.computed __resource_type __resource_id
           "os_disk_placement";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       stop_pending_resize_operation =
         Prop.computed __resource_type __resource_id
           "stop_pending_resize_operation";
       target_node_communication_mode =
         Prop.computed __resource_type __resource_id
           "target_node_communication_mode";
       vm_size =
         Prop.computed __resource_type __resource_id "vm_size";
     }
      : t)
  in
  __resource_attributes
