(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_capabilities = { ultra_ssd_enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_capabilities) -> ()

let yojson_of_additional_capabilities =
  (function
   | { ultra_ssd_enabled = v_ultra_ssd_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_ultra_ssd_enabled
         in
         ("ultra_ssd_enabled", arg) :: bnds
       in
       `Assoc bnds
    : additional_capabilities -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_capabilities

[@@@deriving.end]

type boot_diagnostics = {
  enabled : bool prop;
  storage_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : boot_diagnostics) -> ()

let yojson_of_boot_diagnostics =
  (function
   | { enabled = v_enabled; storage_uri = v_storage_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_uri in
         ("storage_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : boot_diagnostics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_diagnostics

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

type os_profile = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  computer_name : string prop;
  custom_data : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile) -> ()

let yojson_of_os_profile =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       computer_name = v_computer_name;
       custom_data = v_custom_data;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_computer_name in
         ("computer_name", arg) :: bnds
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
    : os_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile

[@@@deriving.end]

type os_profile_linux_config__ssh_keys = {
  key_data : string prop;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_linux_config__ssh_keys) -> ()

let yojson_of_os_profile_linux_config__ssh_keys =
  (function
   | { key_data = v_key_data; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_data in
         ("key_data", arg) :: bnds
       in
       `Assoc bnds
    : os_profile_linux_config__ssh_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_linux_config__ssh_keys

[@@@deriving.end]

type os_profile_linux_config = {
  disable_password_authentication : bool prop;
  ssh_keys : os_profile_linux_config__ssh_keys list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_linux_config) -> ()

let yojson_of_os_profile_linux_config =
  (function
   | {
       disable_password_authentication =
         v_disable_password_authentication;
       ssh_keys = v_ssh_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile_linux_config__ssh_keys
             v_ssh_keys
         in
         ("ssh_keys", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_disable_password_authentication
         in
         ("disable_password_authentication", arg) :: bnds
       in
       `Assoc bnds
    : os_profile_linux_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_linux_config

[@@@deriving.end]

type os_profile_secrets__vault_certificates = {
  certificate_store : string prop option; [@option]
  certificate_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_secrets__vault_certificates) -> ()

let yojson_of_os_profile_secrets__vault_certificates =
  (function
   | {
       certificate_store = v_certificate_store;
       certificate_url = v_certificate_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_url
         in
         ("certificate_url", arg) :: bnds
       in
       let bnds =
         match v_certificate_store with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_store", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_profile_secrets__vault_certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_secrets__vault_certificates

[@@@deriving.end]

type os_profile_secrets = {
  source_vault_id : string prop;
  vault_certificates : os_profile_secrets__vault_certificates list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_secrets) -> ()

let yojson_of_os_profile_secrets =
  (function
   | {
       source_vault_id = v_source_vault_id;
       vault_certificates = v_vault_certificates;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_profile_secrets__vault_certificates
             v_vault_certificates
         in
         ("vault_certificates", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_vault_id
         in
         ("source_vault_id", arg) :: bnds
       in
       `Assoc bnds
    : os_profile_secrets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_secrets

[@@@deriving.end]

type os_profile_windows_config__additional_unattend_config = {
  component : string prop;
  content : string prop;
  pass : string prop;
  setting_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : os_profile_windows_config__additional_unattend_config) ->
  ()

let yojson_of_os_profile_windows_config__additional_unattend_config =
  (function
   | {
       component = v_component;
       content = v_content;
       pass = v_pass;
       setting_name = v_setting_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setting_name in
         ("setting_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pass in
         ("pass", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_component in
         ("component", arg) :: bnds
       in
       `Assoc bnds
    : os_profile_windows_config__additional_unattend_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_os_profile_windows_config__additional_unattend_config

[@@@deriving.end]

type os_profile_windows_config__winrm = {
  certificate_url : string prop option; [@option]
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_windows_config__winrm) -> ()

let yojson_of_os_profile_windows_config__winrm =
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
    : os_profile_windows_config__winrm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_windows_config__winrm

[@@@deriving.end]

type os_profile_windows_config = {
  enable_automatic_upgrades : bool prop option; [@option]
  provision_vm_agent : bool prop option; [@option]
  timezone : string prop option; [@option]
  additional_unattend_config :
    os_profile_windows_config__additional_unattend_config list;
  winrm : os_profile_windows_config__winrm list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile_windows_config) -> ()

let yojson_of_os_profile_windows_config =
  (function
   | {
       enable_automatic_upgrades = v_enable_automatic_upgrades;
       provision_vm_agent = v_provision_vm_agent;
       timezone = v_timezone;
       additional_unattend_config = v_additional_unattend_config;
       winrm = v_winrm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile_windows_config__winrm
             v_winrm
         in
         ("winrm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_os_profile_windows_config__additional_unattend_config
             v_additional_unattend_config
         in
         ("additional_unattend_config", arg) :: bnds
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
         match v_enable_automatic_upgrades with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_automatic_upgrades", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_profile_windows_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_windows_config

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

type storage_data_disk = {
  caching : string prop option; [@option]
  create_option : string prop;
  disk_size_gb : float prop option; [@option]
  lun : float prop;
  managed_disk_id : string prop option; [@option]
  managed_disk_type : string prop option; [@option]
  name : string prop;
  vhd_uri : string prop option; [@option]
  write_accelerator_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_data_disk) -> ()

let yojson_of_storage_data_disk =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       disk_size_gb = v_disk_size_gb;
       lun = v_lun;
       managed_disk_id = v_managed_disk_id;
       managed_disk_type = v_managed_disk_type;
       name = v_name;
       vhd_uri = v_vhd_uri;
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
         match v_vhd_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vhd_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lun in
         ("lun", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_create_option in
         ("create_option", arg) :: bnds
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
    : storage_data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_data_disk

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

type storage_os_disk = {
  caching : string prop option; [@option]
  create_option : string prop;
  disk_size_gb : float prop option; [@option]
  image_uri : string prop option; [@option]
  managed_disk_id : string prop option; [@option]
  managed_disk_type : string prop option; [@option]
  name : string prop;
  os_type : string prop option; [@option]
  vhd_uri : string prop option; [@option]
  write_accelerator_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_os_disk) -> ()

let yojson_of_storage_os_disk =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       disk_size_gb = v_disk_size_gb;
       image_uri = v_image_uri;
       managed_disk_id = v_managed_disk_id;
       managed_disk_type = v_managed_disk_type;
       name = v_name;
       os_type = v_os_type;
       vhd_uri = v_vhd_uri;
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
         match v_vhd_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vhd_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_disk_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_uri", arg in
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
         let arg = yojson_of_prop yojson_of_string v_create_option in
         ("create_option", arg) :: bnds
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
    : storage_os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_os_disk

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

type azurerm_virtual_machine = {
  availability_set_id : string prop option; [@option]
  delete_data_disks_on_termination : bool prop option; [@option]
  delete_os_disk_on_termination : bool prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  name : string prop;
  network_interface_ids : string prop list;
  primary_network_interface_id : string prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  vm_size : string prop;
  zones : string prop list option; [@option]
  additional_capabilities : additional_capabilities list;
  boot_diagnostics : boot_diagnostics list;
  identity : identity list;
  os_profile : os_profile list;
  os_profile_linux_config : os_profile_linux_config list;
  os_profile_secrets : os_profile_secrets list;
  os_profile_windows_config : os_profile_windows_config list;
  plan : plan list;
  storage_data_disk : storage_data_disk list;
  storage_image_reference : storage_image_reference list;
  storage_os_disk : storage_os_disk list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine) -> ()

let yojson_of_azurerm_virtual_machine =
  (function
   | {
       availability_set_id = v_availability_set_id;
       delete_data_disks_on_termination =
         v_delete_data_disks_on_termination;
       delete_os_disk_on_termination =
         v_delete_os_disk_on_termination;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       name = v_name;
       network_interface_ids = v_network_interface_ids;
       primary_network_interface_id = v_primary_network_interface_id;
       proximity_placement_group_id = v_proximity_placement_group_id;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       vm_size = v_vm_size;
       zones = v_zones;
       additional_capabilities = v_additional_capabilities;
       boot_diagnostics = v_boot_diagnostics;
       identity = v_identity;
       os_profile = v_os_profile;
       os_profile_linux_config = v_os_profile_linux_config;
       os_profile_secrets = v_os_profile_secrets;
       os_profile_windows_config = v_os_profile_windows_config;
       plan = v_plan;
       storage_data_disk = v_storage_data_disk;
       storage_image_reference = v_storage_image_reference;
       storage_os_disk = v_storage_os_disk;
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
           yojson_of_list yojson_of_storage_os_disk v_storage_os_disk
         in
         ("storage_os_disk", arg) :: bnds
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
           yojson_of_list yojson_of_storage_data_disk
             v_storage_data_disk
         in
         ("storage_data_disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_plan v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile_windows_config
             v_os_profile_windows_config
         in
         ("os_profile_windows_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile_secrets
             v_os_profile_secrets
         in
         ("os_profile_secrets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile_linux_config
             v_os_profile_linux_config
         in
         ("os_profile_linux_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_os_profile v_os_profile
         in
         ("os_profile", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
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
           yojson_of_list yojson_of_additional_capabilities
             v_additional_capabilities
         in
         ("additional_capabilities", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
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
         match v_primary_network_interface_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_network_interface_id", arg in
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
         match v_delete_os_disk_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_os_disk_on_termination", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_data_disks_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_data_disks_on_termination", arg in
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
       `Assoc bnds
    : azurerm_virtual_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine

[@@@deriving.end]

let additional_capabilities ~ultra_ssd_enabled () :
    additional_capabilities =
  { ultra_ssd_enabled }

let boot_diagnostics ~enabled ~storage_uri () : boot_diagnostics =
  { enabled; storage_uri }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let os_profile ?admin_password ?custom_data ~admin_username
    ~computer_name () : os_profile =
  { admin_password; admin_username; computer_name; custom_data }

let os_profile_linux_config__ssh_keys ~key_data ~path () :
    os_profile_linux_config__ssh_keys =
  { key_data; path }

let os_profile_linux_config ?(ssh_keys = [])
    ~disable_password_authentication () : os_profile_linux_config =
  { disable_password_authentication; ssh_keys }

let os_profile_secrets__vault_certificates ?certificate_store
    ~certificate_url () : os_profile_secrets__vault_certificates =
  { certificate_store; certificate_url }

let os_profile_secrets ?(vault_certificates = []) ~source_vault_id ()
    : os_profile_secrets =
  { source_vault_id; vault_certificates }

let os_profile_windows_config__additional_unattend_config ~component
    ~content ~pass ~setting_name () :
    os_profile_windows_config__additional_unattend_config =
  { component; content; pass; setting_name }

let os_profile_windows_config__winrm ?certificate_url ~protocol () :
    os_profile_windows_config__winrm =
  { certificate_url; protocol }

let os_profile_windows_config ?enable_automatic_upgrades
    ?provision_vm_agent ?timezone ?(additional_unattend_config = [])
    ?(winrm = []) () : os_profile_windows_config =
  {
    enable_automatic_upgrades;
    provision_vm_agent;
    timezone;
    additional_unattend_config;
    winrm;
  }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let storage_data_disk ?caching ?disk_size_gb ?managed_disk_id
    ?managed_disk_type ?vhd_uri ?write_accelerator_enabled
    ~create_option ~lun ~name () : storage_data_disk =
  {
    caching;
    create_option;
    disk_size_gb;
    lun;
    managed_disk_id;
    managed_disk_type;
    name;
    vhd_uri;
    write_accelerator_enabled;
  }

let storage_image_reference ?id ?offer ?publisher ?sku ?version () :
    storage_image_reference =
  { id; offer; publisher; sku; version }

let storage_os_disk ?caching ?disk_size_gb ?image_uri
    ?managed_disk_id ?managed_disk_type ?os_type ?vhd_uri
    ?write_accelerator_enabled ~create_option ~name () :
    storage_os_disk =
  {
    caching;
    create_option;
    disk_size_gb;
    image_uri;
    managed_disk_id;
    managed_disk_type;
    name;
    os_type;
    vhd_uri;
    write_accelerator_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine ?availability_set_id
    ?delete_data_disks_on_termination ?delete_os_disk_on_termination
    ?id ?license_type ?primary_network_interface_id
    ?proximity_placement_group_id ?tags ?zones
    ?(additional_capabilities = []) ?(boot_diagnostics = [])
    ?(identity = []) ?(os_profile_secrets = []) ?(plan = [])
    ?(storage_data_disk = []) ?timeouts ~location ~name
    ~network_interface_ids ~resource_group_name ~vm_size ~os_profile
    ~os_profile_linux_config ~os_profile_windows_config
    ~storage_image_reference ~storage_os_disk () :
    azurerm_virtual_machine =
  {
    availability_set_id;
    delete_data_disks_on_termination;
    delete_os_disk_on_termination;
    id;
    license_type;
    location;
    name;
    network_interface_ids;
    primary_network_interface_id;
    proximity_placement_group_id;
    resource_group_name;
    tags;
    vm_size;
    zones;
    additional_capabilities;
    boot_diagnostics;
    identity;
    os_profile;
    os_profile_linux_config;
    os_profile_secrets;
    os_profile_windows_config;
    plan;
    storage_data_disk;
    storage_image_reference;
    storage_os_disk;
    timeouts;
  }

type t = {
  availability_set_id : string prop;
  delete_data_disks_on_termination : bool prop;
  delete_os_disk_on_termination : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  network_interface_ids : string list prop;
  primary_network_interface_id : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vm_size : string prop;
  zones : string list prop;
}

let make ?availability_set_id ?delete_data_disks_on_termination
    ?delete_os_disk_on_termination ?id ?license_type
    ?primary_network_interface_id ?proximity_placement_group_id ?tags
    ?zones ?(additional_capabilities = []) ?(boot_diagnostics = [])
    ?(identity = []) ?(os_profile_secrets = []) ?(plan = [])
    ?(storage_data_disk = []) ?timeouts ~location ~name
    ~network_interface_ids ~resource_group_name ~vm_size ~os_profile
    ~os_profile_linux_config ~os_profile_windows_config
    ~storage_image_reference ~storage_os_disk __id =
  let __type = "azurerm_virtual_machine" in
  let __attrs =
    ({
       availability_set_id =
         Prop.computed __type __id "availability_set_id";
       delete_data_disks_on_termination =
         Prop.computed __type __id "delete_data_disks_on_termination";
       delete_os_disk_on_termination =
         Prop.computed __type __id "delete_os_disk_on_termination";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_interface_ids =
         Prop.computed __type __id "network_interface_ids";
       primary_network_interface_id =
         Prop.computed __type __id "primary_network_interface_id";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       vm_size = Prop.computed __type __id "vm_size";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine
        (azurerm_virtual_machine ?availability_set_id
           ?delete_data_disks_on_termination
           ?delete_os_disk_on_termination ?id ?license_type
           ?primary_network_interface_id
           ?proximity_placement_group_id ?tags ?zones
           ~additional_capabilities ~boot_diagnostics ~identity
           ~os_profile_secrets ~plan ~storage_data_disk ?timeouts
           ~location ~name ~network_interface_ids
           ~resource_group_name ~vm_size ~os_profile
           ~os_profile_linux_config ~os_profile_windows_config
           ~storage_image_reference ~storage_os_disk ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_set_id
    ?delete_data_disks_on_termination ?delete_os_disk_on_termination
    ?id ?license_type ?primary_network_interface_id
    ?proximity_placement_group_id ?tags ?zones
    ?(additional_capabilities = []) ?(boot_diagnostics = [])
    ?(identity = []) ?(os_profile_secrets = []) ?(plan = [])
    ?(storage_data_disk = []) ?timeouts ~location ~name
    ~network_interface_ids ~resource_group_name ~vm_size ~os_profile
    ~os_profile_linux_config ~os_profile_windows_config
    ~storage_image_reference ~storage_os_disk __id =
  let (r : _ Tf_core.resource) =
    make ?availability_set_id ?delete_data_disks_on_termination
      ?delete_os_disk_on_termination ?id ?license_type
      ?primary_network_interface_id ?proximity_placement_group_id
      ?tags ?zones ~additional_capabilities ~boot_diagnostics
      ~identity ~os_profile_secrets ~plan ~storage_data_disk
      ?timeouts ~location ~name ~network_interface_ids
      ~resource_group_name ~vm_size ~os_profile
      ~os_profile_linux_config ~os_profile_windows_config
      ~storage_image_reference ~storage_os_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
