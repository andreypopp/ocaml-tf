(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type auto_scale = {
  evaluation_interval : string prop;
  formula : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scale) -> ()

let yojson_of_auto_scale =
  (function
   | {
       evaluation_interval = v_evaluation_interval;
       formula = v_formula;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_formula in
         ("formula", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_evaluation_interval
         in
         ("evaluation_interval", arg) :: bnds
       in
       `Assoc bnds
    : auto_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scale

[@@@deriving.end]

type certificate = {
  id : string prop;
  store_location : string prop;
  store_name : string prop;
  visibility : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate) -> ()

let yojson_of_certificate =
  (function
   | {
       id = v_id;
       store_location = v_store_location;
       store_name = v_store_name;
       visibility = v_visibility;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_visibility
         in
         ("visibility", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_store_name in
         ("store_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_store_location
         in
         ("store_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate

[@@@deriving.end]

type container_configuration__container_registries = {
  password : string prop;
  registry_server : string prop;
  user_assigned_identity_id : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_configuration__container_registries) -> ()

let yojson_of_container_configuration__container_registries =
  (function
   | {
       password = v_password;
       registry_server = v_registry_server;
       user_assigned_identity_id = v_user_assigned_identity_id;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_server
         in
         ("registry_server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : container_configuration__container_registries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_configuration__container_registries

[@@@deriving.end]

type container_configuration = {
  container_image_names : string prop list;
  container_registries :
    container_configuration__container_registries list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : container_configuration) -> ()

let yojson_of_container_configuration =
  (function
   | {
       container_image_names = v_container_image_names;
       container_registries = v_container_registries;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_container_configuration__container_registries
             v_container_registries
         in
         ("container_registries", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_container_image_names
         in
         ("container_image_names", arg) :: bnds
       in
       `Assoc bnds
    : container_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_configuration

[@@@deriving.end]

type data_disks = {
  caching : string prop;
  disk_size_gb : float prop;
  lun : float prop;
  storage_account_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_disks) -> ()

let yojson_of_data_disks =
  (function
   | {
       caching = v_caching;
       disk_size_gb = v_disk_size_gb;
       lun = v_lun;
       storage_account_type = v_storage_account_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_type
         in
         ("storage_account_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk_size_gb in
         ("disk_size_gb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       `Assoc bnds
    : data_disks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_disks

[@@@deriving.end]

type disk_encryption = { disk_encryption_target : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : disk_encryption) -> ()

let yojson_of_disk_encryption =
  (function
   | { disk_encryption_target = v_disk_encryption_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_disk_encryption_target
         in
         ("disk_encryption_target", arg) :: bnds
       in
       `Assoc bnds
    : disk_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_disk_encryption

[@@@deriving.end]

type extensions = {
  auto_upgrade_minor_version : bool prop;
  name : string prop;
  protected_settings : string prop;
  provision_after_extensions : string prop list;
  publisher : string prop;
  settings_json : string prop;
  type_ : string prop; [@key "type"]
  type_handler_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extensions) -> ()

let yojson_of_extensions =
  (function
   | {
       auto_upgrade_minor_version = v_auto_upgrade_minor_version;
       name = v_name;
       protected_settings = v_protected_settings;
       provision_after_extensions = v_provision_after_extensions;
       publisher = v_publisher;
       settings_json = v_settings_json;
       type_ = v_type_;
       type_handler_version = v_type_handler_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_type_handler_version
         in
         ("type_handler_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_settings_json in
         ("settings_json", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_provision_after_extensions
         in
         ("provision_after_extensions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_protected_settings
         in
         ("protected_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_auto_upgrade_minor_version
         in
         ("auto_upgrade_minor_version", arg) :: bnds
       in
       `Assoc bnds
    : extensions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extensions

[@@@deriving.end]

type fixed_scale = {
  resize_timeout : string prop;
  target_dedicated_nodes : float prop;
  target_low_priority_nodes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fixed_scale) -> ()

let yojson_of_fixed_scale =
  (function
   | {
       resize_timeout = v_resize_timeout;
       target_dedicated_nodes = v_target_dedicated_nodes;
       target_low_priority_nodes = v_target_low_priority_nodes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_low_priority_nodes
         in
         ("target_low_priority_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_dedicated_nodes
         in
         ("target_dedicated_nodes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resize_timeout
         in
         ("resize_timeout", arg) :: bnds
       in
       `Assoc bnds
    : fixed_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fixed_scale

[@@@deriving.end]

type mount__nfs_mount = {
  mount_options : string prop;
  relative_mount_path : string prop;
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount__nfs_mount) -> ()

let yojson_of_mount__nfs_mount =
  (function
   | {
       mount_options = v_mount_options;
       relative_mount_path = v_relative_mount_path;
       source = v_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relative_mount_path
         in
         ("relative_mount_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_options in
         ("mount_options", arg) :: bnds
       in
       `Assoc bnds
    : mount__nfs_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__nfs_mount

[@@@deriving.end]

type mount__cifs_mount = {
  mount_options : string prop;
  password : string prop;
  relative_mount_path : string prop;
  source : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount__cifs_mount) -> ()

let yojson_of_mount__cifs_mount =
  (function
   | {
       mount_options = v_mount_options;
       password = v_password;
       relative_mount_path = v_relative_mount_path;
       source = v_source;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relative_mount_path
         in
         ("relative_mount_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_options in
         ("mount_options", arg) :: bnds
       in
       `Assoc bnds
    : mount__cifs_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__cifs_mount

[@@@deriving.end]

type mount__azure_file_share = {
  account_key : string prop;
  account_name : string prop;
  azure_file_url : string prop;
  mount_options : string prop;
  relative_mount_path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount__azure_file_share) -> ()

let yojson_of_mount__azure_file_share =
  (function
   | {
       account_key = v_account_key;
       account_name = v_account_name;
       azure_file_url = v_azure_file_url;
       mount_options = v_mount_options;
       relative_mount_path = v_relative_mount_path;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relative_mount_path
         in
         ("relative_mount_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mount_options in
         ("mount_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_azure_file_url
         in
         ("azure_file_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_key in
         ("account_key", arg) :: bnds
       in
       `Assoc bnds
    : mount__azure_file_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__azure_file_share

[@@@deriving.end]

type mount__azure_blob_file_system = {
  account_key : string prop;
  account_name : string prop;
  blobfuse_options : string prop;
  container_name : string prop;
  identity_id : string prop;
  relative_mount_path : string prop;
  sas_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount__azure_blob_file_system) -> ()

let yojson_of_mount__azure_blob_file_system =
  (function
   | {
       account_key = v_account_key;
       account_name = v_account_name;
       blobfuse_options = v_blobfuse_options;
       container_name = v_container_name;
       identity_id = v_identity_id;
       relative_mount_path = v_relative_mount_path;
       sas_key = v_sas_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sas_key in
         ("sas_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relative_mount_path
         in
         ("relative_mount_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity_id in
         ("identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_blobfuse_options
         in
         ("blobfuse_options", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_key in
         ("account_key", arg) :: bnds
       in
       `Assoc bnds
    : mount__azure_blob_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__azure_blob_file_system

[@@@deriving.end]

type mount = {
  azure_blob_file_system : mount__azure_blob_file_system list;
  azure_file_share : mount__azure_file_share list;
  cifs_mount : mount__cifs_mount list;
  nfs_mount : mount__nfs_mount list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mount) -> ()

let yojson_of_mount =
  (function
   | {
       azure_blob_file_system = v_azure_blob_file_system;
       azure_file_share = v_azure_file_share;
       cifs_mount = v_cifs_mount;
       nfs_mount = v_nfs_mount;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mount__nfs_mount v_nfs_mount
         in
         ("nfs_mount", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mount__cifs_mount v_cifs_mount
         in
         ("cifs_mount", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mount__azure_file_share
             v_azure_file_share
         in
         ("azure_file_share", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_mount__azure_blob_file_system
             v_azure_blob_file_system
         in
         ("azure_blob_file_system", arg) :: bnds
       in
       `Assoc bnds
    : mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount

[@@@deriving.end]

type network_configuration__endpoint_configuration__network_security_group_rules = {
  access : string prop;
  priority : float prop;
  source_address_prefix : string prop;
  source_port_ranges : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_configuration__endpoint_configuration__network_security_group_rules) ->
  ()

let yojson_of_network_configuration__endpoint_configuration__network_security_group_rules
    =
  (function
   | {
       access = v_access;
       priority = v_priority;
       source_address_prefix = v_source_address_prefix;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_source_port_ranges
         in
         ("source_port_ranges", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_address_prefix
         in
         ("source_address_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access in
         ("access", arg) :: bnds
       in
       `Assoc bnds
    : network_configuration__endpoint_configuration__network_security_group_rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_configuration__endpoint_configuration__network_security_group_rules

[@@@deriving.end]

type network_configuration__endpoint_configuration = {
  backend_port : float prop;
  frontend_port_range : string prop;
  name : string prop;
  network_security_group_rules :
    network_configuration__endpoint_configuration__network_security_group_rules
    list;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration__endpoint_configuration) -> ()

let yojson_of_network_configuration__endpoint_configuration =
  (function
   | {
       backend_port = v_backend_port;
       frontend_port_range = v_frontend_port_range;
       name = v_name;
       network_security_group_rules = v_network_security_group_rules;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_configuration__endpoint_configuration__network_security_group_rules
             v_network_security_group_rules
         in
         ("network_security_group_rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_frontend_port_range
         in
         ("frontend_port_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_backend_port in
         ("backend_port", arg) :: bnds
       in
       `Assoc bnds
    : network_configuration__endpoint_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration__endpoint_configuration

[@@@deriving.end]

type network_configuration = {
  accelerated_networking_enabled : bool prop;
  dynamic_vnet_assignment_scope : string prop;
  endpoint_configuration :
    network_configuration__endpoint_configuration list;
  public_address_provisioning_type : string prop;
  public_ips : string prop list;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       accelerated_networking_enabled =
         v_accelerated_networking_enabled;
       dynamic_vnet_assignment_scope =
         v_dynamic_vnet_assignment_scope;
       endpoint_configuration = v_endpoint_configuration;
       public_address_provisioning_type =
         v_public_address_provisioning_type;
       public_ips = v_public_ips;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_public_ips
         in
         ("public_ips", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_public_address_provisioning_type
         in
         ("public_address_provisioning_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_configuration__endpoint_configuration
             v_endpoint_configuration
         in
         ("endpoint_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_dynamic_vnet_assignment_scope
         in
         ("dynamic_vnet_assignment_scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_accelerated_networking_enabled
         in
         ("accelerated_networking_enabled", arg) :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type node_placement = { policy : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_placement) -> ()

let yojson_of_node_placement =
  (function
   | { policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       `Assoc bnds
    : node_placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_placement

[@@@deriving.end]

type start_task__user_identity__auto_user = {
  elevation_level : string prop;
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__user_identity__auto_user) -> ()

let yojson_of_start_task__user_identity__auto_user =
  (function
   | { elevation_level = v_elevation_level; scope = v_scope } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_elevation_level
         in
         ("elevation_level", arg) :: bnds
       in
       `Assoc bnds
    : start_task__user_identity__auto_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__user_identity__auto_user

[@@@deriving.end]

type start_task__user_identity = {
  auto_user : start_task__user_identity__auto_user list;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__user_identity) -> ()

let yojson_of_start_task__user_identity =
  (function
   | { auto_user = v_auto_user; user_name = v_user_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_start_task__user_identity__auto_user
             v_auto_user
         in
         ("auto_user", arg) :: bnds
       in
       `Assoc bnds
    : start_task__user_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__user_identity

[@@@deriving.end]

type start_task__resource_file = {
  auto_storage_container_name : string prop;
  blob_prefix : string prop;
  file_mode : string prop;
  file_path : string prop;
  http_url : string prop;
  storage_container_url : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__resource_file) -> ()

let yojson_of_start_task__resource_file =
  (function
   | {
       auto_storage_container_name = v_auto_storage_container_name;
       blob_prefix = v_blob_prefix;
       file_mode = v_file_mode;
       file_path = v_file_path;
       http_url = v_http_url;
       storage_container_url = v_storage_container_url;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_container_url
         in
         ("storage_container_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_url in
         ("http_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file_path in
         ("file_path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_file_mode in
         ("file_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blob_prefix in
         ("blob_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_auto_storage_container_name
         in
         ("auto_storage_container_name", arg) :: bnds
       in
       `Assoc bnds
    : start_task__resource_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__resource_file

[@@@deriving.end]

type start_task__container__registry = {
  password : string prop;
  registry_server : string prop;
  user_assigned_identity_id : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__container__registry) -> ()

let yojson_of_start_task__container__registry =
  (function
   | {
       password = v_password;
       registry_server = v_registry_server;
       user_assigned_identity_id = v_user_assigned_identity_id;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_server
         in
         ("registry_server", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       `Assoc bnds
    : start_task__container__registry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__container__registry

[@@@deriving.end]

type start_task__container = {
  image_name : string prop;
  registry : start_task__container__registry list;
  run_options : string prop;
  working_directory : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__container) -> ()

let yojson_of_start_task__container =
  (function
   | {
       image_name = v_image_name;
       registry = v_registry;
       run_options = v_run_options;
       working_directory = v_working_directory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_working_directory
         in
         ("working_directory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_run_options in
         ("run_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task__container__registry
             v_registry
         in
         ("registry", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       `Assoc bnds
    : start_task__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__container

[@@@deriving.end]

type start_task = {
  command_line : string prop;
  common_environment_properties : (string * string prop) list;
  container : start_task__container list;
  resource_file : start_task__resource_file list;
  task_retry_maximum : float prop;
  user_identity : start_task__user_identity list;
  wait_for_success : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task) -> ()

let yojson_of_start_task =
  (function
   | {
       command_line = v_command_line;
       common_environment_properties =
         v_common_environment_properties;
       container = v_container;
       resource_file = v_resource_file;
       task_retry_maximum = v_task_retry_maximum;
       user_identity = v_user_identity;
       wait_for_success = v_wait_for_success;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_wait_for_success
         in
         ("wait_for_success", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task__user_identity
             v_user_identity
         in
         ("user_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_task_retry_maximum
         in
         ("task_retry_maximum", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task__resource_file
             v_resource_file
         in
         ("resource_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task__container v_container
         in
         ("container", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_common_environment_properties
         in
         ("common_environment_properties", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_command_line in
         ("command_line", arg) :: bnds
       in
       `Assoc bnds
    : start_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task

[@@@deriving.end]

type storage_image_reference = {
  id : string prop;
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_image_reference) -> ()

let yojson_of_storage_image_reference =
  (function
   | {
       id = v_id;
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : storage_image_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_image_reference

[@@@deriving.end]

type task_scheduling_policy = { node_fill_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : task_scheduling_policy) -> ()

let yojson_of_task_scheduling_policy =
  (function
   | { node_fill_type = v_node_fill_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_fill_type
         in
         ("node_fill_type", arg) :: bnds
       in
       `Assoc bnds
    : task_scheduling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_scheduling_policy

[@@@deriving.end]

type user_accounts__windows_user_configuration = {
  login_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_accounts__windows_user_configuration) -> ()

let yojson_of_user_accounts__windows_user_configuration =
  (function
   | { login_mode = v_login_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login_mode in
         ("login_mode", arg) :: bnds
       in
       `Assoc bnds
    : user_accounts__windows_user_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_accounts__windows_user_configuration

[@@@deriving.end]

type user_accounts__linux_user_configuration = {
  gid : float prop;
  ssh_private_key : string prop;
  uid : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_accounts__linux_user_configuration) -> ()

let yojson_of_user_accounts__linux_user_configuration =
  (function
   | {
       gid = v_gid;
       ssh_private_key = v_ssh_private_key;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_private_key
         in
         ("ssh_private_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_gid in
         ("gid", arg) :: bnds
       in
       `Assoc bnds
    : user_accounts__linux_user_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_accounts__linux_user_configuration

[@@@deriving.end]

type user_accounts = {
  elevation_level : string prop;
  linux_user_configuration :
    user_accounts__linux_user_configuration list;
  name : string prop;
  password : string prop;
  windows_user_configuration :
    user_accounts__windows_user_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_accounts) -> ()

let yojson_of_user_accounts =
  (function
   | {
       elevation_level = v_elevation_level;
       linux_user_configuration = v_linux_user_configuration;
       name = v_name;
       password = v_password;
       windows_user_configuration = v_windows_user_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_user_accounts__windows_user_configuration
             v_windows_user_configuration
         in
         ("windows_user_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_user_accounts__linux_user_configuration
             v_linux_user_configuration
         in
         ("linux_user_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_elevation_level
         in
         ("elevation_level", arg) :: bnds
       in
       `Assoc bnds
    : user_accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_accounts

[@@@deriving.end]

type windows = { enable_automatic_updates : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : windows) -> ()

let yojson_of_windows =
  (function
   | { enable_automatic_updates = v_enable_automatic_updates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_automatic_updates
         in
         ("enable_automatic_updates", arg) :: bnds
       in
       `Assoc bnds
    : windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows

[@@@deriving.end]

type azurerm_batch_pool = {
  account_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_pool) -> ()

let yojson_of_azurerm_batch_pool =
  (function
   | {
       account_name = v_account_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_batch_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_pool

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_batch_pool ?id ?timeouts ~account_name ~name
    ~resource_group_name () : azurerm_batch_pool =
  { account_name; id; name; resource_group_name; timeouts }

type t = {
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

let make ?id ?timeouts ~account_name ~name ~resource_group_name __id
    =
  let __type = "azurerm_batch_pool" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       auto_scale = Prop.computed __type __id "auto_scale";
       certificate = Prop.computed __type __id "certificate";
       container_configuration =
         Prop.computed __type __id "container_configuration";
       data_disks = Prop.computed __type __id "data_disks";
       disk_encryption = Prop.computed __type __id "disk_encryption";
       display_name = Prop.computed __type __id "display_name";
       extensions = Prop.computed __type __id "extensions";
       fixed_scale = Prop.computed __type __id "fixed_scale";
       id = Prop.computed __type __id "id";
       inter_node_communication =
         Prop.computed __type __id "inter_node_communication";
       license_type = Prop.computed __type __id "license_type";
       max_tasks_per_node =
         Prop.computed __type __id "max_tasks_per_node";
       metadata = Prop.computed __type __id "metadata";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       network_configuration =
         Prop.computed __type __id "network_configuration";
       node_agent_sku_id =
         Prop.computed __type __id "node_agent_sku_id";
       node_placement = Prop.computed __type __id "node_placement";
       os_disk_placement =
         Prop.computed __type __id "os_disk_placement";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_task = Prop.computed __type __id "start_task";
       storage_image_reference =
         Prop.computed __type __id "storage_image_reference";
       task_scheduling_policy =
         Prop.computed __type __id "task_scheduling_policy";
       user_accounts = Prop.computed __type __id "user_accounts";
       vm_size = Prop.computed __type __id "vm_size";
       windows = Prop.computed __type __id "windows";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_pool
        (azurerm_batch_pool ?id ?timeouts ~account_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
