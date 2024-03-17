(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_linux_virtual_machine__additional_capabilities
type azurerm_linux_virtual_machine__admin_ssh_key
type azurerm_linux_virtual_machine__boot_diagnostics
type azurerm_linux_virtual_machine__gallery_application
type azurerm_linux_virtual_machine__identity
type azurerm_linux_virtual_machine__os_disk__diff_disk_settings
type azurerm_linux_virtual_machine__os_disk
type azurerm_linux_virtual_machine__os_image_notification
type azurerm_linux_virtual_machine__plan
type azurerm_linux_virtual_machine__secret__certificate
type azurerm_linux_virtual_machine__secret
type azurerm_linux_virtual_machine__source_image_reference
type azurerm_linux_virtual_machine__termination_notification
type azurerm_linux_virtual_machine__timeouts
type azurerm_linux_virtual_machine

type t = private {
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
  disable_password_authentication : bool prop;
  disk_controller_type : string prop;
  edge_zone : string prop;
  encryption_at_host_enabled : bool prop;
  eviction_policy : string prop;
  extensions_time_budget : string prop;
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
  user_data : string prop;
  virtual_machine_id : string prop;
  virtual_machine_scale_set_id : string prop;
  vm_agent_platform_updates_enabled : bool prop;
  vtpm_enabled : bool prop;
  zone : string prop;
}

val azurerm_linux_virtual_machine :
  ?admin_password:string prop ->
  ?allow_extension_operations:bool prop ->
  ?availability_set_id:string prop ->
  ?bypass_platform_safety_checks_on_user_schedule_enabled:bool prop ->
  ?capacity_reservation_group_id:string prop ->
  ?computer_name:string prop ->
  ?custom_data:string prop ->
  ?dedicated_host_group_id:string prop ->
  ?dedicated_host_id:string prop ->
  ?disable_password_authentication:bool prop ->
  ?disk_controller_type:string prop ->
  ?edge_zone:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extensions_time_budget:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?patch_assessment_mode:string prop ->
  ?patch_mode:string prop ->
  ?platform_fault_domain:float prop ->
  ?priority:string prop ->
  ?provision_vm_agent:bool prop ->
  ?proximity_placement_group_id:string prop ->
  ?reboot_setting:string prop ->
  ?secure_boot_enabled:bool prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data:string prop ->
  ?virtual_machine_scale_set_id:string prop ->
  ?vm_agent_platform_updates_enabled:bool prop ->
  ?vtpm_enabled:bool prop ->
  ?zone:string prop ->
  ?timeouts:azurerm_linux_virtual_machine__timeouts ->
  admin_username:string prop ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  size:string prop ->
  additional_capabilities:
    azurerm_linux_virtual_machine__additional_capabilities list ->
  admin_ssh_key:azurerm_linux_virtual_machine__admin_ssh_key list ->
  boot_diagnostics:
    azurerm_linux_virtual_machine__boot_diagnostics list ->
  gallery_application:
    azurerm_linux_virtual_machine__gallery_application list ->
  identity:azurerm_linux_virtual_machine__identity list ->
  os_disk:azurerm_linux_virtual_machine__os_disk list ->
  os_image_notification:
    azurerm_linux_virtual_machine__os_image_notification list ->
  plan:azurerm_linux_virtual_machine__plan list ->
  secret:azurerm_linux_virtual_machine__secret list ->
  source_image_reference:
    azurerm_linux_virtual_machine__source_image_reference list ->
  termination_notification:
    azurerm_linux_virtual_machine__termination_notification list ->
  string ->
  t
