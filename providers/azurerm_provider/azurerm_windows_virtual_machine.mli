(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_windows_virtual_machine__additional_capabilities
type azurerm_windows_virtual_machine__additional_unattend_content
type azurerm_windows_virtual_machine__boot_diagnostics
type azurerm_windows_virtual_machine__gallery_application
type azurerm_windows_virtual_machine__identity
type azurerm_windows_virtual_machine__os_disk__diff_disk_settings
type azurerm_windows_virtual_machine__os_disk
type azurerm_windows_virtual_machine__os_image_notification
type azurerm_windows_virtual_machine__plan
type azurerm_windows_virtual_machine__secret__certificate
type azurerm_windows_virtual_machine__secret
type azurerm_windows_virtual_machine__source_image_reference
type azurerm_windows_virtual_machine__termination_notification
type azurerm_windows_virtual_machine__timeouts
type azurerm_windows_virtual_machine__winrm_listener
type azurerm_windows_virtual_machine

val azurerm_windows_virtual_machine :
  ?allow_extension_operations:bool ->
  ?availability_set_id:string ->
  ?bypass_platform_safety_checks_on_user_schedule_enabled:bool ->
  ?capacity_reservation_group_id:string ->
  ?custom_data:string ->
  ?dedicated_host_group_id:string ->
  ?dedicated_host_id:string ->
  ?edge_zone:string ->
  ?enable_automatic_updates:bool ->
  ?encryption_at_host_enabled:bool ->
  ?eviction_policy:string ->
  ?extensions_time_budget:string ->
  ?hotpatching_enabled:bool ->
  ?license_type:string ->
  ?max_bid_price:float ->
  ?patch_assessment_mode:string ->
  ?patch_mode:string ->
  ?platform_fault_domain:float ->
  ?priority:string ->
  ?provision_vm_agent:bool ->
  ?proximity_placement_group_id:string ->
  ?reboot_setting:string ->
  ?secure_boot_enabled:bool ->
  ?source_image_id:string ->
  ?tags:(string * string) list ->
  ?timezone:string ->
  ?user_data:string ->
  ?virtual_machine_scale_set_id:string ->
  ?vm_agent_platform_updates_enabled:bool ->
  ?vtpm_enabled:bool ->
  ?zone:string ->
  ?timeouts:azurerm_windows_virtual_machine__timeouts ->
  admin_password:string ->
  admin_username:string ->
  location:string ->
  name:string ->
  network_interface_ids:string list ->
  resource_group_name:string ->
  size:string ->
  additional_capabilities:
    azurerm_windows_virtual_machine__additional_capabilities list ->
  additional_unattend_content:
    azurerm_windows_virtual_machine__additional_unattend_content list ->
  boot_diagnostics:
    azurerm_windows_virtual_machine__boot_diagnostics list ->
  gallery_application:
    azurerm_windows_virtual_machine__gallery_application list ->
  identity:azurerm_windows_virtual_machine__identity list ->
  os_disk:azurerm_windows_virtual_machine__os_disk list ->
  os_image_notification:
    azurerm_windows_virtual_machine__os_image_notification list ->
  plan:azurerm_windows_virtual_machine__plan list ->
  secret:azurerm_windows_virtual_machine__secret list ->
  source_image_reference:
    azurerm_windows_virtual_machine__source_image_reference list ->
  termination_notification:
    azurerm_windows_virtual_machine__termination_notification list ->
  winrm_listener:azurerm_windows_virtual_machine__winrm_listener list ->
  string ->
  unit
