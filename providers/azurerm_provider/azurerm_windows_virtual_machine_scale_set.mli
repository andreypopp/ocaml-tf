(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_windows_virtual_machine_scale_set__additional_capabilities

type azurerm_windows_virtual_machine_scale_set__additional_unattend_content

type azurerm_windows_virtual_machine_scale_set__automatic_instance_repair

type azurerm_windows_virtual_machine_scale_set__automatic_os_upgrade_policy

type azurerm_windows_virtual_machine_scale_set__boot_diagnostics
type azurerm_windows_virtual_machine_scale_set__data_disk

type azurerm_windows_virtual_machine_scale_set__extension__protected_settings_from_key_vault

type azurerm_windows_virtual_machine_scale_set__extension
type azurerm_windows_virtual_machine_scale_set__gallery_application
type azurerm_windows_virtual_machine_scale_set__gallery_applications
type azurerm_windows_virtual_machine_scale_set__identity

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address

type azurerm_windows_virtual_machine_scale_set__network_interface__ip_configuration

type azurerm_windows_virtual_machine_scale_set__network_interface

type azurerm_windows_virtual_machine_scale_set__os_disk__diff_disk_settings

type azurerm_windows_virtual_machine_scale_set__os_disk
type azurerm_windows_virtual_machine_scale_set__plan
type azurerm_windows_virtual_machine_scale_set__rolling_upgrade_policy
type azurerm_windows_virtual_machine_scale_set__scale_in
type azurerm_windows_virtual_machine_scale_set__secret__certificate
type azurerm_windows_virtual_machine_scale_set__secret
type azurerm_windows_virtual_machine_scale_set__source_image_reference
type azurerm_windows_virtual_machine_scale_set__spot_restore
type azurerm_windows_virtual_machine_scale_set__terminate_notification

type azurerm_windows_virtual_machine_scale_set__termination_notification

type azurerm_windows_virtual_machine_scale_set__timeouts
type azurerm_windows_virtual_machine_scale_set__winrm_listener
type azurerm_windows_virtual_machine_scale_set

val azurerm_windows_virtual_machine_scale_set :
  ?capacity_reservation_group_id:string ->
  ?custom_data:string ->
  ?do_not_run_extensions_on_overprovisioned_machines:bool ->
  ?edge_zone:string ->
  ?enable_automatic_updates:bool ->
  ?encryption_at_host_enabled:bool ->
  ?eviction_policy:string ->
  ?extensions_time_budget:string ->
  ?health_probe_id:string ->
  ?host_group_id:string ->
  ?license_type:string ->
  ?max_bid_price:float ->
  ?overprovision:bool ->
  ?priority:string ->
  ?provision_vm_agent:bool ->
  ?proximity_placement_group_id:string ->
  ?secure_boot_enabled:bool ->
  ?single_placement_group:bool ->
  ?source_image_id:string ->
  ?tags:(string * string) list ->
  ?timezone:string ->
  ?upgrade_mode:string ->
  ?user_data:string ->
  ?vtpm_enabled:bool ->
  ?zone_balance:bool ->
  ?zones:string list ->
  ?timeouts:azurerm_windows_virtual_machine_scale_set__timeouts ->
  admin_password:string ->
  admin_username:string ->
  instances:float ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku:string ->
  additional_capabilities:
    azurerm_windows_virtual_machine_scale_set__additional_capabilities
    list ->
  additional_unattend_content:
    azurerm_windows_virtual_machine_scale_set__additional_unattend_content
    list ->
  automatic_instance_repair:
    azurerm_windows_virtual_machine_scale_set__automatic_instance_repair
    list ->
  automatic_os_upgrade_policy:
    azurerm_windows_virtual_machine_scale_set__automatic_os_upgrade_policy
    list ->
  boot_diagnostics:
    azurerm_windows_virtual_machine_scale_set__boot_diagnostics list ->
  data_disk:azurerm_windows_virtual_machine_scale_set__data_disk list ->
  extension:azurerm_windows_virtual_machine_scale_set__extension list ->
  gallery_application:
    azurerm_windows_virtual_machine_scale_set__gallery_application
    list ->
  gallery_applications:
    azurerm_windows_virtual_machine_scale_set__gallery_applications
    list ->
  identity:azurerm_windows_virtual_machine_scale_set__identity list ->
  network_interface:
    azurerm_windows_virtual_machine_scale_set__network_interface list ->
  os_disk:azurerm_windows_virtual_machine_scale_set__os_disk list ->
  plan:azurerm_windows_virtual_machine_scale_set__plan list ->
  rolling_upgrade_policy:
    azurerm_windows_virtual_machine_scale_set__rolling_upgrade_policy
    list ->
  scale_in:azurerm_windows_virtual_machine_scale_set__scale_in list ->
  secret:azurerm_windows_virtual_machine_scale_set__secret list ->
  source_image_reference:
    azurerm_windows_virtual_machine_scale_set__source_image_reference
    list ->
  spot_restore:
    azurerm_windows_virtual_machine_scale_set__spot_restore list ->
  terminate_notification:
    azurerm_windows_virtual_machine_scale_set__terminate_notification
    list ->
  termination_notification:
    azurerm_windows_virtual_machine_scale_set__termination_notification
    list ->
  winrm_listener:
    azurerm_windows_virtual_machine_scale_set__winrm_listener list ->
  string ->
  unit
