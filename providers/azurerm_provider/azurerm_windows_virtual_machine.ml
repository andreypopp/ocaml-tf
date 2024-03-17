(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_windows_virtual_machine__additional_capabilities = {
  ultra_ssd_enabled : bool option; [@option]  (** ultra_ssd_enabled *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__additional_capabilities *)

type azurerm_windows_virtual_machine__additional_unattend_content = {
  content : string;  (** content *)
  setting : string;  (** setting *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__additional_unattend_content *)

type azurerm_windows_virtual_machine__boot_diagnostics = {
  storage_account_uri : string option; [@option]
      (** storage_account_uri *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__boot_diagnostics *)

type azurerm_windows_virtual_machine__gallery_application = {
  automatic_upgrade_enabled : bool option; [@option]
      (** automatic_upgrade_enabled *)
  configuration_blob_uri : string option; [@option]
      (** configuration_blob_uri *)
  order : float option; [@option]  (** order *)
  tag : string option; [@option]  (** tag *)
  treat_failure_as_deployment_failure_enabled : bool option;
      [@option]
      (** treat_failure_as_deployment_failure_enabled *)
  version_id : string;  (** version_id *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__gallery_application *)

type azurerm_windows_virtual_machine__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__identity *)

type azurerm_windows_virtual_machine__os_disk__diff_disk_settings = {
  option : string;  (** option *)
  placement : string option; [@option]  (** placement *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__os_disk__diff_disk_settings *)

type azurerm_windows_virtual_machine__os_disk = {
  caching : string;  (** caching *)
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float option; [@option]  (** disk_size_gb *)
  name : string option; [@option]  (** name *)
  secure_vm_disk_encryption_set_id : string option; [@option]
      (** secure_vm_disk_encryption_set_id *)
  security_encryption_type : string option; [@option]
      (** security_encryption_type *)
  storage_account_type : string;  (** storage_account_type *)
  write_accelerator_enabled : bool option; [@option]
      (** write_accelerator_enabled *)
  diff_disk_settings :
    azurerm_windows_virtual_machine__os_disk__diff_disk_settings list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__os_disk *)

type azurerm_windows_virtual_machine__os_image_notification = {
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__os_image_notification *)

type azurerm_windows_virtual_machine__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__plan *)

type azurerm_windows_virtual_machine__secret__certificate = {
  store : string;  (** store *)
  url : string;  (** url *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__secret__certificate *)

type azurerm_windows_virtual_machine__secret = {
  key_vault_id : string;  (** key_vault_id *)
  certificate :
    azurerm_windows_virtual_machine__secret__certificate list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__secret *)

type azurerm_windows_virtual_machine__source_image_reference = {
  offer : string;  (** offer *)
  publisher : string;  (** publisher *)
  sku : string;  (** sku *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__source_image_reference *)

type azurerm_windows_virtual_machine__termination_notification = {
  enabled : bool;  (** enabled *)
  timeout : string option; [@option]  (** timeout *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__termination_notification *)

type azurerm_windows_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__timeouts *)

type azurerm_windows_virtual_machine__winrm_listener = {
  certificate_url : string option; [@option]  (** certificate_url *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine__winrm_listener *)

type azurerm_windows_virtual_machine = {
  admin_password : string;  (** admin_password *)
  admin_username : string;  (** admin_username *)
  allow_extension_operations : bool option; [@option]
      (** allow_extension_operations *)
  availability_set_id : string option; [@option]
      (** availability_set_id *)
  bypass_platform_safety_checks_on_user_schedule_enabled :
    bool option;
      [@option]
      (** bypass_platform_safety_checks_on_user_schedule_enabled *)
  capacity_reservation_group_id : string option; [@option]
      (** capacity_reservation_group_id *)
  computer_name : string option; [@option]  (** computer_name *)
  custom_data : string option; [@option]  (** custom_data *)
  dedicated_host_group_id : string option; [@option]
      (** dedicated_host_group_id *)
  dedicated_host_id : string option; [@option]
      (** dedicated_host_id *)
  disk_controller_type : string option; [@option]
      (** disk_controller_type *)
  edge_zone : string option; [@option]  (** edge_zone *)
  enable_automatic_updates : bool option; [@option]
      (** enable_automatic_updates *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  extensions_time_budget : string option; [@option]
      (** extensions_time_budget *)
  hotpatching_enabled : bool option; [@option]
      (** hotpatching_enabled *)
  id : string option; [@option]  (** id *)
  license_type : string option; [@option]  (** license_type *)
  location : string;  (** location *)
  max_bid_price : float option; [@option]  (** max_bid_price *)
  name : string;  (** name *)
  network_interface_ids : string list;  (** network_interface_ids *)
  patch_assessment_mode : string option; [@option]
      (** patch_assessment_mode *)
  patch_mode : string option; [@option]  (** patch_mode *)
  platform_fault_domain : float option; [@option]
      (** platform_fault_domain *)
  priority : string option; [@option]  (** priority *)
  provision_vm_agent : bool option; [@option]
      (** provision_vm_agent *)
  proximity_placement_group_id : string option; [@option]
      (** proximity_placement_group_id *)
  reboot_setting : string option; [@option]  (** reboot_setting *)
  resource_group_name : string;  (** resource_group_name *)
  secure_boot_enabled : bool option; [@option]
      (** secure_boot_enabled *)
  size : string;  (** size *)
  source_image_id : string option; [@option]  (** source_image_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timezone : string option; [@option]  (** timezone *)
  user_data : string option; [@option]  (** user_data *)
  virtual_machine_scale_set_id : string option; [@option]
      (** virtual_machine_scale_set_id *)
  vm_agent_platform_updates_enabled : bool option; [@option]
      (** vm_agent_platform_updates_enabled *)
  vtpm_enabled : bool option; [@option]  (** vtpm_enabled *)
  zone : string option; [@option]  (** zone *)
  additional_capabilities :
    azurerm_windows_virtual_machine__additional_capabilities list;
  additional_unattend_content :
    azurerm_windows_virtual_machine__additional_unattend_content list;
  boot_diagnostics :
    azurerm_windows_virtual_machine__boot_diagnostics list;
  gallery_application :
    azurerm_windows_virtual_machine__gallery_application list;
  identity : azurerm_windows_virtual_machine__identity list;
  os_disk : azurerm_windows_virtual_machine__os_disk list;
  os_image_notification :
    azurerm_windows_virtual_machine__os_image_notification list;
  plan : azurerm_windows_virtual_machine__plan list;
  secret : azurerm_windows_virtual_machine__secret list;
  source_image_reference :
    azurerm_windows_virtual_machine__source_image_reference list;
  termination_notification :
    azurerm_windows_virtual_machine__termination_notification list;
  timeouts : azurerm_windows_virtual_machine__timeouts option;
  winrm_listener :
    azurerm_windows_virtual_machine__winrm_listener list;
}
[@@deriving yojson_of]
(** azurerm_windows_virtual_machine *)

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
    ?vtpm_enabled ?zone ?timeouts ~admin_password ~admin_username
    ~location ~name ~network_interface_ids ~resource_group_name ~size
    ~additional_capabilities ~additional_unattend_content
    ~boot_diagnostics ~gallery_application ~identity ~os_disk
    ~os_image_notification ~plan ~secret ~source_image_reference
    ~termination_notification ~winrm_listener __resource_id =
  let __resource_type = "azurerm_windows_virtual_machine" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_windows_virtual_machine __resource);
  ()
