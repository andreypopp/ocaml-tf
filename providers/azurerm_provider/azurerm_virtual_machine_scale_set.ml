(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_machine_scale_set__boot_diagnostics = {
  enabled : bool option; [@option]  (** enabled *)
  storage_uri : string;  (** storage_uri *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__boot_diagnostics *)

type azurerm_virtual_machine_scale_set__extension = {
  auto_upgrade_minor_version : bool option; [@option]
      (** auto_upgrade_minor_version *)
  name : string;  (** name *)
  protected_settings : string option; [@option]
      (** protected_settings *)
  provision_after_extensions : string list option; [@option]
      (** provision_after_extensions *)
  publisher : string;  (** publisher *)
  settings : string option; [@option]  (** settings *)
  type_ : string; [@key "type"]  (** type *)
  type_handler_version : string;  (** type_handler_version *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__extension *)

type azurerm_virtual_machine_scale_set__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__identity *)

type azurerm_virtual_machine_scale_set__network_profile__dns_settings = {
  dns_servers : string list;  (** dns_servers *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__dns_settings *)

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration = {
  domain_name_label : string;  (** domain_name_label *)
  idle_timeout : float;  (** idle_timeout *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration *)

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration = {
  application_gateway_backend_address_pool_ids : string list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  load_balancer_inbound_nat_rules_ids : string list option; [@option]
      (** load_balancer_inbound_nat_rules_ids *)
  name : string;  (** name *)
  primary : bool;  (** primary *)
  subnet_id : string;  (** subnet_id *)
  public_ip_address_configuration :
    azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__network_profile__ip_configuration *)

type azurerm_virtual_machine_scale_set__network_profile = {
  accelerated_networking : bool option; [@option]
      (** accelerated_networking *)
  ip_forwarding : bool option; [@option]  (** ip_forwarding *)
  name : string;  (** name *)
  network_security_group_id : string option; [@option]
      (** network_security_group_id *)
  primary : bool;  (** primary *)
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
  admin_password : string option; [@option]  (** admin_password *)
  admin_username : string;  (** admin_username *)
  computer_name_prefix : string;  (** computer_name_prefix *)
  custom_data : string option; [@option]  (** custom_data *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile *)

type azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys = {
  key_data : string option; [@option]  (** key_data *)
  path : string;  (** path *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys *)

type azurerm_virtual_machine_scale_set__os_profile_linux_config = {
  disable_password_authentication : bool option; [@option]
      (** disable_password_authentication *)
  ssh_keys :
    azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_linux_config *)

type azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates = {
  certificate_store : string option; [@option]
      (** certificate_store *)
  certificate_url : string;  (** certificate_url *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates *)

type azurerm_virtual_machine_scale_set__os_profile_secrets = {
  source_vault_id : string;  (** source_vault_id *)
  vault_certificates :
    azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates
    list;
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_secrets *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config = {
  component : string;  (** component *)
  content : string;  (** content *)
  pass : string;  (** pass *)
  setting_name : string;  (** setting_name *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm = {
  certificate_url : string option; [@option]  (** certificate_url *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm *)

type azurerm_virtual_machine_scale_set__os_profile_windows_config = {
  enable_automatic_upgrades : bool option; [@option]
      (** enable_automatic_upgrades *)
  provision_vm_agent : bool option; [@option]
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
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__plan *)

type azurerm_virtual_machine_scale_set__rolling_upgrade_policy = {
  max_batch_instance_percent : float option; [@option]
      (** max_batch_instance_percent *)
  max_unhealthy_instance_percent : float option; [@option]
      (** max_unhealthy_instance_percent *)
  max_unhealthy_upgraded_instance_percent : float option; [@option]
      (** max_unhealthy_upgraded_instance_percent *)
  pause_time_between_batches : string option; [@option]
      (** pause_time_between_batches *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__rolling_upgrade_policy *)

type azurerm_virtual_machine_scale_set__sku = {
  capacity : float;  (** capacity *)
  name : string;  (** name *)
  tier : string option; [@option]  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__sku *)

type azurerm_virtual_machine_scale_set__storage_profile_data_disk = {
  caching : string option; [@option]  (** caching *)
  create_option : string;  (** create_option *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  lun : float;  (** lun *)
  managed_disk_type : string option; [@option]
      (** managed_disk_type *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_data_disk *)

type azurerm_virtual_machine_scale_set__storage_profile_image_reference = {
  id : string option; [@option]  (** id *)
  offer : string option; [@option]  (** offer *)
  publisher : string option; [@option]  (** publisher *)
  sku : string option; [@option]  (** sku *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_image_reference *)

type azurerm_virtual_machine_scale_set__storage_profile_os_disk = {
  caching : string option; [@option]  (** caching *)
  create_option : string;  (** create_option *)
  image : string option; [@option]  (** image *)
  managed_disk_type : string option; [@option]
      (** managed_disk_type *)
  name : string option; [@option]  (** name *)
  os_type : string option; [@option]  (** os_type *)
  vhd_containers : string list option; [@option]
      (** vhd_containers *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__storage_profile_os_disk *)

type azurerm_virtual_machine_scale_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_machine_scale_set__timeouts *)

type azurerm_virtual_machine_scale_set = {
  automatic_os_upgrade : bool option; [@option]
      (** automatic_os_upgrade *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  health_probe_id : string option; [@option]  (** health_probe_id *)
  id : string option; [@option]  (** id *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  name : string;  (** name *)
  overprovision : bool option; [@option]  (** overprovision *)
  priority : string option; [@option]  (** priority *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string;  (** resource_group_name *)
  single_placement_group : bool option; [@option]
      (** single_placement_group *)
  tags : (string * string) list option; [@option]  (** tags *)
  upgrade_policy_mode : string;  (** upgrade_policy_mode *)
  zones : string list option; [@option]  (** zones *)
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
