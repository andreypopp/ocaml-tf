(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_capabilities = {
  ultra_ssd_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_capabilities) -> ()

let yojson_of_additional_capabilities =
  (function
   | { ultra_ssd_enabled = v_ultra_ssd_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ultra_ssd_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ultra_ssd_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_capabilities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_capabilities

[@@@deriving.end]

type admin_ssh_key = {
  public_key : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin_ssh_key) -> ()

let yojson_of_admin_ssh_key =
  (function
   | { public_key = v_public_key; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       `Assoc bnds
    : admin_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_ssh_key

[@@@deriving.end]

type automatic_instance_repair = {
  enabled : bool prop;
  grace_period : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_instance_repair) -> ()

let yojson_of_automatic_instance_repair =
  (function
   | { enabled = v_enabled; grace_period = v_grace_period } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_grace_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "grace_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : automatic_instance_repair -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_instance_repair

[@@@deriving.end]

type automatic_os_upgrade_policy = {
  disable_automatic_rollback : bool prop;
  enable_automatic_os_upgrade : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : automatic_os_upgrade_policy) -> ()

let yojson_of_automatic_os_upgrade_policy =
  (function
   | {
       disable_automatic_rollback = v_disable_automatic_rollback;
       enable_automatic_os_upgrade = v_enable_automatic_os_upgrade;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_automatic_os_upgrade
         in
         ("enable_automatic_os_upgrade", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_disable_automatic_rollback
         in
         ("disable_automatic_rollback", arg) :: bnds
       in
       `Assoc bnds
    : automatic_os_upgrade_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_automatic_os_upgrade_policy

[@@@deriving.end]

type boot_diagnostics = {
  storage_account_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_diagnostics) -> ()

let yojson_of_boot_diagnostics =
  (function
   | { storage_account_uri = v_storage_account_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_account_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_diagnostics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_diagnostics

[@@@deriving.end]

type data_disk = {
  caching : string prop;
  create_option : string prop option; [@option]
  disk_encryption_set_id : string prop option; [@option]
  disk_size_gb : float prop;
  lun : float prop;
  name : string prop option; [@option]
  storage_account_type : string prop;
  ultra_ssd_disk_iops_read_write : float prop option; [@option]
  ultra_ssd_disk_mbps_read_write : float prop option; [@option]
  write_accelerator_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_disk) -> ()

let yojson_of_data_disk =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       disk_encryption_set_id = v_disk_encryption_set_id;
       disk_size_gb = v_disk_size_gb;
       lun = v_lun;
       name = v_name;
       storage_account_type = v_storage_account_type;
       ultra_ssd_disk_iops_read_write =
         v_ultra_ssd_disk_iops_read_write;
       ultra_ssd_disk_mbps_read_write =
         v_ultra_ssd_disk_mbps_read_write;
       write_accelerator_enabled = v_write_accelerator_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write_accelerator_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write_accelerator_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ultra_ssd_disk_mbps_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ultra_ssd_disk_mbps_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ultra_ssd_disk_iops_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ultra_ssd_disk_iops_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_type
         in
         ("storage_account_type", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_option", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       `Assoc bnds
    : data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_disk

[@@@deriving.end]

type extension__protected_settings_from_key_vault = {
  secret_url : string prop;
  source_vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension__protected_settings_from_key_vault) -> ()

let yojson_of_extension__protected_settings_from_key_vault =
  (function
   | {
       secret_url = v_secret_url;
       source_vault_id = v_source_vault_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_url in
         ("secret_url", arg) :: bnds
       in
       `Assoc bnds
    : extension__protected_settings_from_key_vault ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension__protected_settings_from_key_vault

[@@@deriving.end]

type extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
  automatic_upgrade_enabled : bool prop option; [@option]
  force_update_tag : string prop option; [@option]
  name : string prop;
  protected_settings : string prop option; [@option]
  provision_after_extensions : string prop list option; [@option]
  publisher : string prop;
  settings : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_handler_version : string prop;
  protected_settings_from_key_vault :
    extension__protected_settings_from_key_vault list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension) -> ()

let yojson_of_extension =
  (function
   | {
       auto_upgrade_minor_version = v_auto_upgrade_minor_version;
       automatic_upgrade_enabled = v_automatic_upgrade_enabled;
       force_update_tag = v_force_update_tag;
       name = v_name;
       protected_settings = v_protected_settings;
       provision_after_extensions = v_provision_after_extensions;
       publisher = v_publisher;
       settings = v_settings;
       type_ = v_type_;
       type_handler_version = v_type_handler_version;
       protected_settings_from_key_vault =
         v_protected_settings_from_key_vault;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_protected_settings_from_key_vault then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_extension__protected_settings_from_key_vault)
               v_protected_settings_from_key_vault
           in
           let bnd = "protected_settings_from_key_vault", arg in
           bnd :: bnds
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
         match v_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings", arg in
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
         match v_force_update_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_update_tag", arg in
             bnd :: bnds
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
    : extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension

[@@@deriving.end]

type gallery_application = {
  configuration_blob_uri : string prop option; [@option]
  order : float prop option; [@option]
  tag : string prop option; [@option]
  version_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gallery_application) -> ()

let yojson_of_gallery_application =
  (function
   | {
       configuration_blob_uri = v_configuration_blob_uri;
       order = v_order;
       tag = v_tag;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version_id in
         ("version_id", arg) :: bnds
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gallery_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gallery_application

[@@@deriving.end]

type gallery_applications = {
  configuration_reference_blob_uri : string prop option; [@option]
  order : float prop option; [@option]
  package_reference_id : string prop;
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gallery_applications) -> ()

let yojson_of_gallery_applications =
  (function
   | {
       configuration_reference_blob_uri =
         v_configuration_reference_blob_uri;
       order = v_order;
       package_reference_id = v_package_reference_id;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_package_reference_id
         in
         ("package_reference_id", arg) :: bnds
       in
       let bnds =
         match v_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_reference_blob_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_reference_blob_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gallery_applications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gallery_applications

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
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
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_interface__ip_configuration__public_ip_address__ip_tag) ->
  ()

let yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag
    =
  (function
   | { tag = v_tag; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag in
         ("tag", arg) :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration__public_ip_address__ip_tag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag

[@@@deriving.end]

type network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string prop option; [@option]
  idle_timeout_in_minutes : float prop option; [@option]
  name : string prop;
  public_ip_prefix_id : string prop option; [@option]
  version : string prop option; [@option]
  ip_tag :
    network_interface__ip_configuration__public_ip_address__ip_tag
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_interface__ip_configuration__public_ip_address) ->
  ()

let yojson_of_network_interface__ip_configuration__public_ip_address
    =
  (function
   | {
       domain_name_label = v_domain_name_label;
       idle_timeout_in_minutes = v_idle_timeout_in_minutes;
       name = v_name;
       public_ip_prefix_id = v_public_ip_prefix_id;
       version = v_version;
       ip_tag = v_ip_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_tag then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__ip_configuration__public_ip_address__ip_tag)
               v_ip_tag
           in
           let bnd = "ip_tag", arg in
           bnd :: bnds
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
         match v_public_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_prefix_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_idle_timeout_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_name_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name_label", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration__public_ip_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_interface__ip_configuration__public_ip_address

[@@@deriving.end]

type network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids :
    string prop list option;
      [@option]
  application_security_group_ids : string prop list option; [@option]
  load_balancer_backend_address_pool_ids : string prop list option;
      [@option]
  load_balancer_inbound_nat_rules_ids : string prop list option;
      [@option]
  name : string prop;
  primary : bool prop option; [@option]
  subnet_id : string prop option; [@option]
  version : string prop option; [@option]
  public_ip_address :
    network_interface__ip_configuration__public_ip_address list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface__ip_configuration) -> ()

let yojson_of_network_interface__ip_configuration =
  (function
   | {
       application_gateway_backend_address_pool_ids =
         v_application_gateway_backend_address_pool_ids;
       application_security_group_ids =
         v_application_security_group_ids;
       load_balancer_backend_address_pool_ids =
         v_load_balancer_backend_address_pool_ids;
       load_balancer_inbound_nat_rules_ids =
         v_load_balancer_inbound_nat_rules_ids;
       name = v_name;
       primary = v_primary;
       subnet_id = v_subnet_id;
       version = v_version;
       public_ip_address = v_public_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_public_ip_address then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__ip_configuration__public_ip_address)
               v_public_ip_address
           in
           let bnd = "public_ip_address", arg in
           bnd :: bnds
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_load_balancer_inbound_nat_rules_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "load_balancer_inbound_nat_rules_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancer_backend_address_pool_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "load_balancer_backend_address_pool_ids", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_application_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "application_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_gateway_backend_address_pool_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "application_gateway_backend_address_pool_ids", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface__ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface__ip_configuration

[@@@deriving.end]

type network_interface = {
  dns_servers : string prop list option; [@option]
  enable_accelerated_networking : bool prop option; [@option]
  enable_ip_forwarding : bool prop option; [@option]
  name : string prop;
  network_security_group_id : string prop option; [@option]
  primary : bool prop option; [@option]
  ip_configuration : network_interface__ip_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       dns_servers = v_dns_servers;
       enable_accelerated_networking =
         v_enable_accelerated_networking;
       enable_ip_forwarding = v_enable_ip_forwarding;
       name = v_name;
       network_security_group_id = v_network_security_group_id;
       primary = v_primary;
       ip_configuration = v_ip_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_interface__ip_configuration)
               v_ip_configuration
           in
           let bnd = "ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "primary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_security_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_security_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_enable_ip_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ip_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_accelerated_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_accelerated_networking", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type os_disk__diff_disk_settings = {
  option_ : string prop; [@key "option"]
  placement : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_disk__diff_disk_settings) -> ()

let yojson_of_os_disk__diff_disk_settings =
  (function
   | { option_ = v_option_; placement = v_placement } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_placement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_option_ in
         ("option", arg) :: bnds
       in
       `Assoc bnds
    : os_disk__diff_disk_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_disk__diff_disk_settings

[@@@deriving.end]

type os_disk = {
  caching : string prop;
  disk_encryption_set_id : string prop option; [@option]
  disk_size_gb : float prop option; [@option]
  secure_vm_disk_encryption_set_id : string prop option; [@option]
  security_encryption_type : string prop option; [@option]
  storage_account_type : string prop;
  write_accelerator_enabled : bool prop option; [@option]
  diff_disk_settings : os_disk__diff_disk_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_disk) -> ()

let yojson_of_os_disk =
  (function
   | {
       caching = v_caching;
       disk_encryption_set_id = v_disk_encryption_set_id;
       disk_size_gb = v_disk_size_gb;
       secure_vm_disk_encryption_set_id =
         v_secure_vm_disk_encryption_set_id;
       security_encryption_type = v_security_encryption_type;
       storage_account_type = v_storage_account_type;
       write_accelerator_enabled = v_write_accelerator_enabled;
       diff_disk_settings = v_diff_disk_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_diff_disk_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_disk__diff_disk_settings)
               v_diff_disk_settings
           in
           let bnd = "diff_disk_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_accelerator_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write_accelerator_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_type
         in
         ("storage_account_type", arg) :: bnds
       in
       let bnds =
         match v_security_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_encryption_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure_vm_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secure_vm_disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_caching in
         ("caching", arg) :: bnds
       in
       `Assoc bnds
    : os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_disk

[@@@deriving.end]

type plan = {
  name : string prop;
  product : string prop;
  publisher : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : plan) -> ()

let yojson_of_plan =
  (function
   | { name = v_name; product = v_product; publisher = v_publisher }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product in
         ("product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plan

[@@@deriving.end]

type rolling_upgrade_policy = {
  cross_zone_upgrades_enabled : bool prop option; [@option]
  max_batch_instance_percent : float prop;
  max_unhealthy_instance_percent : float prop;
  max_unhealthy_upgraded_instance_percent : float prop;
  maximum_surge_instances_enabled : bool prop option; [@option]
  pause_time_between_batches : string prop;
  prioritize_unhealthy_instances_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rolling_upgrade_policy) -> ()

let yojson_of_rolling_upgrade_policy =
  (function
   | {
       cross_zone_upgrades_enabled = v_cross_zone_upgrades_enabled;
       max_batch_instance_percent = v_max_batch_instance_percent;
       max_unhealthy_instance_percent =
         v_max_unhealthy_instance_percent;
       max_unhealthy_upgraded_instance_percent =
         v_max_unhealthy_upgraded_instance_percent;
       maximum_surge_instances_enabled =
         v_maximum_surge_instances_enabled;
       pause_time_between_batches = v_pause_time_between_batches;
       prioritize_unhealthy_instances_enabled =
         v_prioritize_unhealthy_instances_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prioritize_unhealthy_instances_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "prioritize_unhealthy_instances_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_pause_time_between_batches
         in
         ("pause_time_between_batches", arg) :: bnds
       in
       let bnds =
         match v_maximum_surge_instances_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "maximum_surge_instances_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_unhealthy_upgraded_instance_percent
         in
         ("max_unhealthy_upgraded_instance_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_unhealthy_instance_percent
         in
         ("max_unhealthy_instance_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_batch_instance_percent
         in
         ("max_batch_instance_percent", arg) :: bnds
       in
       let bnds =
         match v_cross_zone_upgrades_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cross_zone_upgrades_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rolling_upgrade_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rolling_upgrade_policy

[@@@deriving.end]

type scale_in = {
  force_deletion_enabled : bool prop option; [@option]
  rule : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scale_in) -> ()

let yojson_of_scale_in =
  (function
   | {
       force_deletion_enabled = v_force_deletion_enabled;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_deletion_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_deletion_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scale_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scale_in

[@@@deriving.end]

type secret__certificate = { url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret__certificate) -> ()

let yojson_of_secret__certificate =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : secret__certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret__certificate

[@@@deriving.end]

type secret = {
  key_vault_id : string prop;
  certificate : secret__certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secret) -> ()

let yojson_of_secret =
  (function
   | { key_vault_id = v_key_vault_id; certificate = v_certificate }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_secret__certificate)
               v_certificate
           in
           let bnd = "certificate", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       `Assoc bnds
    : secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret

[@@@deriving.end]

type source_image_reference = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_image_reference) -> ()

let yojson_of_source_image_reference =
  (function
   | {
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
       `Assoc bnds
    : source_image_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_image_reference

[@@@deriving.end]

type spot_restore = {
  enabled : bool prop option; [@option]
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spot_restore) -> ()

let yojson_of_spot_restore =
  (function
   | { enabled = v_enabled; timeout = v_timeout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spot_restore -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spot_restore

[@@@deriving.end]

type terminate_notification = {
  enabled : bool prop;
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : terminate_notification) -> ()

let yojson_of_terminate_notification =
  (function
   | { enabled = v_enabled; timeout = v_timeout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : terminate_notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_terminate_notification

[@@@deriving.end]

type termination_notification = {
  enabled : bool prop;
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : termination_notification) -> ()

let yojson_of_termination_notification =
  (function
   | { enabled = v_enabled; timeout = v_timeout } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : termination_notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_termination_notification

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

type azurerm_linux_virtual_machine_scale_set = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  capacity_reservation_group_id : string prop option; [@option]
  computer_name_prefix : string prop option; [@option]
  custom_data : string prop option; [@option]
  disable_password_authentication : bool prop option; [@option]
  do_not_run_extensions_on_overprovisioned_machines :
    bool prop option;
      [@option]
  edge_zone : string prop option; [@option]
  encryption_at_host_enabled : bool prop option; [@option]
  eviction_policy : string prop option; [@option]
  extension_operations_enabled : bool prop option; [@option]
  extensions_time_budget : string prop option; [@option]
  health_probe_id : string prop option; [@option]
  host_group_id : string prop option; [@option]
  id : string prop option; [@option]
  instances : float prop option; [@option]
  location : string prop;
  max_bid_price : float prop option; [@option]
  name : string prop;
  overprovision : bool prop option; [@option]
  platform_fault_domain_count : float prop option; [@option]
  priority : string prop option; [@option]
  provision_vm_agent : bool prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  resource_group_name : string prop;
  scale_in_policy : string prop option; [@option]
  secure_boot_enabled : bool prop option; [@option]
  single_placement_group : bool prop option; [@option]
  sku : string prop;
  source_image_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  upgrade_mode : string prop option; [@option]
  user_data : string prop option; [@option]
  vtpm_enabled : bool prop option; [@option]
  zone_balance : bool prop option; [@option]
  zones : string prop list option; [@option]
  additional_capabilities : additional_capabilities list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  admin_ssh_key : admin_ssh_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  automatic_instance_repair : automatic_instance_repair list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  automatic_os_upgrade_policy : automatic_os_upgrade_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  boot_diagnostics : boot_diagnostics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_disk : data_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extension : extension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gallery_application : gallery_application list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  gallery_applications : gallery_applications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface : network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_disk : os_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  plan : plan list; [@default []] [@yojson_drop_default Stdlib.( = )]
  rolling_upgrade_policy : rolling_upgrade_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scale_in : scale_in list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_image_reference : source_image_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spot_restore : spot_restore list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  terminate_notification : terminate_notification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  termination_notification : termination_notification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_linux_virtual_machine_scale_set) -> ()

let yojson_of_azurerm_linux_virtual_machine_scale_set =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       computer_name_prefix = v_computer_name_prefix;
       custom_data = v_custom_data;
       disable_password_authentication =
         v_disable_password_authentication;
       do_not_run_extensions_on_overprovisioned_machines =
         v_do_not_run_extensions_on_overprovisioned_machines;
       edge_zone = v_edge_zone;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       eviction_policy = v_eviction_policy;
       extension_operations_enabled = v_extension_operations_enabled;
       extensions_time_budget = v_extensions_time_budget;
       health_probe_id = v_health_probe_id;
       host_group_id = v_host_group_id;
       id = v_id;
       instances = v_instances;
       location = v_location;
       max_bid_price = v_max_bid_price;
       name = v_name;
       overprovision = v_overprovision;
       platform_fault_domain_count = v_platform_fault_domain_count;
       priority = v_priority;
       provision_vm_agent = v_provision_vm_agent;
       proximity_placement_group_id = v_proximity_placement_group_id;
       resource_group_name = v_resource_group_name;
       scale_in_policy = v_scale_in_policy;
       secure_boot_enabled = v_secure_boot_enabled;
       single_placement_group = v_single_placement_group;
       sku = v_sku;
       source_image_id = v_source_image_id;
       tags = v_tags;
       upgrade_mode = v_upgrade_mode;
       user_data = v_user_data;
       vtpm_enabled = v_vtpm_enabled;
       zone_balance = v_zone_balance;
       zones = v_zones;
       additional_capabilities = v_additional_capabilities;
       admin_ssh_key = v_admin_ssh_key;
       automatic_instance_repair = v_automatic_instance_repair;
       automatic_os_upgrade_policy = v_automatic_os_upgrade_policy;
       boot_diagnostics = v_boot_diagnostics;
       data_disk = v_data_disk;
       extension = v_extension;
       gallery_application = v_gallery_application;
       gallery_applications = v_gallery_applications;
       identity = v_identity;
       network_interface = v_network_interface;
       os_disk = v_os_disk;
       plan = v_plan;
       rolling_upgrade_policy = v_rolling_upgrade_policy;
       scale_in = v_scale_in;
       secret = v_secret;
       source_image_reference = v_source_image_reference;
       spot_restore = v_spot_restore;
       terminate_notification = v_terminate_notification;
       termination_notification = v_termination_notification;
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
         if Stdlib.( = ) [] v_termination_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_termination_notification)
               v_termination_notification
           in
           let bnd = "termination_notification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_terminate_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_terminate_notification)
               v_terminate_notification
           in
           let bnd = "terminate_notification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_restore then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spot_restore) v_spot_restore
           in
           let bnd = "spot_restore", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source_image_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_image_reference)
               v_source_image_reference
           in
           let bnd = "source_image_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg = (yojson_of_list yojson_of_secret) v_secret in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scale_in then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scale_in) v_scale_in
           in
           let bnd = "scale_in", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rolling_upgrade_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rolling_upgrade_policy)
               v_rolling_upgrade_policy
           in
           let bnd = "rolling_upgrade_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_plan then bnds
         else
           let arg = (yojson_of_list yojson_of_plan) v_plan in
           let bnd = "plan", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_os_disk then bnds
         else
           let arg = (yojson_of_list yojson_of_os_disk) v_os_disk in
           let bnd = "os_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gallery_applications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gallery_applications)
               v_gallery_applications
           in
           let bnd = "gallery_applications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_gallery_application then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gallery_application)
               v_gallery_application
           in
           let bnd = "gallery_application", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extension) v_extension
           in
           let bnd = "extension", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_disk then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_disk) v_data_disk
           in
           let bnd = "data_disk", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_boot_diagnostics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_boot_diagnostics)
               v_boot_diagnostics
           in
           let bnd = "boot_diagnostics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_os_upgrade_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automatic_os_upgrade_policy)
               v_automatic_os_upgrade_policy
           in
           let bnd = "automatic_os_upgrade_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_instance_repair then bnds
         else
           let arg =
             (yojson_of_list yojson_of_automatic_instance_repair)
               v_automatic_instance_repair
           in
           let bnd = "automatic_instance_repair", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_ssh_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_admin_ssh_key) v_admin_ssh_key
           in
           let bnd = "admin_ssh_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_capabilities then bnds
         else
           let arg =
             (yojson_of_list yojson_of_additional_capabilities)
               v_additional_capabilities
           in
           let bnd = "additional_capabilities", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_zone_balance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_balance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vtpm_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vtpm_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_upgrade_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "upgrade_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_image_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_image_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         match v_single_placement_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "single_placement_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure_boot_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secure_boot_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_in_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_in_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_proximity_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proximity_placement_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provision_vm_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "provision_vm_agent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_fault_domain_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "platform_fault_domain_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overprovision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "overprovision", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_bid_price", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instances", arg in
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
         match v_host_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_probe_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_probe_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extensions_time_budget with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extensions_time_budget", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extension_operations_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "extension_operations_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eviction_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eviction_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_at_host_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encryption_at_host_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_do_not_run_extensions_on_overprovisioned_machines
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "do_not_run_extensions_on_overprovisioned_machines",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_disable_password_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_password_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_computer_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "computer_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity_reservation_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       let bnds =
         match v_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "admin_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_linux_virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_linux_virtual_machine_scale_set

[@@@deriving.end]

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let admin_ssh_key ~public_key ~username () : admin_ssh_key =
  { public_key; username }

let automatic_instance_repair ?grace_period ~enabled () :
    automatic_instance_repair =
  { enabled; grace_period }

let automatic_os_upgrade_policy ~disable_automatic_rollback
    ~enable_automatic_os_upgrade () : automatic_os_upgrade_policy =
  { disable_automatic_rollback; enable_automatic_os_upgrade }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let data_disk ?create_option ?disk_encryption_set_id ?name
    ?ultra_ssd_disk_iops_read_write ?ultra_ssd_disk_mbps_read_write
    ?write_accelerator_enabled ~caching ~disk_size_gb ~lun
    ~storage_account_type () : data_disk =
  {
    caching;
    create_option;
    disk_encryption_set_id;
    disk_size_gb;
    lun;
    name;
    storage_account_type;
    ultra_ssd_disk_iops_read_write;
    ultra_ssd_disk_mbps_read_write;
    write_accelerator_enabled;
  }

let extension__protected_settings_from_key_vault ~secret_url
    ~source_vault_id () :
    extension__protected_settings_from_key_vault =
  { secret_url; source_vault_id }

let extension ?auto_upgrade_minor_version ?automatic_upgrade_enabled
    ?force_update_tag ?protected_settings ?provision_after_extensions
    ?settings ?(protected_settings_from_key_vault = []) ~name
    ~publisher ~type_ ~type_handler_version () : extension =
  {
    auto_upgrade_minor_version;
    automatic_upgrade_enabled;
    force_update_tag;
    name;
    protected_settings;
    provision_after_extensions;
    publisher;
    settings;
    type_;
    type_handler_version;
    protected_settings_from_key_vault;
  }

let gallery_application ?configuration_blob_uri ?order ?tag
    ~version_id () : gallery_application =
  { configuration_blob_uri; order; tag; version_id }

let gallery_applications ?configuration_reference_blob_uri ?order
    ?tag ~package_reference_id () : gallery_applications =
  {
    configuration_reference_blob_uri;
    order;
    package_reference_id;
    tag;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_interface__ip_configuration__public_ip_address__ip_tag
    ~tag ~type_ () :
    network_interface__ip_configuration__public_ip_address__ip_tag =
  { tag; type_ }

let network_interface__ip_configuration__public_ip_address
    ?domain_name_label ?idle_timeout_in_minutes ?public_ip_prefix_id
    ?version ?(ip_tag = []) ~name () :
    network_interface__ip_configuration__public_ip_address =
  {
    domain_name_label;
    idle_timeout_in_minutes;
    name;
    public_ip_prefix_id;
    version;
    ip_tag;
  }

let network_interface__ip_configuration
    ?application_gateway_backend_address_pool_ids
    ?application_security_group_ids
    ?load_balancer_backend_address_pool_ids
    ?load_balancer_inbound_nat_rules_ids ?primary ?subnet_id ?version
    ?(public_ip_address = []) ~name () :
    network_interface__ip_configuration =
  {
    application_gateway_backend_address_pool_ids;
    application_security_group_ids;
    load_balancer_backend_address_pool_ids;
    load_balancer_inbound_nat_rules_ids;
    name;
    primary;
    subnet_id;
    version;
    public_ip_address;
  }

let network_interface ?dns_servers ?enable_accelerated_networking
    ?enable_ip_forwarding ?network_security_group_id ?primary ~name
    ~ip_configuration () : network_interface =
  {
    dns_servers;
    enable_accelerated_networking;
    enable_ip_forwarding;
    name;
    network_security_group_id;
    primary;
    ip_configuration;
  }

let os_disk__diff_disk_settings ?placement ~option_ () :
    os_disk__diff_disk_settings =
  { option_; placement }

let os_disk ?disk_encryption_set_id ?disk_size_gb
    ?secure_vm_disk_encryption_set_id ?security_encryption_type
    ?write_accelerator_enabled ?(diff_disk_settings = []) ~caching
    ~storage_account_type () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    secure_vm_disk_encryption_set_id;
    security_encryption_type;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let rolling_upgrade_policy ?cross_zone_upgrades_enabled
    ?maximum_surge_instances_enabled
    ?prioritize_unhealthy_instances_enabled
    ~max_batch_instance_percent ~max_unhealthy_instance_percent
    ~max_unhealthy_upgraded_instance_percent
    ~pause_time_between_batches () : rolling_upgrade_policy =
  {
    cross_zone_upgrades_enabled;
    max_batch_instance_percent;
    max_unhealthy_instance_percent;
    max_unhealthy_upgraded_instance_percent;
    maximum_surge_instances_enabled;
    pause_time_between_batches;
    prioritize_unhealthy_instances_enabled;
  }

let scale_in ?force_deletion_enabled ?rule () : scale_in =
  { force_deletion_enabled; rule }

let secret__certificate ~url () : secret__certificate = { url }

let secret ~key_vault_id ~certificate () : secret =
  { key_vault_id; certificate }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let spot_restore ?enabled ?timeout () : spot_restore =
  { enabled; timeout }

let terminate_notification ?timeout ~enabled () :
    terminate_notification =
  { enabled; timeout }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_linux_virtual_machine_scale_set ?admin_password
    ?capacity_reservation_group_id ?computer_name_prefix ?custom_data
    ?disable_password_authentication
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?encryption_at_host_enabled ?eviction_policy
    ?extension_operations_enabled ?extensions_time_budget
    ?health_probe_id ?host_group_id ?id ?instances ?max_bid_price
    ?overprovision ?platform_fault_domain_count ?priority
    ?provision_vm_agent ?proximity_placement_group_id
    ?scale_in_policy ?secure_boot_enabled ?single_placement_group
    ?source_image_id ?tags ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?(additional_capabilities = [])
    ?(automatic_instance_repair = [])
    ?(automatic_os_upgrade_policy = []) ?(boot_diagnostics = [])
    ?(data_disk = []) ?(gallery_application = [])
    ?(gallery_applications = []) ?(identity = []) ?(plan = [])
    ?(rolling_upgrade_policy = []) ?(scale_in = []) ?(secret = [])
    ?(source_image_reference = []) ?(spot_restore = [])
    ?(terminate_notification = []) ?(termination_notification = [])
    ?timeouts ~admin_username ~location ~name ~resource_group_name
    ~sku ~admin_ssh_key ~extension ~network_interface ~os_disk () :
    azurerm_linux_virtual_machine_scale_set =
  {
    admin_password;
    admin_username;
    capacity_reservation_group_id;
    computer_name_prefix;
    custom_data;
    disable_password_authentication;
    do_not_run_extensions_on_overprovisioned_machines;
    edge_zone;
    encryption_at_host_enabled;
    eviction_policy;
    extension_operations_enabled;
    extensions_time_budget;
    health_probe_id;
    host_group_id;
    id;
    instances;
    location;
    max_bid_price;
    name;
    overprovision;
    platform_fault_domain_count;
    priority;
    provision_vm_agent;
    proximity_placement_group_id;
    resource_group_name;
    scale_in_policy;
    secure_boot_enabled;
    single_placement_group;
    sku;
    source_image_id;
    tags;
    upgrade_mode;
    user_data;
    vtpm_enabled;
    zone_balance;
    zones;
    additional_capabilities;
    admin_ssh_key;
    automatic_instance_repair;
    automatic_os_upgrade_policy;
    boot_diagnostics;
    data_disk;
    extension;
    gallery_application;
    gallery_applications;
    identity;
    network_interface;
    os_disk;
    plan;
    rolling_upgrade_policy;
    scale_in;
    secret;
    source_image_reference;
    spot_restore;
    terminate_notification;
    termination_notification;
    timeouts;
  }

type t = {
  tf_name : string;
  admin_password : string prop;
  admin_username : string prop;
  capacity_reservation_group_id : string prop;
  computer_name_prefix : string prop;
  custom_data : string prop;
  disable_password_authentication : bool prop;
  do_not_run_extensions_on_overprovisioned_machines : bool prop;
  edge_zone : string prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  health_probe_id : string prop;
  host_group_id : string prop;
  id : string prop;
  instances : float prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  overprovision : bool prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  scale_in_policy : string prop;
  secure_boot_enabled : bool prop;
  single_placement_group : bool prop;
  sku : string prop;
  source_image_id : string prop;
  tags : string Tf_core.assoc prop;
  unique_id : string prop;
  upgrade_mode : string prop;
  user_data : string prop;
  vtpm_enabled : bool prop;
  zone_balance : bool prop;
  zones : string list prop;
}

let make ?admin_password ?capacity_reservation_group_id
    ?computer_name_prefix ?custom_data
    ?disable_password_authentication
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?encryption_at_host_enabled ?eviction_policy
    ?extension_operations_enabled ?extensions_time_budget
    ?health_probe_id ?host_group_id ?id ?instances ?max_bid_price
    ?overprovision ?platform_fault_domain_count ?priority
    ?provision_vm_agent ?proximity_placement_group_id
    ?scale_in_policy ?secure_boot_enabled ?single_placement_group
    ?source_image_id ?tags ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?(additional_capabilities = [])
    ?(automatic_instance_repair = [])
    ?(automatic_os_upgrade_policy = []) ?(boot_diagnostics = [])
    ?(data_disk = []) ?(gallery_application = [])
    ?(gallery_applications = []) ?(identity = []) ?(plan = [])
    ?(rolling_upgrade_policy = []) ?(scale_in = []) ?(secret = [])
    ?(source_image_reference = []) ?(spot_restore = [])
    ?(terminate_notification = []) ?(termination_notification = [])
    ?timeouts ~admin_username ~location ~name ~resource_group_name
    ~sku ~admin_ssh_key ~extension ~network_interface ~os_disk __id =
  let __type = "azurerm_linux_virtual_machine_scale_set" in
  let __attrs =
    ({
       tf_name = __id;
       admin_password = Prop.computed __type __id "admin_password";
       admin_username = Prop.computed __type __id "admin_username";
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       computer_name_prefix =
         Prop.computed __type __id "computer_name_prefix";
       custom_data = Prop.computed __type __id "custom_data";
       disable_password_authentication =
         Prop.computed __type __id "disable_password_authentication";
       do_not_run_extensions_on_overprovisioned_machines =
         Prop.computed __type __id
           "do_not_run_extensions_on_overprovisioned_machines";
       edge_zone = Prop.computed __type __id "edge_zone";
       encryption_at_host_enabled =
         Prop.computed __type __id "encryption_at_host_enabled";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       extension_operations_enabled =
         Prop.computed __type __id "extension_operations_enabled";
       extensions_time_budget =
         Prop.computed __type __id "extensions_time_budget";
       health_probe_id = Prop.computed __type __id "health_probe_id";
       host_group_id = Prop.computed __type __id "host_group_id";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       location = Prop.computed __type __id "location";
       max_bid_price = Prop.computed __type __id "max_bid_price";
       name = Prop.computed __type __id "name";
       overprovision = Prop.computed __type __id "overprovision";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
       priority = Prop.computed __type __id "priority";
       provision_vm_agent =
         Prop.computed __type __id "provision_vm_agent";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scale_in_policy = Prop.computed __type __id "scale_in_policy";
       secure_boot_enabled =
         Prop.computed __type __id "secure_boot_enabled";
       single_placement_group =
         Prop.computed __type __id "single_placement_group";
       sku = Prop.computed __type __id "sku";
       source_image_id = Prop.computed __type __id "source_image_id";
       tags = Prop.computed __type __id "tags";
       unique_id = Prop.computed __type __id "unique_id";
       upgrade_mode = Prop.computed __type __id "upgrade_mode";
       user_data = Prop.computed __type __id "user_data";
       vtpm_enabled = Prop.computed __type __id "vtpm_enabled";
       zone_balance = Prop.computed __type __id "zone_balance";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_linux_virtual_machine_scale_set
        (azurerm_linux_virtual_machine_scale_set ?admin_password
           ?capacity_reservation_group_id ?computer_name_prefix
           ?custom_data ?disable_password_authentication
           ?do_not_run_extensions_on_overprovisioned_machines
           ?edge_zone ?encryption_at_host_enabled ?eviction_policy
           ?extension_operations_enabled ?extensions_time_budget
           ?health_probe_id ?host_group_id ?id ?instances
           ?max_bid_price ?overprovision ?platform_fault_domain_count
           ?priority ?provision_vm_agent
           ?proximity_placement_group_id ?scale_in_policy
           ?secure_boot_enabled ?single_placement_group
           ?source_image_id ?tags ?upgrade_mode ?user_data
           ?vtpm_enabled ?zone_balance ?zones
           ~additional_capabilities ~automatic_instance_repair
           ~automatic_os_upgrade_policy ~boot_diagnostics ~data_disk
           ~gallery_application ~gallery_applications ~identity ~plan
           ~rolling_upgrade_policy ~scale_in ~secret
           ~source_image_reference ~spot_restore
           ~terminate_notification ~termination_notification
           ?timeouts ~admin_username ~location ~name
           ~resource_group_name ~sku ~admin_ssh_key ~extension
           ~network_interface ~os_disk ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_password
    ?capacity_reservation_group_id ?computer_name_prefix ?custom_data
    ?disable_password_authentication
    ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
    ?encryption_at_host_enabled ?eviction_policy
    ?extension_operations_enabled ?extensions_time_budget
    ?health_probe_id ?host_group_id ?id ?instances ?max_bid_price
    ?overprovision ?platform_fault_domain_count ?priority
    ?provision_vm_agent ?proximity_placement_group_id
    ?scale_in_policy ?secure_boot_enabled ?single_placement_group
    ?source_image_id ?tags ?upgrade_mode ?user_data ?vtpm_enabled
    ?zone_balance ?zones ?(additional_capabilities = [])
    ?(automatic_instance_repair = [])
    ?(automatic_os_upgrade_policy = []) ?(boot_diagnostics = [])
    ?(data_disk = []) ?(gallery_application = [])
    ?(gallery_applications = []) ?(identity = []) ?(plan = [])
    ?(rolling_upgrade_policy = []) ?(scale_in = []) ?(secret = [])
    ?(source_image_reference = []) ?(spot_restore = [])
    ?(terminate_notification = []) ?(termination_notification = [])
    ?timeouts ~admin_username ~location ~name ~resource_group_name
    ~sku ~admin_ssh_key ~extension ~network_interface ~os_disk __id =
  let (r : _ Tf_core.resource) =
    make ?admin_password ?capacity_reservation_group_id
      ?computer_name_prefix ?custom_data
      ?disable_password_authentication
      ?do_not_run_extensions_on_overprovisioned_machines ?edge_zone
      ?encryption_at_host_enabled ?eviction_policy
      ?extension_operations_enabled ?extensions_time_budget
      ?health_probe_id ?host_group_id ?id ?instances ?max_bid_price
      ?overprovision ?platform_fault_domain_count ?priority
      ?provision_vm_agent ?proximity_placement_group_id
      ?scale_in_policy ?secure_boot_enabled ?single_placement_group
      ?source_image_id ?tags ?upgrade_mode ?user_data ?vtpm_enabled
      ?zone_balance ?zones ~additional_capabilities
      ~automatic_instance_repair ~automatic_os_upgrade_policy
      ~boot_diagnostics ~data_disk ~gallery_application
      ~gallery_applications ~identity ~plan ~rolling_upgrade_policy
      ~scale_in ~secret ~source_image_reference ~spot_restore
      ~terminate_notification ~termination_notification ?timeouts
      ~admin_username ~location ~name ~resource_group_name ~sku
      ~admin_ssh_key ~extension ~network_interface ~os_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
