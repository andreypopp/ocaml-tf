(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_scale = {
  evaluation_interval : string prop option; [@option]
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
         match v_evaluation_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scale

[@@@deriving.end]

type certificate = {
  id : string prop;
  store_location : string prop;
  store_name : string prop option; [@option]
  visibility : string prop list option; [@option]
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
         match v_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_store_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "store_name", arg in
             bnd :: bnds
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
  container_image_names : string prop list option; [@option]
  container_registries :
    container_configuration__container_registries list option;
      [@option]
  type_ : string prop option; [@option] [@key "type"]
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
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_registries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_container_configuration__container_registries
                 v
             in
             let bnd = "container_registries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_image_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_image_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : container_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_container_configuration

[@@@deriving.end]

type data_disks = {
  caching : string prop option; [@option]
  disk_size_gb : float prop;
  lun : float prop;
  storage_account_type : string prop option; [@option]
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
         match v_storage_account_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_type", arg in
             bnd :: bnds
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
         match v_caching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "caching", arg in
             bnd :: bnds
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
  auto_upgrade_minor_version : bool prop option; [@option]
  automatic_upgrade_enabled : bool prop option; [@option]
  name : string prop;
  protected_settings : string prop option; [@option]
  provision_after_extensions : string prop list option; [@option]
  publisher : string prop;
  settings_json : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_handler_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extensions) -> ()

let yojson_of_extensions =
  (function
   | {
       auto_upgrade_minor_version = v_auto_upgrade_minor_version;
       automatic_upgrade_enabled = v_automatic_upgrade_enabled;
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
         match v_type_handler_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type_handler_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_settings_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings_json", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         match v_provision_after_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "provision_after_extensions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protected_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protected_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_automatic_upgrade_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_upgrade_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_upgrade_minor_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade_minor_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extensions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extensions

[@@@deriving.end]

type fixed_scale = {
  node_deallocation_method : string prop option; [@option]
  resize_timeout : string prop option; [@option]
  target_dedicated_nodes : float prop option; [@option]
  target_low_priority_nodes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fixed_scale) -> ()

let yojson_of_fixed_scale =
  (function
   | {
       node_deallocation_method = v_node_deallocation_method;
       resize_timeout = v_resize_timeout;
       target_dedicated_nodes = v_target_dedicated_nodes;
       target_low_priority_nodes = v_target_low_priority_nodes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_low_priority_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_low_priority_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_dedicated_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_dedicated_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resize_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resize_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_deallocation_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_deallocation_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fixed_scale -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fixed_scale

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
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
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type mount__azure_blob_file_system = {
  account_key : string prop option; [@option]
  account_name : string prop;
  blobfuse_options : string prop option; [@option]
  container_name : string prop;
  identity_id : string prop option; [@option]
  relative_mount_path : string prop;
  sas_key : string prop option; [@option]
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
         match v_sas_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sas_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_relative_mount_path
         in
         ("relative_mount_path", arg) :: bnds
       in
       let bnds =
         match v_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         match v_blobfuse_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blobfuse_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         match v_account_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mount__azure_blob_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__azure_blob_file_system

[@@@deriving.end]

type mount__azure_file_share = {
  account_key : string prop;
  account_name : string prop;
  azure_file_url : string prop;
  mount_options : string prop option; [@option]
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
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_options", arg in
             bnd :: bnds
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

type mount__cifs_mount = {
  mount_options : string prop option; [@option]
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
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mount__cifs_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__cifs_mount

[@@@deriving.end]

type mount__nfs_mount = {
  mount_options : string prop option; [@option]
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
         match v_mount_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mount_options", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mount__nfs_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mount__nfs_mount

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
  source_port_ranges : string prop list option; [@option]
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
         match v_source_port_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_port_ranges", arg in
             bnd :: bnds
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
  protocol : string prop;
  network_security_group_rules :
    network_configuration__endpoint_configuration__network_security_group_rules
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration__endpoint_configuration) -> ()

let yojson_of_network_configuration__endpoint_configuration =
  (function
   | {
       backend_port = v_backend_port;
       frontend_port_range = v_frontend_port_range;
       name = v_name;
       protocol = v_protocol;
       network_security_group_rules = v_network_security_group_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
  accelerated_networking_enabled : bool prop option; [@option]
  dynamic_vnet_assignment_scope : string prop option; [@option]
  public_address_provisioning_type : string prop option; [@option]
  public_ips : string prop list option; [@option]
  subnet_id : string prop option; [@option]
  endpoint_configuration :
    network_configuration__endpoint_configuration list;
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
       public_address_provisioning_type =
         v_public_address_provisioning_type;
       public_ips = v_public_ips;
       subnet_id = v_subnet_id;
       endpoint_configuration = v_endpoint_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_address_provisioning_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_address_provisioning_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dynamic_vnet_assignment_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dynamic_vnet_assignment_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerated_networking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accelerated_networking_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type node_placement = { policy : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : node_placement) -> ()

let yojson_of_node_placement =
  (function
   | { policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_placement

[@@@deriving.end]

type start_task__container__registry = {
  password : string prop option; [@option]
  registry_server : string prop;
  user_assigned_identity_id : string prop option; [@option]
  user_name : string prop option; [@option]
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
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registry_server
         in
         ("registry_server", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : start_task__container__registry ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__container__registry

[@@@deriving.end]

type start_task__container = {
  image_name : string prop;
  run_options : string prop option; [@option]
  working_directory : string prop option; [@option]
  registry : start_task__container__registry list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__container) -> ()

let yojson_of_start_task__container =
  (function
   | {
       image_name = v_image_name;
       run_options = v_run_options;
       working_directory = v_working_directory;
       registry = v_registry;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task__container__registry
             v_registry
         in
         ("registry", arg) :: bnds
       in
       let bnds =
         match v_working_directory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "working_directory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_run_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       `Assoc bnds
    : start_task__container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__container

[@@@deriving.end]

type start_task__resource_file = {
  auto_storage_container_name : string prop option; [@option]
  blob_prefix : string prop option; [@option]
  file_mode : string prop option; [@option]
  file_path : string prop option; [@option]
  http_url : string prop option; [@option]
  storage_container_url : string prop option; [@option]
  user_assigned_identity_id : string prop option; [@option]
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
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_container_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_container_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blob_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "blob_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_storage_container_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_storage_container_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : start_task__resource_file -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__resource_file

[@@@deriving.end]

type start_task__user_identity__auto_user = {
  elevation_level : string prop option; [@option]
  scope : string prop option; [@option]
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
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_elevation_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "elevation_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : start_task__user_identity__auto_user ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__user_identity__auto_user

[@@@deriving.end]

type start_task__user_identity = {
  user_name : string prop option; [@option]
  auto_user : start_task__user_identity__auto_user list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task__user_identity) -> ()

let yojson_of_start_task__user_identity =
  (function
   | { user_name = v_user_name; auto_user = v_auto_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_start_task__user_identity__auto_user
             v_auto_user
         in
         ("auto_user", arg) :: bnds
       in
       let bnds =
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : start_task__user_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_start_task__user_identity

[@@@deriving.end]

type start_task = {
  command_line : string prop;
  common_environment_properties : (string * string prop) list option;
      [@option]
  task_retry_maximum : float prop option; [@option]
  wait_for_success : bool prop option; [@option]
  container : start_task__container list;
  resource_file : start_task__resource_file list;
  user_identity : start_task__user_identity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : start_task) -> ()

let yojson_of_start_task =
  (function
   | {
       command_line = v_command_line;
       common_environment_properties =
         v_common_environment_properties;
       task_retry_maximum = v_task_retry_maximum;
       wait_for_success = v_wait_for_success;
       container = v_container;
       resource_file = v_resource_file;
       user_identity = v_user_identity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_wait_for_success with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_success", arg in
             bnd :: bnds
       in
       let bnds =
         match v_task_retry_maximum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_retry_maximum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_environment_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "common_environment_properties", arg in
             bnd :: bnds
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
  id : string prop option; [@option]
  offer : string prop option; [@option]
  publisher : string prop option; [@option]
  sku : string prop option; [@option]
  version : string prop option; [@option]
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publisher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "publisher", arg in
             bnd :: bnds
       in
       let bnds =
         match v_offer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "offer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_image_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_image_reference

[@@@deriving.end]

type task_scheduling_policy = {
  node_fill_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : task_scheduling_policy) -> ()

let yojson_of_task_scheduling_policy =
  (function
   | { node_fill_type = v_node_fill_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_node_fill_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_fill_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : task_scheduling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_task_scheduling_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type user_accounts__linux_user_configuration = {
  gid : float prop option; [@option]
  ssh_private_key : string prop option; [@option]
  uid : float prop option; [@option]
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
         match v_uid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "uid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssh_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "gid", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : user_accounts__linux_user_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_accounts__linux_user_configuration

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

type user_accounts = {
  elevation_level : string prop;
  name : string prop;
  password : string prop;
  linux_user_configuration :
    user_accounts__linux_user_configuration list;
  windows_user_configuration :
    user_accounts__windows_user_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_accounts) -> ()

let yojson_of_user_accounts =
  (function
   | {
       elevation_level = v_elevation_level;
       name = v_name;
       password = v_password;
       linux_user_configuration = v_linux_user_configuration;
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
         let arg =
           yojson_of_list
             yojson_of_user_accounts__linux_user_configuration
             v_linux_user_configuration
         in
         ("linux_user_configuration", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_elevation_level
         in
         ("elevation_level", arg) :: bnds
       in
       `Assoc bnds
    : user_accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_accounts

[@@@deriving.end]

type windows = {
  enable_automatic_updates : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows) -> ()

let yojson_of_windows =
  (function
   | { enable_automatic_updates = v_enable_automatic_updates } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_automatic_updates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_automatic_updates", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows

[@@@deriving.end]

type azurerm_batch_pool = {
  account_name : string prop;
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  inter_node_communication : string prop option; [@option]
  license_type : string prop option; [@option]
  max_tasks_per_node : float prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  node_agent_sku_id : string prop;
  os_disk_placement : string prop option; [@option]
  resource_group_name : string prop;
  stop_pending_resize_operation : bool prop option; [@option]
  target_node_communication_mode : string prop option; [@option]
  vm_size : string prop;
  auto_scale : auto_scale list;
  certificate : certificate list;
  container_configuration : container_configuration list;
  data_disks : data_disks list;
  disk_encryption : disk_encryption list;
  extensions : extensions list;
  fixed_scale : fixed_scale list;
  identity : identity list;
  mount : mount list;
  network_configuration : network_configuration list;
  node_placement : node_placement list;
  start_task : start_task list;
  storage_image_reference : storage_image_reference list;
  task_scheduling_policy : task_scheduling_policy list;
  timeouts : timeouts option;
  user_accounts : user_accounts list;
  windows : windows list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_pool) -> ()

let yojson_of_azurerm_batch_pool =
  (function
   | {
       account_name = v_account_name;
       display_name = v_display_name;
       id = v_id;
       inter_node_communication = v_inter_node_communication;
       license_type = v_license_type;
       max_tasks_per_node = v_max_tasks_per_node;
       metadata = v_metadata;
       name = v_name;
       node_agent_sku_id = v_node_agent_sku_id;
       os_disk_placement = v_os_disk_placement;
       resource_group_name = v_resource_group_name;
       stop_pending_resize_operation =
         v_stop_pending_resize_operation;
       target_node_communication_mode =
         v_target_node_communication_mode;
       vm_size = v_vm_size;
       auto_scale = v_auto_scale;
       certificate = v_certificate;
       container_configuration = v_container_configuration;
       data_disks = v_data_disks;
       disk_encryption = v_disk_encryption;
       extensions = v_extensions;
       fixed_scale = v_fixed_scale;
       identity = v_identity;
       mount = v_mount;
       network_configuration = v_network_configuration;
       node_placement = v_node_placement;
       start_task = v_start_task;
       storage_image_reference = v_storage_image_reference;
       task_scheduling_policy = v_task_scheduling_policy;
       timeouts = v_timeouts;
       user_accounts = v_user_accounts;
       windows = v_windows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_windows v_windows in
         ("windows", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_user_accounts v_user_accounts
         in
         ("user_accounts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_task_scheduling_policy
             v_task_scheduling_policy
         in
         ("task_scheduling_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_image_reference
             v_storage_image_reference
         in
         ("storage_image_reference", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_start_task v_start_task
         in
         ("start_task", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_placement v_node_placement
         in
         ("node_placement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_configuration
             v_network_configuration
         in
         ("network_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_mount v_mount in
         ("mount", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_fixed_scale v_fixed_scale
         in
         ("fixed_scale", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_extensions v_extensions
         in
         ("extensions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_disk_encryption v_disk_encryption
         in
         ("disk_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_disks v_data_disks
         in
         ("data_disks", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_container_configuration
             v_container_configuration
         in
         ("container_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_certificate v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_scale v_auto_scale
         in
         ("auto_scale", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_target_node_communication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_node_communication_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stop_pending_resize_operation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stop_pending_resize_operation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_os_disk_placement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_placement", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_node_agent_sku_id
         in
         ("node_agent_sku_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_tasks_per_node with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_tasks_per_node", arg in
             bnd :: bnds
       in
       let bnds =
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inter_node_communication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inter_node_communication", arg in
             bnd :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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

let auto_scale ?evaluation_interval ~formula () : auto_scale =
  { evaluation_interval; formula }

let certificate ?store_name ?visibility ~id ~store_location () :
    certificate =
  { id; store_location; store_name; visibility }

let container_configuration ?container_image_names
    ?container_registries ?type_ () : container_configuration =
  { container_image_names; container_registries; type_ }

let data_disks ?caching ?storage_account_type ~disk_size_gb ~lun () :
    data_disks =
  { caching; disk_size_gb; lun; storage_account_type }

let disk_encryption ~disk_encryption_target () : disk_encryption =
  { disk_encryption_target }

let extensions ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?protected_settings ?provision_after_extensions ?settings_json
    ?type_handler_version ~name ~publisher ~type_ () : extensions =
  {
    auto_upgrade_minor_version;
    automatic_upgrade_enabled;
    name;
    protected_settings;
    provision_after_extensions;
    publisher;
    settings_json;
    type_;
    type_handler_version;
  }

let fixed_scale ?node_deallocation_method ?resize_timeout
    ?target_dedicated_nodes ?target_low_priority_nodes () :
    fixed_scale =
  {
    node_deallocation_method;
    resize_timeout;
    target_dedicated_nodes;
    target_low_priority_nodes;
  }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let mount__azure_blob_file_system ?account_key ?blobfuse_options
    ?identity_id ?sas_key ~account_name ~container_name
    ~relative_mount_path () : mount__azure_blob_file_system =
  {
    account_key;
    account_name;
    blobfuse_options;
    container_name;
    identity_id;
    relative_mount_path;
    sas_key;
  }

let mount__azure_file_share ?mount_options ~account_key ~account_name
    ~azure_file_url ~relative_mount_path () : mount__azure_file_share
    =
  {
    account_key;
    account_name;
    azure_file_url;
    mount_options;
    relative_mount_path;
  }

let mount__cifs_mount ?mount_options ~password ~relative_mount_path
    ~source ~user_name () : mount__cifs_mount =
  { mount_options; password; relative_mount_path; source; user_name }

let mount__nfs_mount ?mount_options ~relative_mount_path ~source () :
    mount__nfs_mount =
  { mount_options; relative_mount_path; source }

let mount ~azure_blob_file_system ~azure_file_share ~cifs_mount
    ~nfs_mount () : mount =
  { azure_blob_file_system; azure_file_share; cifs_mount; nfs_mount }

let network_configuration__endpoint_configuration__network_security_group_rules
    ?source_port_ranges ~access ~priority ~source_address_prefix () :
    network_configuration__endpoint_configuration__network_security_group_rules
    =
  { access; priority; source_address_prefix; source_port_ranges }

let network_configuration__endpoint_configuration ~backend_port
    ~frontend_port_range ~name ~protocol
    ~network_security_group_rules () :
    network_configuration__endpoint_configuration =
  {
    backend_port;
    frontend_port_range;
    name;
    protocol;
    network_security_group_rules;
  }

let network_configuration ?accelerated_networking_enabled
    ?dynamic_vnet_assignment_scope ?public_address_provisioning_type
    ?public_ips ?subnet_id ~endpoint_configuration () :
    network_configuration =
  {
    accelerated_networking_enabled;
    dynamic_vnet_assignment_scope;
    public_address_provisioning_type;
    public_ips;
    subnet_id;
    endpoint_configuration;
  }

let node_placement ?policy () : node_placement = { policy }

let start_task__container__registry ?password
    ?user_assigned_identity_id ?user_name ~registry_server () :
    start_task__container__registry =
  { password; registry_server; user_assigned_identity_id; user_name }

let start_task__container ?run_options ?working_directory ~image_name
    ~registry () : start_task__container =
  { image_name; run_options; working_directory; registry }

let start_task__resource_file ?auto_storage_container_name
    ?blob_prefix ?file_mode ?file_path ?http_url
    ?storage_container_url ?user_assigned_identity_id () :
    start_task__resource_file =
  {
    auto_storage_container_name;
    blob_prefix;
    file_mode;
    file_path;
    http_url;
    storage_container_url;
    user_assigned_identity_id;
  }

let start_task__user_identity__auto_user ?elevation_level ?scope () :
    start_task__user_identity__auto_user =
  { elevation_level; scope }

let start_task__user_identity ?user_name ~auto_user () :
    start_task__user_identity =
  { user_name; auto_user }

let start_task ?common_environment_properties ?task_retry_maximum
    ?wait_for_success ~command_line ~container ~resource_file
    ~user_identity () : start_task =
  {
    command_line;
    common_environment_properties;
    task_retry_maximum;
    wait_for_success;
    container;
    resource_file;
    user_identity;
  }

let storage_image_reference ?id ?offer ?publisher ?sku ?version () :
    storage_image_reference =
  { id; offer; publisher; sku; version }

let task_scheduling_policy ?node_fill_type () :
    task_scheduling_policy =
  { node_fill_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user_accounts__linux_user_configuration ?gid ?ssh_private_key
    ?uid () : user_accounts__linux_user_configuration =
  { gid; ssh_private_key; uid }

let user_accounts__windows_user_configuration ~login_mode () :
    user_accounts__windows_user_configuration =
  { login_mode }

let user_accounts ~elevation_level ~name ~password
    ~linux_user_configuration ~windows_user_configuration () :
    user_accounts =
  {
    elevation_level;
    name;
    password;
    linux_user_configuration;
    windows_user_configuration;
  }

let windows ?enable_automatic_updates () : windows =
  { enable_automatic_updates }

let azurerm_batch_pool ?display_name ?id ?inter_node_communication
    ?license_type ?max_tasks_per_node ?metadata ?os_disk_placement
    ?stop_pending_resize_operation ?target_node_communication_mode
    ?timeouts ~account_name ~name ~node_agent_sku_id
    ~resource_group_name ~vm_size ~auto_scale ~certificate
    ~container_configuration ~data_disks ~disk_encryption ~extensions
    ~fixed_scale ~identity ~mount ~network_configuration
    ~node_placement ~start_task ~storage_image_reference
    ~task_scheduling_policy ~user_accounts ~windows () :
    azurerm_batch_pool =
  {
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

let make ?display_name ?id ?inter_node_communication ?license_type
    ?max_tasks_per_node ?metadata ?os_disk_placement
    ?stop_pending_resize_operation ?target_node_communication_mode
    ?timeouts ~account_name ~name ~node_agent_sku_id
    ~resource_group_name ~vm_size ~auto_scale ~certificate
    ~container_configuration ~data_disks ~disk_encryption ~extensions
    ~fixed_scale ~identity ~mount ~network_configuration
    ~node_placement ~start_task ~storage_image_reference
    ~task_scheduling_policy ~user_accounts ~windows __id =
  let __type = "azurerm_batch_pool" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       inter_node_communication =
         Prop.computed __type __id "inter_node_communication";
       license_type = Prop.computed __type __id "license_type";
       max_tasks_per_node =
         Prop.computed __type __id "max_tasks_per_node";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       node_agent_sku_id =
         Prop.computed __type __id "node_agent_sku_id";
       os_disk_placement =
         Prop.computed __type __id "os_disk_placement";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stop_pending_resize_operation =
         Prop.computed __type __id "stop_pending_resize_operation";
       target_node_communication_mode =
         Prop.computed __type __id "target_node_communication_mode";
       vm_size = Prop.computed __type __id "vm_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_pool
        (azurerm_batch_pool ?display_name ?id
           ?inter_node_communication ?license_type
           ?max_tasks_per_node ?metadata ?os_disk_placement
           ?stop_pending_resize_operation
           ?target_node_communication_mode ?timeouts ~account_name
           ~name ~node_agent_sku_id ~resource_group_name ~vm_size
           ~auto_scale ~certificate ~container_configuration
           ~data_disks ~disk_encryption ~extensions ~fixed_scale
           ~identity ~mount ~network_configuration ~node_placement
           ~start_task ~storage_image_reference
           ~task_scheduling_policy ~user_accounts ~windows ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?inter_node_communication
    ?license_type ?max_tasks_per_node ?metadata ?os_disk_placement
    ?stop_pending_resize_operation ?target_node_communication_mode
    ?timeouts ~account_name ~name ~node_agent_sku_id
    ~resource_group_name ~vm_size ~auto_scale ~certificate
    ~container_configuration ~data_disks ~disk_encryption ~extensions
    ~fixed_scale ~identity ~mount ~network_configuration
    ~node_placement ~start_task ~storage_image_reference
    ~task_scheduling_policy ~user_accounts ~windows __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?inter_node_communication ?license_type
      ?max_tasks_per_node ?metadata ?os_disk_placement
      ?stop_pending_resize_operation ?target_node_communication_mode
      ?timeouts ~account_name ~name ~node_agent_sku_id
      ~resource_group_name ~vm_size ~auto_scale ~certificate
      ~container_configuration ~data_disks ~disk_encryption
      ~extensions ~fixed_scale ~identity ~mount
      ~network_configuration ~node_placement ~start_task
      ~storage_image_reference ~task_scheduling_policy ~user_accounts
      ~windows __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
