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

type additional_unattend_content = {
  content : string prop;
  setting : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_unattend_content) -> ()

let yojson_of_additional_unattend_content =
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
    : additional_unattend_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_unattend_content

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

type gallery_application = {
  automatic_upgrade_enabled : bool prop option; [@option]
  configuration_blob_uri : string prop option; [@option]
  order : float prop option; [@option]
  tag : string prop option; [@option]
  treat_failure_as_deployment_failure_enabled : bool prop option;
      [@option]
  version_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gallery_application) -> ()

let yojson_of_gallery_application =
  (function
   | {
       automatic_upgrade_enabled = v_automatic_upgrade_enabled;
       configuration_blob_uri = v_configuration_blob_uri;
       order = v_order;
       tag = v_tag;
       treat_failure_as_deployment_failure_enabled =
         v_treat_failure_as_deployment_failure_enabled;
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
         match v_treat_failure_as_deployment_failure_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "treat_failure_as_deployment_failure_enabled", arg
             in
             bnd :: bnds
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
       let bnds =
         match v_automatic_upgrade_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_upgrade_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gallery_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gallery_application

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
  name : string prop option; [@option]
  secure_vm_disk_encryption_set_id : string prop option; [@option]
  security_encryption_type : string prop option; [@option]
  storage_account_type : string prop;
  write_accelerator_enabled : bool prop option; [@option]
  diff_disk_settings : os_disk__diff_disk_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_disk) -> ()

let yojson_of_os_disk =
  (function
   | {
       caching = v_caching;
       disk_encryption_set_id = v_disk_encryption_set_id;
       disk_size_gb = v_disk_size_gb;
       name = v_name;
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
         let arg =
           yojson_of_list yojson_of_os_disk__diff_disk_settings
             v_diff_disk_settings
         in
         ("diff_disk_settings", arg) :: bnds
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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

type os_image_notification = {
  timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_image_notification) -> ()

let yojson_of_os_image_notification =
  (function
   | { timeout = v_timeout } ->
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
       `Assoc bnds
    : os_image_notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_image_notification

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

type secret__certificate = { store : string prop; url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret__certificate) -> ()

let yojson_of_secret__certificate =
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
    : secret__certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret__certificate

[@@@deriving.end]

type secret = {
  key_vault_id : string prop;
  certificate : secret__certificate list;
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
         let arg =
           yojson_of_list yojson_of_secret__certificate v_certificate
         in
         ("certificate", arg) :: bnds
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

type winrm_listener = {
  certificate_url : string prop option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : winrm_listener) -> ()

let yojson_of_winrm_listener =
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
    : winrm_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_winrm_listener

[@@@deriving.end]

type azurerm_windows_virtual_machine = {
  admin_password : string prop;
  admin_username : string prop;
  allow_extension_operations : bool prop option; [@option]
  availability_set_id : string prop option; [@option]
  bypass_platform_safety_checks_on_user_schedule_enabled :
    bool prop option;
      [@option]
  capacity_reservation_group_id : string prop option; [@option]
  computer_name : string prop option; [@option]
  custom_data : string prop option; [@option]
  dedicated_host_group_id : string prop option; [@option]
  dedicated_host_id : string prop option; [@option]
  disk_controller_type : string prop option; [@option]
  edge_zone : string prop option; [@option]
  enable_automatic_updates : bool prop option; [@option]
  encryption_at_host_enabled : bool prop option; [@option]
  eviction_policy : string prop option; [@option]
  extensions_time_budget : string prop option; [@option]
  hotpatching_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  max_bid_price : float prop option; [@option]
  name : string prop;
  network_interface_ids : string prop list;
  patch_assessment_mode : string prop option; [@option]
  patch_mode : string prop option; [@option]
  platform_fault_domain : float prop option; [@option]
  priority : string prop option; [@option]
  provision_vm_agent : bool prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  reboot_setting : string prop option; [@option]
  resource_group_name : string prop;
  secure_boot_enabled : bool prop option; [@option]
  size : string prop;
  source_image_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timezone : string prop option; [@option]
  user_data : string prop option; [@option]
  virtual_machine_scale_set_id : string prop option; [@option]
  vm_agent_platform_updates_enabled : bool prop option; [@option]
  vtpm_enabled : bool prop option; [@option]
  zone : string prop option; [@option]
  additional_capabilities : additional_capabilities list;
  additional_unattend_content : additional_unattend_content list;
  boot_diagnostics : boot_diagnostics list;
  gallery_application : gallery_application list;
  identity : identity list;
  os_disk : os_disk list;
  os_image_notification : os_image_notification list;
  plan : plan list;
  secret : secret list;
  source_image_reference : source_image_reference list;
  termination_notification : termination_notification list;
  timeouts : timeouts option;
  winrm_listener : winrm_listener list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_windows_virtual_machine) -> ()

let yojson_of_azurerm_windows_virtual_machine =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       allow_extension_operations = v_allow_extension_operations;
       availability_set_id = v_availability_set_id;
       bypass_platform_safety_checks_on_user_schedule_enabled =
         v_bypass_platform_safety_checks_on_user_schedule_enabled;
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       computer_name = v_computer_name;
       custom_data = v_custom_data;
       dedicated_host_group_id = v_dedicated_host_group_id;
       dedicated_host_id = v_dedicated_host_id;
       disk_controller_type = v_disk_controller_type;
       edge_zone = v_edge_zone;
       enable_automatic_updates = v_enable_automatic_updates;
       encryption_at_host_enabled = v_encryption_at_host_enabled;
       eviction_policy = v_eviction_policy;
       extensions_time_budget = v_extensions_time_budget;
       hotpatching_enabled = v_hotpatching_enabled;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       max_bid_price = v_max_bid_price;
       name = v_name;
       network_interface_ids = v_network_interface_ids;
       patch_assessment_mode = v_patch_assessment_mode;
       patch_mode = v_patch_mode;
       platform_fault_domain = v_platform_fault_domain;
       priority = v_priority;
       provision_vm_agent = v_provision_vm_agent;
       proximity_placement_group_id = v_proximity_placement_group_id;
       reboot_setting = v_reboot_setting;
       resource_group_name = v_resource_group_name;
       secure_boot_enabled = v_secure_boot_enabled;
       size = v_size;
       source_image_id = v_source_image_id;
       tags = v_tags;
       timezone = v_timezone;
       user_data = v_user_data;
       virtual_machine_scale_set_id = v_virtual_machine_scale_set_id;
       vm_agent_platform_updates_enabled =
         v_vm_agent_platform_updates_enabled;
       vtpm_enabled = v_vtpm_enabled;
       zone = v_zone;
       additional_capabilities = v_additional_capabilities;
       additional_unattend_content = v_additional_unattend_content;
       boot_diagnostics = v_boot_diagnostics;
       gallery_application = v_gallery_application;
       identity = v_identity;
       os_disk = v_os_disk;
       os_image_notification = v_os_image_notification;
       plan = v_plan;
       secret = v_secret;
       source_image_reference = v_source_image_reference;
       termination_notification = v_termination_notification;
       timeouts = v_timeouts;
       winrm_listener = v_winrm_listener;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_winrm_listener v_winrm_listener
         in
         ("winrm_listener", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_termination_notification
             v_termination_notification
         in
         ("termination_notification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source_image_reference
             v_source_image_reference
         in
         ("source_image_reference", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_secret v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_plan v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_image_notification
             v_os_image_notification
         in
         ("os_image_notification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_os_disk v_os_disk in
         ("os_disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_gallery_application
             v_gallery_application
         in
         ("gallery_application", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_boot_diagnostics
             v_boot_diagnostics
         in
         ("boot_diagnostics", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_additional_unattend_content
             v_additional_unattend_content
         in
         ("additional_unattend_content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_additional_capabilities
             v_additional_capabilities
         in
         ("additional_capabilities", arg) :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         match v_vm_agent_platform_updates_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vm_agent_platform_updates_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_machine_scale_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine_scale_set_id", arg in
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
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
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
         let arg = yojson_of_prop yojson_of_string v_size in
         ("size", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_reboot_setting with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reboot_setting", arg in
             bnd :: bnds
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
         match v_platform_fault_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "platform_fault_domain", arg in
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_network_interface_ids
         in
         ("network_interface_ids", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_extensions_time_budget with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "extensions_time_budget", arg in
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
         match v_enable_automatic_updates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_automatic_updates", arg in
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
         match v_disk_controller_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk_controller_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_host_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dedicated_host_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dedicated_host_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dedicated_host_group_id", arg in
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
         match v_computer_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "computer_name", arg in
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
         match
           v_bypass_platform_safety_checks_on_user_schedule_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "bypass_platform_safety_checks_on_user_schedule_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_availability_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_extension_operations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_extension_operations", arg in
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
    : azurerm_windows_virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_windows_virtual_machine

[@@@deriving.end]

let additional_capabilities ?ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let additional_unattend_content ~content ~setting () :
    additional_unattend_content =
  { content; setting }

let boot_diagnostics ?storage_account_uri () : boot_diagnostics =
  { storage_account_uri }

let gallery_application ?automatic_upgrade_enabled
    ?configuration_blob_uri ?order ?tag
    ?treat_failure_as_deployment_failure_enabled ~version_id () :
    gallery_application =
  {
    automatic_upgrade_enabled;
    configuration_blob_uri;
    order;
    tag;
    treat_failure_as_deployment_failure_enabled;
    version_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let os_disk__diff_disk_settings ?placement ~option_ () :
    os_disk__diff_disk_settings =
  { option_; placement }

let os_disk ?disk_encryption_set_id ?disk_size_gb ?name
    ?secure_vm_disk_encryption_set_id ?security_encryption_type
    ?write_accelerator_enabled ?(diff_disk_settings = []) ~caching
    ~storage_account_type () : os_disk =
  {
    caching;
    disk_encryption_set_id;
    disk_size_gb;
    name;
    secure_vm_disk_encryption_set_id;
    security_encryption_type;
    storage_account_type;
    write_accelerator_enabled;
    diff_disk_settings;
  }

let os_image_notification ?timeout () : os_image_notification =
  { timeout }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let secret__certificate ~store ~url () : secret__certificate =
  { store; url }

let secret ~key_vault_id ~certificate () : secret =
  { key_vault_id; certificate }

let source_image_reference ~offer ~publisher ~sku ~version () :
    source_image_reference =
  { offer; publisher; sku; version }

let termination_notification ?timeout ~enabled () :
    termination_notification =
  { enabled; timeout }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let winrm_listener ?certificate_url ~protocol () : winrm_listener =
  { certificate_url; protocol }

let azurerm_windows_virtual_machine ?allow_extension_operations
    ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?(additional_capabilities = [])
    ?(additional_unattend_content = []) ?(boot_diagnostics = [])
    ?(gallery_application = []) ?(identity = [])
    ?(os_image_notification = []) ?(plan = []) ?(secret = [])
    ?(source_image_reference = []) ?(termination_notification = [])
    ?timeouts ~admin_password ~admin_username ~location ~name
    ~network_interface_ids ~resource_group_name ~size ~os_disk
    ~winrm_listener () : azurerm_windows_virtual_machine =
  {
    admin_password;
    admin_username;
    allow_extension_operations;
    availability_set_id;
    bypass_platform_safety_checks_on_user_schedule_enabled;
    capacity_reservation_group_id;
    computer_name;
    custom_data;
    dedicated_host_group_id;
    dedicated_host_id;
    disk_controller_type;
    edge_zone;
    enable_automatic_updates;
    encryption_at_host_enabled;
    eviction_policy;
    extensions_time_budget;
    hotpatching_enabled;
    id;
    license_type;
    location;
    max_bid_price;
    name;
    network_interface_ids;
    patch_assessment_mode;
    patch_mode;
    platform_fault_domain;
    priority;
    provision_vm_agent;
    proximity_placement_group_id;
    reboot_setting;
    resource_group_name;
    secure_boot_enabled;
    size;
    source_image_id;
    tags;
    timezone;
    user_data;
    virtual_machine_scale_set_id;
    vm_agent_platform_updates_enabled;
    vtpm_enabled;
    zone;
    additional_capabilities;
    additional_unattend_content;
    boot_diagnostics;
    gallery_application;
    identity;
    os_disk;
    os_image_notification;
    plan;
    secret;
    source_image_reference;
    termination_notification;
    timeouts;
    winrm_listener;
  }

type t = {
  tf_name : string;
  admin_password : string prop;
  admin_username : string prop;
  allow_extension_operations : bool prop;
  availability_set_id : string prop;
  bypass_platform_safety_checks_on_user_schedule_enabled : bool prop;
  capacity_reservation_group_id : string prop;
  computer_name : string prop;
  custom_data : string prop;
  dedicated_host_group_id : string prop;
  dedicated_host_id : string prop;
  disk_controller_type : string prop;
  edge_zone : string prop;
  enable_automatic_updates : bool prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extensions_time_budget : string prop;
  hotpatching_enabled : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  max_bid_price : float prop;
  name : string prop;
  network_interface_ids : string list prop;
  patch_assessment_mode : string prop;
  patch_mode : string prop;
  platform_fault_domain : float prop;
  priority : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  provision_vm_agent : bool prop;
  proximity_placement_group_id : string prop;
  public_ip_address : string prop;
  public_ip_addresses : string list prop;
  reboot_setting : string prop;
  resource_group_name : string prop;
  secure_boot_enabled : bool prop;
  size : string prop;
  source_image_id : string prop;
  tags : (string * string) list prop;
  timezone : string prop;
  user_data : string prop;
  virtual_machine_id : string prop;
  virtual_machine_scale_set_id : string prop;
  vm_agent_platform_updates_enabled : bool prop;
  vtpm_enabled : bool prop;
  zone : string prop;
}

let make ?allow_extension_operations ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?(additional_capabilities = [])
    ?(additional_unattend_content = []) ?(boot_diagnostics = [])
    ?(gallery_application = []) ?(identity = [])
    ?(os_image_notification = []) ?(plan = []) ?(secret = [])
    ?(source_image_reference = []) ?(termination_notification = [])
    ?timeouts ~admin_password ~admin_username ~location ~name
    ~network_interface_ids ~resource_group_name ~size ~os_disk
    ~winrm_listener __id =
  let __type = "azurerm_windows_virtual_machine" in
  let __attrs =
    ({
       tf_name = __id;
       admin_password = Prop.computed __type __id "admin_password";
       admin_username = Prop.computed __type __id "admin_username";
       allow_extension_operations =
         Prop.computed __type __id "allow_extension_operations";
       availability_set_id =
         Prop.computed __type __id "availability_set_id";
       bypass_platform_safety_checks_on_user_schedule_enabled =
         Prop.computed __type __id
           "bypass_platform_safety_checks_on_user_schedule_enabled";
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       computer_name = Prop.computed __type __id "computer_name";
       custom_data = Prop.computed __type __id "custom_data";
       dedicated_host_group_id =
         Prop.computed __type __id "dedicated_host_group_id";
       dedicated_host_id =
         Prop.computed __type __id "dedicated_host_id";
       disk_controller_type =
         Prop.computed __type __id "disk_controller_type";
       edge_zone = Prop.computed __type __id "edge_zone";
       enable_automatic_updates =
         Prop.computed __type __id "enable_automatic_updates";
       encryption_at_host_enabled =
         Prop.computed __type __id "encryption_at_host_enabled";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       extensions_time_budget =
         Prop.computed __type __id "extensions_time_budget";
       hotpatching_enabled =
         Prop.computed __type __id "hotpatching_enabled";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       max_bid_price = Prop.computed __type __id "max_bid_price";
       name = Prop.computed __type __id "name";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       patch_assessment_mode =
         Prop.computed __type __id "patch_assessment_mode";
       patch_mode = Prop.computed __type __id "patch_mode";
       platform_fault_domain =
         Prop.computed __type __id "platform_fault_domain";
       priority = Prop.computed __type __id "priority";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       provision_vm_agent =
         Prop.computed __type __id "provision_vm_agent";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       public_ip_address =
         Prop.computed __type __id "public_ip_address";
       public_ip_addresses =
         Prop.computed __type __id "public_ip_addresses";
       reboot_setting = Prop.computed __type __id "reboot_setting";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secure_boot_enabled =
         Prop.computed __type __id "secure_boot_enabled";
       size = Prop.computed __type __id "size";
       source_image_id = Prop.computed __type __id "source_image_id";
       tags = Prop.computed __type __id "tags";
       timezone = Prop.computed __type __id "timezone";
       user_data = Prop.computed __type __id "user_data";
       virtual_machine_id =
         Prop.computed __type __id "virtual_machine_id";
       virtual_machine_scale_set_id =
         Prop.computed __type __id "virtual_machine_scale_set_id";
       vm_agent_platform_updates_enabled =
         Prop.computed __type __id
           "vm_agent_platform_updates_enabled";
       vtpm_enabled = Prop.computed __type __id "vtpm_enabled";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_windows_virtual_machine
        (azurerm_windows_virtual_machine ?allow_extension_operations
           ?availability_set_id
           ?bypass_platform_safety_checks_on_user_schedule_enabled
           ?capacity_reservation_group_id ?computer_name ?custom_data
           ?dedicated_host_group_id ?dedicated_host_id
           ?disk_controller_type ?edge_zone ?enable_automatic_updates
           ?encryption_at_host_enabled ?eviction_policy
           ?extensions_time_budget ?hotpatching_enabled ?id
           ?license_type ?max_bid_price ?patch_assessment_mode
           ?patch_mode ?platform_fault_domain ?priority
           ?provision_vm_agent ?proximity_placement_group_id
           ?reboot_setting ?secure_boot_enabled ?source_image_id
           ?tags ?timezone ?user_data ?virtual_machine_scale_set_id
           ?vm_agent_platform_updates_enabled ?vtpm_enabled ?zone
           ~additional_capabilities ~additional_unattend_content
           ~boot_diagnostics ~gallery_application ~identity
           ~os_image_notification ~plan ~secret
           ~source_image_reference ~termination_notification
           ?timeouts ~admin_password ~admin_username ~location ~name
           ~network_interface_ids ~resource_group_name ~size ~os_disk
           ~winrm_listener ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_extension_operations
    ?availability_set_id
    ?bypass_platform_safety_checks_on_user_schedule_enabled
    ?capacity_reservation_group_id ?computer_name ?custom_data
    ?dedicated_host_group_id ?dedicated_host_id ?disk_controller_type
    ?edge_zone ?enable_automatic_updates ?encryption_at_host_enabled
    ?eviction_policy ?extensions_time_budget ?hotpatching_enabled ?id
    ?license_type ?max_bid_price ?patch_assessment_mode ?patch_mode
    ?platform_fault_domain ?priority ?provision_vm_agent
    ?proximity_placement_group_id ?reboot_setting
    ?secure_boot_enabled ?source_image_id ?tags ?timezone ?user_data
    ?virtual_machine_scale_set_id ?vm_agent_platform_updates_enabled
    ?vtpm_enabled ?zone ?(additional_capabilities = [])
    ?(additional_unattend_content = []) ?(boot_diagnostics = [])
    ?(gallery_application = []) ?(identity = [])
    ?(os_image_notification = []) ?(plan = []) ?(secret = [])
    ?(source_image_reference = []) ?(termination_notification = [])
    ?timeouts ~admin_password ~admin_username ~location ~name
    ~network_interface_ids ~resource_group_name ~size ~os_disk
    ~winrm_listener __id =
  let (r : _ Tf_core.resource) =
    make ?allow_extension_operations ?availability_set_id
      ?bypass_platform_safety_checks_on_user_schedule_enabled
      ?capacity_reservation_group_id ?computer_name ?custom_data
      ?dedicated_host_group_id ?dedicated_host_id
      ?disk_controller_type ?edge_zone ?enable_automatic_updates
      ?encryption_at_host_enabled ?eviction_policy
      ?extensions_time_budget ?hotpatching_enabled ?id ?license_type
      ?max_bid_price ?patch_assessment_mode ?patch_mode
      ?platform_fault_domain ?priority ?provision_vm_agent
      ?proximity_placement_group_id ?reboot_setting
      ?secure_boot_enabled ?source_image_id ?tags ?timezone
      ?user_data ?virtual_machine_scale_set_id
      ?vm_agent_platform_updates_enabled ?vtpm_enabled ?zone
      ~additional_capabilities ~additional_unattend_content
      ~boot_diagnostics ~gallery_application ~identity
      ~os_image_notification ~plan ~secret ~source_image_reference
      ~termination_notification ?timeouts ~admin_password
      ~admin_username ~location ~name ~network_interface_ids
      ~resource_group_name ~size ~os_disk ~winrm_listener __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
