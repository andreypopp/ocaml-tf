(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type boot_diagnostics = {
  enabled : bool prop option; [@option]
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : boot_diagnostics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_boot_diagnostics

[@@@deriving.end]

type extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
  name : string prop;
  protected_settings : string prop option; [@option]
  provision_after_extensions : string prop list option; [@option]
  publisher : string prop;
  settings : string prop option; [@option]
  type_ : string prop; [@key "type"]
  type_handler_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension) -> ()

let yojson_of_extension =
  (function
   | {
       auto_upgrade_minor_version = v_auto_upgrade_minor_version;
       name = v_name;
       protected_settings = v_protected_settings;
       provision_after_extensions = v_provision_after_extensions;
       publisher = v_publisher;
       settings = v_settings;
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

type network_profile__dns_settings = {
  dns_servers : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__dns_settings) -> ()

let yojson_of_network_profile__dns_settings =
  (function
   | { dns_servers = v_dns_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_dns_servers
         in
         ("dns_servers", arg) :: bnds
       in
       `Assoc bnds
    : network_profile__dns_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__dns_settings

[@@@deriving.end]

type network_profile__ip_configuration__public_ip_address_configuration = {
  domain_name_label : string prop;
  idle_timeout : float prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       network_profile__ip_configuration__public_ip_address_configuration) ->
  ()

let yojson_of_network_profile__ip_configuration__public_ip_address_configuration
    =
  (function
   | {
       domain_name_label = v_domain_name_label;
       idle_timeout = v_idle_timeout;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_idle_timeout in
         ("idle_timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_name_label
         in
         ("domain_name_label", arg) :: bnds
       in
       `Assoc bnds
    : network_profile__ip_configuration__public_ip_address_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_network_profile__ip_configuration__public_ip_address_configuration

[@@@deriving.end]

type network_profile__ip_configuration = {
  application_gateway_backend_address_pool_ids :
    string prop list option;
      [@option]
  application_security_group_ids : string prop list option; [@option]
  load_balancer_backend_address_pool_ids : string prop list option;
      [@option]
  load_balancer_inbound_nat_rules_ids : string prop list option;
      [@option]
  name : string prop;
  primary : bool prop;
  subnet_id : string prop;
  public_ip_address_configuration :
    network_profile__ip_configuration__public_ip_address_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile__ip_configuration) -> ()

let yojson_of_network_profile__ip_configuration =
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
       public_ip_address_configuration =
         v_public_ip_address_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_network_profile__ip_configuration__public_ip_address_configuration
             v_public_ip_address_configuration
         in
         ("public_ip_address_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
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
    : network_profile__ip_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile__ip_configuration

[@@@deriving.end]

type network_profile = {
  accelerated_networking : bool prop option; [@option]
  ip_forwarding : bool prop option; [@option]
  name : string prop;
  network_security_group_id : string prop option; [@option]
  primary : bool prop;
  dns_settings : network_profile__dns_settings list;
  ip_configuration : network_profile__ip_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_profile) -> ()

let yojson_of_network_profile =
  (function
   | {
       accelerated_networking = v_accelerated_networking;
       ip_forwarding = v_ip_forwarding;
       name = v_name;
       network_security_group_id = v_network_security_group_id;
       primary = v_primary;
       dns_settings = v_dns_settings;
       ip_configuration = v_ip_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_profile__ip_configuration
             v_ip_configuration
         in
         ("ip_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_network_profile__dns_settings
             v_dns_settings
         in
         ("dns_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_primary in
         ("primary", arg) :: bnds
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
         match v_ip_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_forwarding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerated_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "accelerated_networking", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_profile

[@@@deriving.end]

type os_profile = {
  admin_password : string prop option; [@option]
  admin_username : string prop;
  computer_name_prefix : string prop;
  custom_data : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : os_profile) -> ()

let yojson_of_os_profile =
  (function
   | {
       admin_password = v_admin_password;
       admin_username = v_admin_username;
       computer_name_prefix = v_computer_name_prefix;
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
         let arg =
           yojson_of_prop yojson_of_string v_computer_name_prefix
         in
         ("computer_name_prefix", arg) :: bnds
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
  key_data : string prop option; [@option]
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
         match v_key_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : os_profile_linux_config__ssh_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_os_profile_linux_config__ssh_keys

[@@@deriving.end]

type os_profile_linux_config = {
  disable_password_authentication : bool prop option; [@option]
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
         match v_disable_password_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_password_authentication", arg in
             bnd :: bnds
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

type rolling_upgrade_policy = {
  max_batch_instance_percent : float prop option; [@option]
  max_unhealthy_instance_percent : float prop option; [@option]
  max_unhealthy_upgraded_instance_percent : float prop option;
      [@option]
  pause_time_between_batches : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rolling_upgrade_policy) -> ()

let yojson_of_rolling_upgrade_policy =
  (function
   | {
       max_batch_instance_percent = v_max_batch_instance_percent;
       max_unhealthy_instance_percent =
         v_max_unhealthy_instance_percent;
       max_unhealthy_upgraded_instance_percent =
         v_max_unhealthy_upgraded_instance_percent;
       pause_time_between_batches = v_pause_time_between_batches;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pause_time_between_batches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pause_time_between_batches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_unhealthy_upgraded_instance_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "max_unhealthy_upgraded_instance_percent", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_max_unhealthy_instance_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_unhealthy_instance_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_batch_instance_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_batch_instance_percent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rolling_upgrade_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rolling_upgrade_policy

[@@@deriving.end]

type sku = {
  capacity : float prop;
  name : string prop;
  tier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sku) -> ()

let yojson_of_sku =
  (function
   | { capacity = v_capacity; name = v_name; tier = v_tier } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : sku -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sku

[@@@deriving.end]

type storage_profile_data_disk = {
  caching : string prop option; [@option]
  create_option : string prop;
  disk_size_gb : float prop option; [@option]
  lun : float prop;
  managed_disk_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile_data_disk) -> ()

let yojson_of_storage_profile_data_disk =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       disk_size_gb = v_disk_size_gb;
       lun = v_lun;
       managed_disk_type = v_managed_disk_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : storage_profile_data_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile_data_disk

[@@@deriving.end]

type storage_profile_image_reference = {
  id : string prop option; [@option]
  offer : string prop option; [@option]
  publisher : string prop option; [@option]
  sku : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile_image_reference) -> ()

let yojson_of_storage_profile_image_reference =
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
    : storage_profile_image_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile_image_reference

[@@@deriving.end]

type storage_profile_os_disk = {
  caching : string prop option; [@option]
  create_option : string prop;
  image : string prop option; [@option]
  managed_disk_type : string prop option; [@option]
  name : string prop option; [@option]
  os_type : string prop option; [@option]
  vhd_containers : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_profile_os_disk) -> ()

let yojson_of_storage_profile_os_disk =
  (function
   | {
       caching = v_caching;
       create_option = v_create_option;
       image = v_image;
       managed_disk_type = v_managed_disk_type;
       name = v_name;
       os_type = v_os_type;
       vhd_containers = v_vhd_containers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vhd_containers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vhd_containers", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
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
    : storage_profile_os_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_profile_os_disk

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

type azurerm_virtual_machine_scale_set = {
  automatic_os_upgrade : bool prop option; [@option]
  eviction_policy : string prop option; [@option]
  health_probe_id : string prop option; [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  location : string prop;
  name : string prop;
  overprovision : bool prop option; [@option]
  priority : string prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  resource_group_name : string prop;
  single_placement_group : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  upgrade_policy_mode : string prop;
  zones : string prop list option; [@option]
  boot_diagnostics : boot_diagnostics list;
  extension : extension list;
  identity : identity list;
  network_profile : network_profile list;
  os_profile : os_profile list;
  os_profile_linux_config : os_profile_linux_config list;
  os_profile_secrets : os_profile_secrets list;
  os_profile_windows_config : os_profile_windows_config list;
  plan : plan list;
  rolling_upgrade_policy : rolling_upgrade_policy list;
  sku : sku list;
  storage_profile_data_disk : storage_profile_data_disk list;
  storage_profile_image_reference :
    storage_profile_image_reference list;
  storage_profile_os_disk : storage_profile_os_disk list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_virtual_machine_scale_set) -> ()

let yojson_of_azurerm_virtual_machine_scale_set =
  (function
   | {
       automatic_os_upgrade = v_automatic_os_upgrade;
       eviction_policy = v_eviction_policy;
       health_probe_id = v_health_probe_id;
       id = v_id;
       license_type = v_license_type;
       location = v_location;
       name = v_name;
       overprovision = v_overprovision;
       priority = v_priority;
       proximity_placement_group_id = v_proximity_placement_group_id;
       resource_group_name = v_resource_group_name;
       single_placement_group = v_single_placement_group;
       tags = v_tags;
       upgrade_policy_mode = v_upgrade_policy_mode;
       zones = v_zones;
       boot_diagnostics = v_boot_diagnostics;
       extension = v_extension;
       identity = v_identity;
       network_profile = v_network_profile;
       os_profile = v_os_profile;
       os_profile_linux_config = v_os_profile_linux_config;
       os_profile_secrets = v_os_profile_secrets;
       os_profile_windows_config = v_os_profile_windows_config;
       plan = v_plan;
       rolling_upgrade_policy = v_rolling_upgrade_policy;
       sku = v_sku;
       storage_profile_data_disk = v_storage_profile_data_disk;
       storage_profile_image_reference =
         v_storage_profile_image_reference;
       storage_profile_os_disk = v_storage_profile_os_disk;
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
           yojson_of_list yojson_of_storage_profile_os_disk
             v_storage_profile_os_disk
         in
         ("storage_profile_os_disk", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_profile_image_reference
             v_storage_profile_image_reference
         in
         ("storage_profile_image_reference", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_profile_data_disk
             v_storage_profile_data_disk
         in
         ("storage_profile_data_disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sku v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rolling_upgrade_policy
             v_rolling_upgrade_policy
         in
         ("rolling_upgrade_policy", arg) :: bnds
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
         let arg =
           yojson_of_list yojson_of_network_profile v_network_profile
         in
         ("network_profile", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_identity v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_extension v_extension in
         ("extension", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_boot_diagnostics
             v_boot_diagnostics
         in
         ("boot_diagnostics", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_upgrade_policy_mode
         in
         ("upgrade_policy_mode", arg) :: bnds
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
         match v_health_probe_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_probe_id", arg in
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
         match v_automatic_os_upgrade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_os_upgrade", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_machine_scale_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_machine_scale_set

[@@@deriving.end]

let boot_diagnostics ?enabled ~storage_uri () : boot_diagnostics =
  { enabled; storage_uri }

let extension ?auto_upgrade_minor_version ?protected_settings
    ?provision_after_extensions ?settings ~name ~publisher ~type_
    ~type_handler_version () : extension =
  {
    auto_upgrade_minor_version;
    name;
    protected_settings;
    provision_after_extensions;
    publisher;
    settings;
    type_;
    type_handler_version;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_profile__dns_settings ~dns_servers () :
    network_profile__dns_settings =
  { dns_servers }

let network_profile__ip_configuration__public_ip_address_configuration
    ~domain_name_label ~idle_timeout ~name () :
    network_profile__ip_configuration__public_ip_address_configuration
    =
  { domain_name_label; idle_timeout; name }

let network_profile__ip_configuration
    ?application_gateway_backend_address_pool_ids
    ?application_security_group_ids
    ?load_balancer_backend_address_pool_ids
    ?load_balancer_inbound_nat_rules_ids
    ?(public_ip_address_configuration = []) ~name ~primary ~subnet_id
    () : network_profile__ip_configuration =
  {
    application_gateway_backend_address_pool_ids;
    application_security_group_ids;
    load_balancer_backend_address_pool_ids;
    load_balancer_inbound_nat_rules_ids;
    name;
    primary;
    subnet_id;
    public_ip_address_configuration;
  }

let network_profile ?accelerated_networking ?ip_forwarding
    ?network_security_group_id ?(dns_settings = []) ~name ~primary
    ~ip_configuration () : network_profile =
  {
    accelerated_networking;
    ip_forwarding;
    name;
    network_security_group_id;
    primary;
    dns_settings;
    ip_configuration;
  }

let os_profile ?admin_password ?custom_data ~admin_username
    ~computer_name_prefix () : os_profile =
  {
    admin_password;
    admin_username;
    computer_name_prefix;
    custom_data;
  }

let os_profile_linux_config__ssh_keys ?key_data ~path () :
    os_profile_linux_config__ssh_keys =
  { key_data; path }

let os_profile_linux_config ?disable_password_authentication
    ?(ssh_keys = []) () : os_profile_linux_config =
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
    ?provision_vm_agent ?(additional_unattend_config = [])
    ?(winrm = []) () : os_profile_windows_config =
  {
    enable_automatic_upgrades;
    provision_vm_agent;
    additional_unattend_config;
    winrm;
  }

let plan ~name ~product ~publisher () : plan =
  { name; product; publisher }

let rolling_upgrade_policy ?max_batch_instance_percent
    ?max_unhealthy_instance_percent
    ?max_unhealthy_upgraded_instance_percent
    ?pause_time_between_batches () : rolling_upgrade_policy =
  {
    max_batch_instance_percent;
    max_unhealthy_instance_percent;
    max_unhealthy_upgraded_instance_percent;
    pause_time_between_batches;
  }

let sku ?tier ~capacity ~name () : sku = { capacity; name; tier }

let storage_profile_data_disk ?caching ?disk_size_gb
    ?managed_disk_type ~create_option ~lun () :
    storage_profile_data_disk =
  { caching; create_option; disk_size_gb; lun; managed_disk_type }

let storage_profile_image_reference ?id ?offer ?publisher ?sku
    ?version () : storage_profile_image_reference =
  { id; offer; publisher; sku; version }

let storage_profile_os_disk ?caching ?image ?managed_disk_type ?name
    ?os_type ?vhd_containers ~create_option () :
    storage_profile_os_disk =
  {
    caching;
    create_option;
    image;
    managed_disk_type;
    name;
    os_type;
    vhd_containers;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_machine_scale_set ?automatic_os_upgrade
    ?eviction_policy ?health_probe_id ?id ?license_type
    ?overprovision ?priority ?proximity_placement_group_id
    ?single_placement_group ?tags ?zones ?(boot_diagnostics = [])
    ?(identity = []) ?(rolling_upgrade_policy = [])
    ?(storage_profile_data_disk = []) ?timeouts ~location ~name
    ~resource_group_name ~upgrade_policy_mode ~extension
    ~network_profile ~os_profile ~os_profile_linux_config
    ~os_profile_secrets ~os_profile_windows_config ~plan ~sku
    ~storage_profile_image_reference ~storage_profile_os_disk () :
    azurerm_virtual_machine_scale_set =
  {
    automatic_os_upgrade;
    eviction_policy;
    health_probe_id;
    id;
    license_type;
    location;
    name;
    overprovision;
    priority;
    proximity_placement_group_id;
    resource_group_name;
    single_placement_group;
    tags;
    upgrade_policy_mode;
    zones;
    boot_diagnostics;
    extension;
    identity;
    network_profile;
    os_profile;
    os_profile_linux_config;
    os_profile_secrets;
    os_profile_windows_config;
    plan;
    rolling_upgrade_policy;
    sku;
    storage_profile_data_disk;
    storage_profile_image_reference;
    storage_profile_os_disk;
    timeouts;
  }

type t = {
  automatic_os_upgrade : bool prop;
  eviction_policy : string prop;
  health_probe_id : string prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  overprovision : bool prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  single_placement_group : bool prop;
  tags : (string * string) list prop;
  upgrade_policy_mode : string prop;
  zones : string list prop;
}

let make ?automatic_os_upgrade ?eviction_policy ?health_probe_id ?id
    ?license_type ?overprovision ?priority
    ?proximity_placement_group_id ?single_placement_group ?tags
    ?zones ?(boot_diagnostics = []) ?(identity = [])
    ?(rolling_upgrade_policy = []) ?(storage_profile_data_disk = [])
    ?timeouts ~location ~name ~resource_group_name
    ~upgrade_policy_mode ~extension ~network_profile ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~sku
    ~storage_profile_image_reference ~storage_profile_os_disk __id =
  let __type = "azurerm_virtual_machine_scale_set" in
  let __attrs =
    ({
       automatic_os_upgrade =
         Prop.computed __type __id "automatic_os_upgrade";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       health_probe_id = Prop.computed __type __id "health_probe_id";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       overprovision = Prop.computed __type __id "overprovision";
       priority = Prop.computed __type __id "priority";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       single_placement_group =
         Prop.computed __type __id "single_placement_group";
       tags = Prop.computed __type __id "tags";
       upgrade_policy_mode =
         Prop.computed __type __id "upgrade_policy_mode";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_machine_scale_set
        (azurerm_virtual_machine_scale_set ?automatic_os_upgrade
           ?eviction_policy ?health_probe_id ?id ?license_type
           ?overprovision ?priority ?proximity_placement_group_id
           ?single_placement_group ?tags ?zones ~boot_diagnostics
           ~identity ~rolling_upgrade_policy
           ~storage_profile_data_disk ?timeouts ~location ~name
           ~resource_group_name ~upgrade_policy_mode ~extension
           ~network_profile ~os_profile ~os_profile_linux_config
           ~os_profile_secrets ~os_profile_windows_config ~plan ~sku
           ~storage_profile_image_reference ~storage_profile_os_disk
           ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic_os_upgrade ?eviction_policy
    ?health_probe_id ?id ?license_type ?overprovision ?priority
    ?proximity_placement_group_id ?single_placement_group ?tags
    ?zones ?(boot_diagnostics = []) ?(identity = [])
    ?(rolling_upgrade_policy = []) ?(storage_profile_data_disk = [])
    ?timeouts ~location ~name ~resource_group_name
    ~upgrade_policy_mode ~extension ~network_profile ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~sku
    ~storage_profile_image_reference ~storage_profile_os_disk __id =
  let (r : _ Tf_core.resource) =
    make ?automatic_os_upgrade ?eviction_policy ?health_probe_id ?id
      ?license_type ?overprovision ?priority
      ?proximity_placement_group_id ?single_placement_group ?tags
      ?zones ~boot_diagnostics ~identity ~rolling_upgrade_policy
      ~storage_profile_data_disk ?timeouts ~location ~name
      ~resource_group_name ~upgrade_policy_mode ~extension
      ~network_profile ~os_profile ~os_profile_linux_config
      ~os_profile_secrets ~os_profile_windows_config ~plan ~sku
      ~storage_profile_image_reference ~storage_profile_os_disk __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
