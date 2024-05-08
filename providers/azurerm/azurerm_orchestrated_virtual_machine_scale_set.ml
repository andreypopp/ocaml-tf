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
  disk_size_gb : float prop option; [@option]
  lun : float prop option; [@option]
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
         match v_lun with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lun", arg in
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
  auto_upgrade_minor_version_enabled : bool prop option; [@option]
  extensions_to_provision_after_vm_creation :
    string prop list option;
      [@option]
  failure_suppression_enabled : bool prop option; [@option]
  force_extension_execution_on_change : string prop option; [@option]
  name : string prop;
  protected_settings : string prop option; [@option]
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
       auto_upgrade_minor_version_enabled =
         v_auto_upgrade_minor_version_enabled;
       extensions_to_provision_after_vm_creation =
         v_extensions_to_provision_after_vm_creation;
       failure_suppression_enabled = v_failure_suppression_enabled;
       force_extension_execution_on_change =
         v_force_extension_execution_on_change;
       name = v_name;
       protected_settings = v_protected_settings;
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
         match v_force_extension_execution_on_change with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "force_extension_execution_on_change", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_suppression_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failure_suppression_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extensions_to_provision_after_vm_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "extensions_to_provision_after_vm_creation", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_auto_upgrade_minor_version_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_upgrade_minor_version_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
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
  sku_name : string prop option; [@option]
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
       sku_name = v_sku_name;
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
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
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

type os_profile__linux_configuration__admin_ssh_key = {
  public_key : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__linux_configuration__admin_ssh_key) -> ()

let yojson_of_os_profile__linux_configuration__admin_ssh_key =
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
    : os_profile__linux_configuration__admin_ssh_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux_configuration__admin_ssh_key

[@@@deriving.end]

type os_profile__linux_configuration__secret__certificate = {
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__linux_configuration__secret__certificate) -> ()

let yojson_of_os_profile__linux_configuration__secret__certificate =
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
    : os_profile__linux_configuration__secret__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_profile__linux_configuration__secret__certificate

[@@@deriving.end]

type os_profile__linux_configuration__secret = {
  key_vault_id : string prop;
  certificate :
    os_profile__linux_configuration__secret__certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__linux_configuration__secret) -> ()

let yojson_of_os_profile__linux_configuration__secret =
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
             (yojson_of_list
                yojson_of_os_profile__linux_configuration__secret__certificate)
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
    : os_profile__linux_configuration__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux_configuration__secret

[@@@deriving.end]

type os_profile__linux_configuration = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  computer_name_prefix : string prop option; [@option]
  disable_password_authentication : bool prop option; [@option]
  patch_assessment_mode : string prop option; [@option]
  patch_mode : string prop option; [@option]
  provision_vm_agent : bool prop option; [@option]
  admin_ssh_key :
    os_profile__linux_configuration__admin_ssh_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : os_profile__linux_configuration__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__linux_configuration) -> ()

let yojson_of_os_profile__linux_configuration =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       computer_name_prefix = v_computer_name_prefix;
       disable_password_authentication =
         v_disable_password_authentication;
       patch_assessment_mode = v_patch_assessment_mode;
       patch_mode = v_patch_mode;
       provision_vm_agent = v_provision_vm_agent;
       admin_ssh_key = v_admin_ssh_key;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__linux_configuration__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_ssh_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__linux_configuration__admin_ssh_key)
               v_admin_ssh_key
           in
           let bnd = "admin_ssh_key", arg in
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
         match v_patch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "patch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_patch_assessment_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "patch_assessment_mode", arg in
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
         match v_computer_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "computer_name_prefix", arg in
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
    : os_profile__linux_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__linux_configuration

[@@@deriving.end]

type os_profile__windows_configuration__additional_unattend_content = {
  content : string prop;
  setting : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       os_profile__windows_configuration__additional_unattend_content) ->
  ()

let yojson_of_os_profile__windows_configuration__additional_unattend_content
    =
  (function
   | { content = v_content; setting = v_setting } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setting in
         ("setting", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__windows_configuration__additional_unattend_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_profile__windows_configuration__additional_unattend_content

[@@@deriving.end]

type os_profile__windows_configuration__secret__certificate = {
  store : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__windows_configuration__secret__certificate) ->
  ()

let yojson_of_os_profile__windows_configuration__secret__certificate
    =
  (function
   | { store = v_store; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_store in
         ("store", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__windows_configuration__secret__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_profile__windows_configuration__secret__certificate

[@@@deriving.end]

type os_profile__windows_configuration__secret = {
  key_vault_id : string prop;
  certificate :
    os_profile__windows_configuration__secret__certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__windows_configuration__secret) -> ()

let yojson_of_os_profile__windows_configuration__secret =
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
             (yojson_of_list
                yojson_of_os_profile__windows_configuration__secret__certificate)
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
    : os_profile__windows_configuration__secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows_configuration__secret

[@@@deriving.end]

type os_profile__windows_configuration__winrm_listener = {
  certificate_url : string prop option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile__windows_configuration__winrm_listener) -> ()

let yojson_of_os_profile__windows_configuration__winrm_listener =
  (function
   | { certificate_url = v_certificate_url; protocol = v_protocol }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_certificate_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_profile__windows_configuration__winrm_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows_configuration__winrm_listener

[@@@deriving.end]

type os_profile__windows_configuration = {
  admin_password : string prop;
  admin_username : string prop;
  computer_name_prefix : string prop option; [@option]
  enable_automatic_updates : bool prop option; [@option]
  hotpatching_enabled : bool prop option; [@option]
  patch_assessment_mode : string prop option; [@option]
  patch_mode : string prop option; [@option]
  provision_vm_agent : bool prop option; [@option]
  timezone : string prop option; [@option]
  additional_unattend_content :
    os_profile__windows_configuration__additional_unattend_content
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secret : os_profile__windows_configuration__secret list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  winrm_listener :
    os_profile__windows_configuration__winrm_listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile__windows_configuration) -> ()

let yojson_of_os_profile__windows_configuration =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       computer_name_prefix = v_computer_name_prefix;
       enable_automatic_updates = v_enable_automatic_updates;
       hotpatching_enabled = v_hotpatching_enabled;
       patch_assessment_mode = v_patch_assessment_mode;
       patch_mode = v_patch_mode;
       provision_vm_agent = v_provision_vm_agent;
       timezone = v_timezone;
       additional_unattend_content = v_additional_unattend_content;
       secret = v_secret;
       winrm_listener = v_winrm_listener;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_winrm_listener then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__windows_configuration__winrm_listener)
               v_winrm_listener
           in
           let bnd = "winrm_listener", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_secret then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__windows_configuration__secret)
               v_secret
           in
           let bnd = "secret", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_unattend_content then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__windows_configuration__additional_unattend_content)
               v_additional_unattend_content
           in
           let bnd = "additional_unattend_content", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
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
         match v_patch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "patch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_patch_assessment_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "patch_assessment_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hotpatching_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "hotpatching_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_automatic_updates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_automatic_updates", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_password
         in
         ("admin_password", arg) :: bnds
       in
       `Assoc bnds
    : os_profile__windows_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile__windows_configuration

[@@@deriving.end]

type os_profile = {
  custom_data : string prop option; [@option]
  linux_configuration : os_profile__linux_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  windows_configuration : os_profile__windows_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile) -> ()

let yojson_of_os_profile =
  (function
   | {
       custom_data = v_custom_data;
       linux_configuration = v_linux_configuration;
       windows_configuration = v_windows_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_windows_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__windows_configuration)
               v_windows_configuration
           in
           let bnd = "windows_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linux_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_os_profile__linux_configuration)
               v_linux_configuration
           in
           let bnd = "linux_configuration", arg in
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
       `Assoc bnds
    : os_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile

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

type priority_mix = {
  base_regular_count : float prop option; [@option]
  regular_percentage_above_base : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : priority_mix) -> ()

let yojson_of_priority_mix =
  (function
   | {
       base_regular_count = v_base_regular_count;
       regular_percentage_above_base =
         v_regular_percentage_above_base;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_regular_percentage_above_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "regular_percentage_above_base", arg in
             bnd :: bnds
       in
       let bnds =
         match v_base_regular_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base_regular_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : priority_mix -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_priority_mix

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

type azurerm_orchestrated_virtual_machine_scale_set = {
  capacity_reservation_group_id : string prop option; [@option]
  encryption_at_host_enabled : bool prop option; [@option]
  eviction_policy : string prop option; [@option]
  extension_operations_enabled : bool prop option; [@option]
  extensions_time_budget : string prop option; [@option]
  id : string prop option; [@option]
  instances : float prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  max_bid_price : float prop option; [@option]
  name : string prop;
  platform_fault_domain_count : float prop;
  priority : string prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  resource_group_name : string prop;
  single_placement_group : bool prop option; [@option]
  sku_name : string prop option; [@option]
  source_image_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_data_base64 : string prop option; [@option]
  zone_balance : bool prop option; [@option]
  zones : string prop list option; [@option]
  additional_capabilities : additional_capabilities list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  automatic_instance_repair : automatic_instance_repair list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  boot_diagnostics : boot_diagnostics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_disk : data_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extension : extension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_interface : network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_disk : os_disk list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_profile : os_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  plan : plan list; [@default []] [@yojson_drop_default Stdlib.( = )]
  priority_mix : priority_mix list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_image_reference : source_image_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  termination_notification : termination_notification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_orchestrated_virtual_machine_scale_set) -> ()

let yojson_of_azurerm_orchestrated_virtual_machine_scale_set =
  (function
   | {
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       eviction_policy = v_eviction_policy;
       extension_operations_enabled = v_extension_operations_enabled;
       extensions_time_budget = v_extensions_time_budget;
       id = v_id;
       instances = v_instances;
       license_type = v_license_type;
       location = v_location;
       max_bid_price = v_max_bid_price;
       name = v_name;
       platform_fault_domain_count = v_platform_fault_domain_count;
       priority = v_priority;
       proximity_placement_group_id = v_proximity_placement_group_id;
       resource_group_name = v_resource_group_name;
       single_placement_group = v_single_placement_group;
       sku_name = v_sku_name;
       source_image_id = v_source_image_id;
       tags = v_tags;
       user_data_base64 = v_user_data_base64;
       zone_balance = v_zone_balance;
       zones = v_zones;
       additional_capabilities = v_additional_capabilities;
       automatic_instance_repair = v_automatic_instance_repair;
       boot_diagnostics = v_boot_diagnostics;
       data_disk = v_data_disk;
       extension = v_extension;
       identity = v_identity;
       network_interface = v_network_interface;
       os_disk = v_os_disk;
       os_profile = v_os_profile;
       plan = v_plan;
       priority_mix = v_priority_mix;
       source_image_reference = v_source_image_reference;
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
         if Stdlib.( = ) [] v_priority_mix then bnds
         else
           let arg =
             (yojson_of_list yojson_of_priority_mix) v_priority_mix
           in
           let bnd = "priority_mix", arg in
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
         if Stdlib.( = ) [] v_os_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_os_profile) v_os_profile
           in
           let bnd = "os_profile", arg in
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
         match v_user_data_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data_base64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_platform_fault_domain_count
         in
         ("platform_fault_domain_count", arg) :: bnds
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
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
             bnd :: bnds
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
         match v_capacity_reservation_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_orchestrated_virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_orchestrated_virtual_machine_scale_set

[@@@deriving.end]

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let automatic_instance_repair ?grace_period ~enabled () :
    automatic_instance_repair =
  { enabled; grace_period }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let data_disk ?create_option ?disk_encryption_set_id ?disk_size_gb
    ?lun ?ultra_ssd_disk_iops_read_write
    ?ultra_ssd_disk_mbps_read_write ?write_accelerator_enabled
    ~caching ~storage_account_type () : data_disk =
  {
    caching;
    create_option;
    disk_encryption_set_id;
    disk_size_gb;
    lun;
    storage_account_type;
    ultra_ssd_disk_iops_read_write;
    ultra_ssd_disk_mbps_read_write;
    write_accelerator_enabled;
  }

let extension__protected_settings_from_key_vault ~secret_url
    ~source_vault_id () :
    extension__protected_settings_from_key_vault =
  { secret_url; source_vault_id }

let extension ?auto_upgrade_minor_version_enabled
    ?extensions_to_provision_after_vm_creation
    ?failure_suppression_enabled ?force_extension_execution_on_change
    ?protected_settings ?settings
    ?(protected_settings_from_key_vault = []) ~name ~publisher ~type_
    ~type_handler_version () : extension =
  {
    auto_upgrade_minor_version_enabled;
    extensions_to_provision_after_vm_creation;
    failure_suppression_enabled;
    force_extension_execution_on_change;
    name;
    protected_settings;
    publisher;
    settings;
    type_;
    type_handler_version;
    protected_settings_from_key_vault;
  }

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_interface__ip_configuration__public_ip_address__ip_tag
    ~tag ~type_ () :
    network_interface__ip_configuration__public_ip_address__ip_tag =
  { tag; type_ }

let network_interface__ip_configuration__public_ip_address
    ?domain_name_label ?idle_timeout_in_minutes ?public_ip_prefix_id
    ?sku_name ?version ?(ip_tag = []) ~name () :
    network_interface__ip_configuration__public_ip_address =
  {
    domain_name_label;
    idle_timeout_in_minutes;
    name;
    public_ip_prefix_id;
    sku_name;
    version;
    ip_tag;
  }

let network_interface__ip_configuration
    ?application_gateway_backend_address_pool_ids
    ?application_security_group_ids
    ?load_balancer_backend_address_pool_ids ?primary ?subnet_id
    ?version ?(public_ip_address = []) ~name () :
    network_interface__ip_configuration =
  {
    application_gateway_backend_address_pool_ids;
    application_security_group_ids;
    load_balancer_backend_address_pool_ids;
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
    ?write_accelerator_enabled ?(diff_disk_settings = []) ~caching
    ~storage_account_type () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let os_profile__linux_configuration__admin_ssh_key ~public_key
    ~username () : os_profile__linux_configuration__admin_ssh_key =
  { public_key; username }

let os_profile__linux_configuration__secret__certificate ~url () :
    os_profile__linux_configuration__secret__certificate =
  { url }

let os_profile__linux_configuration__secret ~key_vault_id
    ~certificate () : os_profile__linux_configuration__secret =
  { key_vault_id; certificate }

let os_profile__linux_configuration ?admin_password
    ?computer_name_prefix ?disable_password_authentication
    ?patch_assessment_mode ?patch_mode ?provision_vm_agent
    ?(secret = []) ~admin_username ~admin_ssh_key () :
    os_profile__linux_configuration =
  {
    admin_password;
    admin_username;
    computer_name_prefix;
    disable_password_authentication;
    patch_assessment_mode;
    patch_mode;
    provision_vm_agent;
    admin_ssh_key;
    secret;
  }

let os_profile__windows_configuration__additional_unattend_content
    ~content ~setting () :
    os_profile__windows_configuration__additional_unattend_content =
  { content; setting }

let os_profile__windows_configuration__secret__certificate ~store
    ~url () : os_profile__windows_configuration__secret__certificate
    =
  { store; url }

let os_profile__windows_configuration__secret ~key_vault_id
    ~certificate () : os_profile__windows_configuration__secret =
  { key_vault_id; certificate }

let os_profile__windows_configuration__winrm_listener
    ?certificate_url ~protocol () :
    os_profile__windows_configuration__winrm_listener =
  { certificate_url; protocol }

let os_profile__windows_configuration ?computer_name_prefix
    ?enable_automatic_updates ?hotpatching_enabled
    ?patch_assessment_mode ?patch_mode ?provision_vm_agent ?timezone
    ?(additional_unattend_content = []) ?(secret = [])
    ~admin_password ~admin_username ~winrm_listener () :
    os_profile__windows_configuration =
  {
    admin_password;
    admin_username;
    computer_name_prefix;
    enable_automatic_updates;
    hotpatching_enabled;
    patch_assessment_mode;
    patch_mode;
    provision_vm_agent;
    timezone;
    additional_unattend_content;
    secret;
    winrm_listener;
  }

let os_profile ?custom_data ?(linux_configuration = [])
    ?(windows_configuration = []) () : os_profile =
  { custom_data; linux_configuration; windows_configuration }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let priority_mix ?base_regular_count ?regular_percentage_above_base
    () : priority_mix =
  { base_regular_count; regular_percentage_above_base }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_orchestrated_virtual_machine_scale_set
    ?capacity_reservation_group_id ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?id ?instances ?license_type
    ?max_bid_price ?priority ?proximity_placement_group_id
    ?single_placement_group ?sku_name ?source_image_id ?tags
    ?user_data_base64 ?zone_balance ?zones
    ?(additional_capabilities = []) ?(automatic_instance_repair = [])
    ?(boot_diagnostics = []) ?(data_disk = []) ?(identity = [])
    ?(network_interface = []) ?(os_disk = []) ?(os_profile = [])
    ?(plan = []) ?(priority_mix = []) ?(source_image_reference = [])
    ?(termination_notification = []) ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name ~extension () :
    azurerm_orchestrated_virtual_machine_scale_set =
  {
    capacity_reservation_group_id;
    encryption_at_host_enabled;
    eviction_policy;
    extension_operations_enabled;
    extensions_time_budget;
    id;
    instances;
    license_type;
    location;
    max_bid_price;
    name;
    platform_fault_domain_count;
    priority;
    proximity_placement_group_id;
    resource_group_name;
    single_placement_group;
    sku_name;
    source_image_id;
    tags;
    user_data_base64;
    zone_balance;
    zones;
    additional_capabilities;
    automatic_instance_repair;
    boot_diagnostics;
    data_disk;
    extension;
    identity;
    network_interface;
    os_disk;
    os_profile;
    plan;
    priority_mix;
    source_image_reference;
    termination_notification;
    timeouts;
  }

type t = {
  tf_name : string;
  capacity_reservation_group_id : string prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extension_operations_enabled : bool prop;
  extensions_time_budget : string prop;
  id : string prop;
  instances : float prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  platform_fault_domain_count : float prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  single_placement_group : bool prop;
  sku_name : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  unique_id : string prop;
  user_data_base64 : string prop;
  zone_balance : bool prop;
  zones : string list prop;
}

let make ?capacity_reservation_group_id ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?id ?instances ?license_type
    ?max_bid_price ?priority ?proximity_placement_group_id
    ?single_placement_group ?sku_name ?source_image_id ?tags
    ?user_data_base64 ?zone_balance ?zones
    ?(additional_capabilities = []) ?(automatic_instance_repair = [])
    ?(boot_diagnostics = []) ?(data_disk = []) ?(identity = [])
    ?(network_interface = []) ?(os_disk = []) ?(os_profile = [])
    ?(plan = []) ?(priority_mix = []) ?(source_image_reference = [])
    ?(termination_notification = []) ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name ~extension __id
    =
  let __type = "azurerm_orchestrated_virtual_machine_scale_set" in
  let __attrs =
    ({
       tf_name = __id;
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       encryption_at_host_enabled =
         Prop.computed __type __id "encryption_at_host_enabled";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       extension_operations_enabled =
         Prop.computed __type __id "extension_operations_enabled";
       extensions_time_budget =
         Prop.computed __type __id "extensions_time_budget";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_bid_price = Prop.computed __type __id "max_bid_price";
       name = Prop.computed __type __id "name";
       platform_fault_domain_count =
         Prop.computed __type __id "platform_fault_domain_count";
       priority = Prop.computed __type __id "priority";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       single_placement_group =
         Prop.computed __type __id "single_placement_group";
       sku_name = Prop.computed __type __id "sku_name";
       source_image_id = Prop.computed __type __id "source_image_id";
       tags = Prop.computed __type __id "tags";
       unique_id = Prop.computed __type __id "unique_id";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
       zone_balance = Prop.computed __type __id "zone_balance";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_orchestrated_virtual_machine_scale_set
        (azurerm_orchestrated_virtual_machine_scale_set
           ?capacity_reservation_group_id ?encryption_at_host_enabled
           ?eviction_policy ?extension_operations_enabled
           ?extensions_time_budget ?id ?instances ?license_type
           ?max_bid_price ?priority ?proximity_placement_group_id
           ?single_placement_group ?sku_name ?source_image_id ?tags
           ?user_data_base64 ?zone_balance ?zones
           ~additional_capabilities ~automatic_instance_repair
           ~boot_diagnostics ~data_disk ~identity ~network_interface
           ~os_disk ~os_profile ~plan ~priority_mix
           ~source_image_reference ~termination_notification
           ?timeouts ~location ~name ~platform_fault_domain_count
           ~resource_group_name ~extension ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity_reservation_group_id
    ?encryption_at_host_enabled ?eviction_policy
    ?extension_operations_enabled ?extensions_time_budget ?id
    ?instances ?license_type ?max_bid_price ?priority
    ?proximity_placement_group_id ?single_placement_group ?sku_name
    ?source_image_id ?tags ?user_data_base64 ?zone_balance ?zones
    ?(additional_capabilities = []) ?(automatic_instance_repair = [])
    ?(boot_diagnostics = []) ?(data_disk = []) ?(identity = [])
    ?(network_interface = []) ?(os_disk = []) ?(os_profile = [])
    ?(plan = []) ?(priority_mix = []) ?(source_image_reference = [])
    ?(termination_notification = []) ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name ~extension __id
    =
  let (r : _ Tf_core.resource) =
    make ?capacity_reservation_group_id ?encryption_at_host_enabled
      ?eviction_policy ?extension_operations_enabled
      ?extensions_time_budget ?id ?instances ?license_type
      ?max_bid_price ?priority ?proximity_placement_group_id
      ?single_placement_group ?sku_name ?source_image_id ?tags
      ?user_data_base64 ?zone_balance ?zones ~additional_capabilities
      ~automatic_instance_repair ~boot_diagnostics ~data_disk
      ~identity ~network_interface ~os_disk ~os_profile ~plan
      ~priority_mix ~source_image_reference ~termination_notification
      ?timeouts ~location ~name ~platform_fault_domain_count
      ~resource_group_name ~extension __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
