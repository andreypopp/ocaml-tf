(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities

type azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair

type azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics
type azurerm_orchestrated_virtual_machine_scale_set__data_disk

type azurerm_orchestrated_virtual_machine_scale_set__extension__protected_settings_from_key_vault

type azurerm_orchestrated_virtual_machine_scale_set__extension
type azurerm_orchestrated_virtual_machine_scale_set__identity

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address__ip_tag

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration__public_ip_address

type azurerm_orchestrated_virtual_machine_scale_set__network_interface__ip_configuration

type azurerm_orchestrated_virtual_machine_scale_set__network_interface

type azurerm_orchestrated_virtual_machine_scale_set__os_disk__diff_disk_settings

type azurerm_orchestrated_virtual_machine_scale_set__os_disk

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__admin_ssh_key

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret__certificate

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration__secret

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__linux_configuration

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__additional_unattend_content

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret__certificate

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__secret

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration__winrm_listener

type azurerm_orchestrated_virtual_machine_scale_set__os_profile__windows_configuration

type azurerm_orchestrated_virtual_machine_scale_set__os_profile
type azurerm_orchestrated_virtual_machine_scale_set__plan
type azurerm_orchestrated_virtual_machine_scale_set__priority_mix

type azurerm_orchestrated_virtual_machine_scale_set__source_image_reference

type azurerm_orchestrated_virtual_machine_scale_set__termination_notification

type azurerm_orchestrated_virtual_machine_scale_set__timeouts
type azurerm_orchestrated_virtual_machine_scale_set

val azurerm_orchestrated_virtual_machine_scale_set :
  ?capacity_reservation_group_id:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?eviction_policy:string prop ->
  ?extension_operations_enabled:bool prop ->
  ?extensions_time_budget:string prop ->
  ?id:string prop ->
  ?instances:float prop ->
  ?license_type:string prop ->
  ?max_bid_price:float prop ->
  ?priority:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?single_placement_group:bool prop ->
  ?sku_name:string prop ->
  ?source_image_id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_data_base64:string prop ->
  ?zone_balance:bool prop ->
  ?zones:string prop list ->
  ?timeouts:azurerm_orchestrated_virtual_machine_scale_set__timeouts ->
  location:string prop ->
  name:string prop ->
  platform_fault_domain_count:float prop ->
  resource_group_name:string prop ->
  additional_capabilities:
    azurerm_orchestrated_virtual_machine_scale_set__additional_capabilities
    list ->
  automatic_instance_repair:
    azurerm_orchestrated_virtual_machine_scale_set__automatic_instance_repair
    list ->
  boot_diagnostics:
    azurerm_orchestrated_virtual_machine_scale_set__boot_diagnostics
    list ->
  data_disk:
    azurerm_orchestrated_virtual_machine_scale_set__data_disk list ->
  extension:
    azurerm_orchestrated_virtual_machine_scale_set__extension list ->
  identity:
    azurerm_orchestrated_virtual_machine_scale_set__identity list ->
  network_interface:
    azurerm_orchestrated_virtual_machine_scale_set__network_interface
    list ->
  os_disk:
    azurerm_orchestrated_virtual_machine_scale_set__os_disk list ->
  os_profile:
    azurerm_orchestrated_virtual_machine_scale_set__os_profile list ->
  plan:azurerm_orchestrated_virtual_machine_scale_set__plan list ->
  priority_mix:
    azurerm_orchestrated_virtual_machine_scale_set__priority_mix list ->
  source_image_reference:
    azurerm_orchestrated_virtual_machine_scale_set__source_image_reference
    list ->
  termination_notification:
    azurerm_orchestrated_virtual_machine_scale_set__termination_notification
    list ->
  string ->
  unit
