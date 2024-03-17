(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities = {
  ultra_ssd_enabled : bool option; [@option]  (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities *)

type azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair = {
  enabled : bool;  (** enabled *)
  grace_period : string option; [@option]  (** grace_period *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair *)

type azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics = {
  storage_account_uri : string option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics *)

type azurerm_orchestrated_virtual_machine_scale_set__data_disk = {
  caching : string;  (** caching *)
  create_option : string option; [@option]  (** create_option *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  lun : float option; [@option]  (** lun *)
  storage_account_type : string;  (** storage_account_type *)
  ultra_ssd_disk_iops_read_write : float option; [@option]
      (** ultra_ssd_disk_iops_read_write *)
  ultra_ssd_disk_mbps_read_write : float option; [@option]
      (** ultra_ssd_disk_mbps_read_write *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__data_disk *)

type azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault = {
  secret_url : string;  (** secret_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault *)

type azurerm_orchestrated_virtual_machine_scale_set__extension = {
  auto_upgrade_minor_version_enabled : bool option; [@option]
      (** auto_upgrade_minor_version_enabled *)
  extensions_to_provision_after_vm_creation : string list option;
      [@option]
      (** extensions_to_provision_after_vm_creation *)
  failure_suppression_enabled : bool option; [@option]
      (** failure_suppression_enabled *)
  force_extension_execution_on_change : string option; [@option]
      (** force_extension_execution_on_change *)
  name : string;  (** name *)
  protected_settings : string option; [@option]
      (** protected_settings *)
  publisher : string;  (** publisher *)
  settings : string option; [@option]  (** settings *)
  type_ : string; [@key "type"]  (** type *)
  type_handler_version : string;  (** type_handler_version *)
  protected_settings_from_key_vault :
    azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__extension *)

type azurerm_orchestrated_virtual_machine_scale_set__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__identity *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string;  (** tag *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string option; [@option]
      (** domain_name_label *)
  idle_timeout_in_minutes : float option; [@option]
      (** idle_timeout_in_minutes *)
  name : string;  (** name *)
  public_ip_prefix_id : string option; [@option]
      (** public_ip_prefix_id *)
  sku_name : string option; [@option]  (** sku_name *)
  version : string option; [@option]  (** version *)
  ip_tag :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids : string list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  name : string;  (** name *)
  primary : bool option; [@option]  (** primary *)
  subnet_id : string option; [@option]  (** subnet_id *)
  version : string option; [@option]  (** version *)
  public_ip_address :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface = {
  dns_servers : string list option; [@option]  (** dns_servers *)
  enable_accelerated_networking : bool option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool option; [@option]
      (** enable_ip_forwarding *)
  name : string;  (** name *)
  network_security_group_id : string option; [@option]
      (** network_security_group_id *)
  primary : bool option; [@option]  (** primary *)
  ip_configuration :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface *)

type azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings = {
  option : string;  (** option *)
  placement : string option; [@option]  (** placement *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings *)

type azurerm_orchestrated_virtual_machine_scale_set__os_disk = {
  caching : string;  (** caching *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  storage_account_type : string;  (** storage_account_type *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings :
    azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_disk *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key = {
  public_key : string;  (** public_key *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate = {
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret = {
  key_vault_id : string;  (** key_vault_id *)
  certificate :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration = {
  admin_password : string option; [@option]  (** admin_password *)
  admin_username : string;  (** admin_username *)
  computer_name_prefix : string option; [@option]
      (** computer_name_prefix *)
  disable_password_authentication : bool option; [@option]
      (** disable_password_authentication *)
  patch_assessment_mode : string option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string option; [@option]  (** patch_mode *)
  provision_vm_agent : bool option; [@option]
      (** provision_vm_agent *)
  admin_ssh_key :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key
    list;
  secret :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__additional_unattend_content = {
  content : string;  (** content *)
  setting : string;  (** setting *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__additional_unattend_content *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate = {
  store : string;  (** store *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret = {
  key_vault_id : string;  (** key_vault_id *)
  certificate :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener = {
  certificate_url : string option; [@option]  (** certificate_url *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration = {
  admin_password : string;  (** admin_password *)
  admin_username : string;  (** admin_username *)
  computer_name_prefix : string option; [@option]
      (** computer_name_prefix *)
  enable_automatic_updates : bool option; [@option]
      (** enable_automatic_updates *)
  hotpatching_enabled : bool option; [@option]
      (** hotpatching_enabled *)
  patch_assessment_mode : string option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string option; [@option]  (** patch_mode *)
  provision_vm_agent : bool option; [@option]
      (** provision_vm_agent *)
  timezone : string option; [@option]  (** timezone *)
  additional_unattend_content :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__additional_unattend_content
    list;
  secret :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret
    list;
  winrm_listener :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile = {
  custom_data : string option; [@option]  (** custom_data *)
  linux_configuration :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration
    list;
  windows_configuration :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile *)

type azurerm_orchestrated_virtual_machine_scale_set__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__plan *)

type azurerm_orchestrated_virtual_machine_scale_set__priority_mix = {
  base_regular_count : float option; [@option]
      (** base_regular_count *)
  regular_percentage_above_base : float option; [@option]
      (** regular_percentage_above_base *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__priority_mix *)

type azurerm_orchestrated_virtual_machine_scale_set__source_image_reference = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__source_image_reference *)

type azurerm_orchestrated_virtual_machine_scale_set__termination_notification = {
  enabled : bool;  (** enabled *)
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__termination_notification *)

type azurerm_orchestrated_virtual_machine_scale_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__timeouts *)

type azurerm_orchestrated_virtual_machine_scale_set = {
  capacity_reservation_group_id : string option; [@option]
      (** capacity_reservation_group_id *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  extension_operations_enabled : bool option; [@option]
      (** extension_operations_enabled *)
  extensions_time_budget : string option; [@option]
      (** extensions_time_budget *)
  id : string option; [@option]  (** id *)
  instances : float option; [@option]  (** instances *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  max_bid_price : float option; [@option]  (** max_bid_price *)
  name : string;  (** name *)
  platform_fault_domain_count : float;
      (** platform_fault_domain_count *)
  priority : string option; [@option]  (** priority *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string;  (** resource_group_name *)
  single_placement_group : bool option; [@option]
      (** single_placement_group *)
  sku_name : string option; [@option]  (** sku_name *)
  source_image_id : string option; [@option]  (** source_image_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_data_base64 : string option; [@option]
      (** user_data_base64 *)
  zone_balance : bool option; [@option]  (** zone_balance *)
  zones : string list option; [@option]  (** zones *)
  additional_capabilities :
    azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities
    list;
  automatic_instance_repair :
    azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair
    list;
  boot_diagnostics :
    azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics
    list;
  data_disk :
    azurerm_orchestrated_virtual_machine_scale_set__data_disk list;
  extension :
    azurerm_orchestrated_virtual_machine_scale_set__extension list;
  identity :
    azurerm_orchestrated_virtual_machine_scale_set__identity list;
  network_interface :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface
    list;
  os_disk :
    azurerm_orchestrated_virtual_machine_scale_set__os_disk list;
  os_profile :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile list;
  plan : azurerm_orchestrated_virtual_machine_scale_set__plan list;
  priority_mix :
    azurerm_orchestrated_virtual_machine_scale_set__priority_mix list;
  source_image_reference :
    azurerm_orchestrated_virtual_machine_scale_set__source_image_reference
    list;
  termination_notification :
    azurerm_orchestrated_virtual_machine_scale_set__termination_notification
    list;
  timeouts :
    azurerm_orchestrated_virtual_machine_scale_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set *)

let azurerm_orchestrated_virtual_machine_scale_set
    ?capacity_reservation_group_id ?encryption_at_host_enabled
    ?eviction_policy ?extension_operations_enabled
    ?extensions_time_budget ?id ?instances ?license_type
    ?max_bid_price ?priority ?proximity_placement_group_id
    ?single_placement_group ?sku_name ?source_image_id ?tags
    ?user_data_base64 ?zone_balance ?zones ?timeouts ~location ~name
    ~platform_fault_domain_count ~resource_group_name
    ~additional_capabilities ~automatic_instance_repair
    ~boot_diagnostics ~data_disk ~extension ~identity
    ~network_interface ~os_disk ~os_profile ~plan ~priority_mix
    ~source_image_reference ~termination_notification __resource_id =
  let __resource_type =
    "azurerm_orchestrated_virtual_machine_scale_set"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orchestrated_virtual_machine_scale_set
       __resource);
  ()
