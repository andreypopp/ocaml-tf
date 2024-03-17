(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_scale_set__boot_diagnostics = {
  enabled : bool prop option; [@option]  (** enabled *)
  storage_uri : string prop;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__boot_diagnostics *)

type azurerm_virtual_machine_scale_set__extension = {
  auto_upgrade_minor_version : bool prop option; [@option]
      (** auto_upgrade_minor_version *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  provision_after_extensions : string prop list option; [@option]
      (** provision_after_extensions *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__extension *)

type azurerm_virtual_machine_scale_set__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__identity *)

type azurerm_virtual_machine_scale_set__network_profile__dns_settings = {
  dns_servers : string prop list;  (** dns_servers *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__dns_settings *)

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration = {
  domain_name_label : string prop;  (** domain_name_label *)
  idle_timeout : float prop;  (** idle_timeout *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration *)

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration = {
  application_gateway_backend_address_pool_ids :
    string prop list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string prop list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string prop list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string prop list option;
      [@option]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string prop;  (** name *)
  primary : bool prop;  (** primary *)
  subnet_id : string prop;  (** subnet_id *)
  public_ip_address_configuration :
    azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__ip_configuration *)

type azurerm_virtual_machine_scale_set__network_profile = {
  accelerated_networking : bool prop option; [@option]
      (** accelerated_networking *)
  ip_forwarding : bool prop option; [@option]  (** ip_forwarding *)
  name : string prop;  (** name *)
  network_security_group_id : string prop option; [@option]
      (** network_security_group_id *)
  primary : bool prop;  (** primary *)
  dns_settings :
    azurerm_virtual_machine_scale_set__network_profile__dns_settings
    list;
  ip_configuration :
    azurerm_virtual_machine_scale_set__network_profile__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile *)

type azurerm_virtual_machine_scale_set__os_profile = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name_prefix : string prop;  (** computer_name_prefix *)
  custom_data : string prop option; [@option]  (** custom_data *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile *)

type azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys = {
  key_data : string prop option; [@option]  (** key_data *)
  path : string prop;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys *)

type azurerm_virtual_machine_scale_set__os_profile_linux_config = {
  disable_password_authentication : bool prop option; [@option]
      (** disable_password_authentication *)
  ssh_keys :
    azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_linux_config *)

type azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates = {
  certificate_store : string prop option; [@option]
      (** certificate_store *)
  certificate_url : string prop;  (** certificate_url *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates *)

type azurerm_virtual_machine_scale_set__os_profile_secrets = {
  source_vault_id : string prop;  (** source_vault_id *)
  vault_certificates :
    azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_secrets *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config = {
  component : string prop;  (** component *)
  content : string prop;  (** content *)
  pass : string prop;  (** pass *)
  setting_name : string prop;  (** setting_name *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm = {
  certificate_url : string prop option; [@option]
      (** certificate_url *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config = {
  enable_automatic_upgrades : bool prop option; [@option]
      (** enable_automatic_upgrades *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  additional_unattend_config :
    azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config
    list;
  winrm :
    azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_windows_config *)

type azurerm_virtual_machine_scale_set__plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__plan *)

type azurerm_virtual_machine_scale_set__rolling_upgrade_policy = {
  max_batch_instance_percent : float prop option; [@option]
      (** max_batch_instance_percent *)
  max_unhealthy_instance_percent : float prop option; [@option]
      (** max_unhealthy_instance_percent *)
  max_unhealthy_upgraded_instance_percent : float prop option;
      [@option]
      (** max_unhealthy_upgraded_instance_percent *)
  pause_time_between_batches : string prop option; [@option]
      (** pause_time_between_batches *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__rolling_upgrade_policy *)

type azurerm_virtual_machine_scale_set__sku = {
  capacity : float prop;  (** capacity *)
  name : string prop;  (** name *)
  tier : string prop option; [@option]  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__sku *)

type azurerm_virtual_machine_scale_set__storage_profile_data_disk = {
  caching : string prop option; [@option]  (** caching *)
  create_option : string prop;  (** create_option *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  lun : float prop;  (** lun *)
  managed_disk_type : string prop option; [@option]
      (** managed_disk_type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_data_disk *)

type azurerm_virtual_machine_scale_set__storage_profile_image_reference = {
  id : string prop option; [@option]  (** id *)
  offer : string prop option; [@option]  (** offer *)
  publisher : string prop option; [@option]  (** publisher *)
  sku : string prop option; [@option]  (** sku *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_image_reference *)

type azurerm_virtual_machine_scale_set__storage_profile_os_disk = {
  caching : string prop option; [@option]  (** caching *)
  create_option : string prop;  (** create_option *)
  image : string prop option; [@option]  (** image *)
  managed_disk_type : string prop option; [@option]
      (** managed_disk_type *)
  name : string prop option; [@option]  (** name *)
  os_type : string prop option; [@option]  (** os_type *)
  vhd_containers : string prop list option; [@option]
      (** vhd_containers *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_os_disk *)

type azurerm_virtual_machine_scale_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__timeouts *)

type azurerm_virtual_machine_scale_set = {
  automatic_os_upgrade : bool prop option; [@option]
      (** automatic_os_upgrade *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  health_probe_id : string prop option; [@option]
      (** health_probe_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  overprovision : bool prop option; [@option]  (** overprovision *)
  priority : string prop option; [@option]  (** priority *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  single_placement_group : bool prop option; [@option]
      (** single_placement_group *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  upgrade_policy_mode : string prop;  (** upgrade_policy_mode *)
  zones : string prop list option; [@option]  (** zones *)
  boot_diagnostics :
    azurerm_virtual_machine_scale_set__boot_diagnostics list;
  extension : azurerm_virtual_machine_scale_set__extension list;
  identity : azurerm_virtual_machine_scale_set__identity list;
  network_profile :
    azurerm_virtual_machine_scale_set__network_profile list;
  os_profile : azurerm_virtual_machine_scale_set__os_profile list;
  os_profile_linux_config :
    azurerm_virtual_machine_scale_set__os_profile_linux_config list;
  os_profile_secrets :
    azurerm_virtual_machine_scale_set__os_profile_secrets list;
  os_profile_windows_config :
    azurerm_virtual_machine_scale_set__os_profile_windows_config list;
  plan : azurerm_virtual_machine_scale_set__plan list;
  rolling_upgrade_policy :
    azurerm_virtual_machine_scale_set__rolling_upgrade_policy list;
  sku : azurerm_virtual_machine_scale_set__sku list;
  storage_profile_data_disk :
    azurerm_virtual_machine_scale_set__storage_profile_data_disk list;
  storage_profile_image_reference :
    azurerm_virtual_machine_scale_set__storage_profile_image_reference
    list;
  storage_profile_os_disk :
    azurerm_virtual_machine_scale_set__storage_profile_os_disk list;
  timeouts : azurerm_virtual_machine_scale_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set *)

let azurerm_virtual_machine_scale_set ?automatic_os_upgrade
    ?eviction_policy ?health_probe_id ?id ?license_type
    ?overprovision ?priority ?proximity_placement_group_id
    ?single_placement_group ?tags ?zones ?timeouts ~location ~name
    ~resource_group_name ~upgrade_policy_mode ~boot_diagnostics
    ~extension ~identity ~network_profile ~os_profile
    ~os_profile_linux_config ~os_profile_secrets
    ~os_profile_windows_config ~plan ~rolling_upgrade_policy ~sku
    ~storage_profile_data_disk ~storage_profile_image_reference
    ~storage_profile_os_disk __resource_id =
  let __resource_type = "azurerm_virtual_machine_scale_set" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_machine_scale_set __resource);
  ()
