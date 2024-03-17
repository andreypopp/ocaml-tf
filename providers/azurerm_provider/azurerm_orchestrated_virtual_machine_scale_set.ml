(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities = {
  ultra_ssd_enabled : bool prop option; [@option]
      (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities *)

type azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair = {
  enabled : bool prop;  (** enabled *)
  grace_period : string prop option; [@option]  (** grace_period *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair *)

type azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics = {
  storage_account_uri : string prop option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics *)

type azurerm_orchestrated_virtual_machine_scale_set__data_disk = {
  caching : string prop;  (** caching *)
  create_option : string prop option; [@option]  (** create_option *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  lun : float prop option; [@option]  (** lun *)
  storage_account_type : string prop;  (** storage_account_type *)
  ultra_ssd_disk_iops_read_write : float prop option; [@option]
      (** ultra_ssd_disk_iops_read_write *)
  ultra_ssd_disk_mbps_read_write : float prop option; [@option]
      (** ultra_ssd_disk_mbps_read_write *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__data_disk *)

type azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault *)

type azurerm_orchestrated_virtual_machine_scale_set__extension = {
  auto_upgrade_minor_version_enabled : bool prop option; [@option]
      (** auto_upgrade_minor_version_enabled *)
  extensions_to_provision_after_vm_creation :
    string prop list option;
      [@option]
      (** extensions_to_provision_after_vm_creation *)
  failure_suppression_enabled : bool prop option; [@option]
      (** failure_suppression_enabled *)
  force_extension_execution_on_change : string prop option; [@option]
      (** force_extension_execution_on_change *)
  name : string prop;  (** name *)
  protected_settings : string prop option; [@option]
      (** protected_settings *)
  publisher : string prop;  (** publisher *)
  settings : string prop option; [@option]  (** settings *)
  type_ : string prop; [@key "type"]  (** type *)
  type_handler_version : string prop;  (** type_handler_version *)
  protected_settings_from_key_vault :
    azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__extension *)

type azurerm_orchestrated_virtual_machine_scale_set__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__identity *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag = {
  tag : string prop;  (** tag *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address = {
  domain_name_label : string prop option; [@option]
      (** domain_name_label *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  sku_name : string prop option; [@option]  (** sku_name *)
  version : string prop option; [@option]  (** version *)
  ip_tag :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration = {
  application_gateway_backend_address_pool_ids :
    string prop list option;
      [@option]
      (** application_gateway_backend_address_pool_ids *)
  application_security_group_ids : string prop list option; [@option]
      (** application_security_group_ids *)
  load_balancer_backend_address_pool_ids : string prop list option;
      [@option]
      (** load_balancer_backend_address_pool_ids *)
  name : string prop;  (** name *)
  primary : bool prop option; [@option]  (** primary *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  version : string prop option; [@option]  (** version *)
  public_ip_address :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration *)

type azurerm_orchestrated_virtual_machine_scale_set__network_interface = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  enable_accelerated_networking : bool prop option; [@option]
      (** enable_accelerated_networking *)
  enable_ip_forwarding : bool prop option; [@option]
      (** enable_ip_forwarding *)
  name : string prop;  (** name *)
  network_security_group_id : string prop option; [@option]
      (** network_security_group_id *)
  primary : bool prop option; [@option]  (** primary *)
  ip_configuration :
    azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__network_interface *)

type azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings = {
  option : string prop;  (** option *)
  placement : string prop option; [@option]  (** placement *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings *)

type azurerm_orchestrated_virtual_machine_scale_set__os_disk = {
  caching : string prop;  (** caching *)
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  storage_account_type : string prop;  (** storage_account_type *)
  write_accelerator_enabled : bool prop option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings :
    azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_disk *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key = {
  public_key : string prop;  (** public_key *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate = {
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret = {
  key_vault_id : string prop;  (** key_vault_id *)
  certificate :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name_prefix : string prop option; [@option]
      (** computer_name_prefix *)
  disable_password_authentication : bool prop option; [@option]
      (** disable_password_authentication *)
  patch_assessment_mode : string prop option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string prop option; [@option]  (** patch_mode *)
  provision_vm_agent : bool prop option; [@option]
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
  content : string prop;  (** content *)
  setting : string prop;  (** setting *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__additional_unattend_content *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate = {
  store : string prop;  (** store *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret = {
  key_vault_id : string prop;  (** key_vault_id *)
  certificate :
    azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener = {
  certificate_url : string prop option; [@option]
      (** certificate_url *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener *)

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration = {
  admin_password : string prop;  (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  computer_name_prefix : string prop option; [@option]
      (** computer_name_prefix *)
  enable_automatic_updates : bool prop option; [@option]
      (** enable_automatic_updates *)
  hotpatching_enabled : bool prop option; [@option]
      (** hotpatching_enabled *)
  patch_assessment_mode : string prop option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string prop option; [@option]  (** patch_mode *)
  provision_vm_agent : bool prop option; [@option]
      (** provision_vm_agent *)
  timezone : string prop option; [@option]  (** timezone *)
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
  custom_data : string prop option; [@option]  (** custom_data *)
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
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  publisher : string prop;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__plan *)

type azurerm_orchestrated_virtual_machine_scale_set__priority_mix = {
  base_regular_count : float prop option; [@option]
      (** base_regular_count *)
  regular_percentage_above_base : float prop option; [@option]
      (** regular_percentage_above_base *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__priority_mix *)

type azurerm_orchestrated_virtual_machine_scale_set__source_image_reference = {
  offer : string prop;  (** offer *)
  publisher : string prop;  (** publisher *)
  sku : string prop;  (** sku *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__source_image_reference *)

type azurerm_orchestrated_virtual_machine_scale_set__termination_notification = {
  enabled : bool prop;  (** enabled *)
  timeout : string prop option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__termination_notification *)

type azurerm_orchestrated_virtual_machine_scale_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_orchestrated_virtual_machine_scale_set__timeouts *)

type azurerm_orchestrated_virtual_machine_scale_set = {
  capacity_reservation_group_id : string prop option; [@option]
      (** capacity_reservation_group_id *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  extension_operations_enabled : bool prop option; [@option]
      (** extension_operations_enabled *)
  extensions_time_budget : string prop option; [@option]
      (** extensions_time_budget *)
  id : string prop option; [@option]  (** id *)
  instances : float prop option; [@option]  (** instances *)
  license_type : string prop option; [@option]  (** license_type *)
  location : string prop;  (** location *)
  max_bid_price : float prop option; [@option]  (** max_bid_price *)
  name : string prop;  (** name *)
  platform_fault_domain_count : float prop;
      (** platform_fault_domain_count *)
  priority : string prop option; [@option]  (** priority *)
  proximity_placement_group_id : string prop option; [@option]
      (** proximity_placement_group_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  single_placement_group : bool prop option; [@option]
      (** single_placement_group *)
  sku_name : string prop option; [@option]  (** sku_name *)
  source_image_id : string prop option; [@option]
      (** source_image_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_data_base64 : string prop option; [@option]
      (** user_data_base64 *)
  zone_balance : bool prop option; [@option]  (** zone_balance *)
  zones : string prop list option; [@option]  (** zones *)
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
