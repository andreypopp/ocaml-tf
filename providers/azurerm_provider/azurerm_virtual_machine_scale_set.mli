(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine_scale_set__boot_diagnostics
type azurerm_virtual_machine_scale_set__extension
type azurerm_virtual_machine_scale_set__identity
type azurerm_virtual_machine_scale_set__network_profile__dns_settings

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration__public_ip_address_configuration

type azurerm_virtual_machine_scale_set__network_profile__ip_configuration

type azurerm_virtual_machine_scale_set__network_profile
type azurerm_virtual_machine_scale_set__os_profile

type azurerm_virtual_machine_scale_set__os_profile_linux_config__ssh_keys

type azurerm_virtual_machine_scale_set__os_profile_linux_config

type azurerm_virtual_machine_scale_set__os_profile_secrets__vault_certificates

type azurerm_virtual_machine_scale_set__os_profile_secrets

type azurerm_virtual_machine_scale_set__os_profile_windows_config__additional_unattend_config

type azurerm_virtual_machine_scale_set__os_profile_windows_config__winrm

type azurerm_virtual_machine_scale_set__os_profile_windows_config
type azurerm_virtual_machine_scale_set__plan
type azurerm_virtual_machine_scale_set__rolling_upgrade_policy
type azurerm_virtual_machine_scale_set__sku
type azurerm_virtual_machine_scale_set__storage_profile_data_disk

type azurerm_virtual_machine_scale_set__storage_profile_image_reference

type azurerm_virtual_machine_scale_set__storage_profile_os_disk
type azurerm_virtual_machine_scale_set__timeouts
type azurerm_virtual_machine_scale_set

val azurerm_virtual_machine_scale_set :
  ?automatic_os_upgrade:bool ->
  ?eviction_policy:string ->
  ?health_probe_id:string ->
  ?overprovision:bool ->
  ?priority:string ->
  ?proximity_placement_group_id:string ->
  ?single_placement_group:bool ->
  ?tags:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_virtual_machine_scale_set__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  upgrade_policy_mode:string ->
  boot_diagnostics:
    azurerm_virtual_machine_scale_set__boot_diagnostics list ->
  extension:azurerm_virtual_machine_scale_set__extension list ->
  identity:azurerm_virtual_machine_scale_set__identity list ->
  network_profile:
    azurerm_virtual_machine_scale_set__network_profile list ->
  os_profile:azurerm_virtual_machine_scale_set__os_profile list ->
  os_profile_linux_config:
    azurerm_virtual_machine_scale_set__os_profile_linux_config list ->
  os_profile_secrets:
    azurerm_virtual_machine_scale_set__os_profile_secrets list ->
  os_profile_windows_config:
    azurerm_virtual_machine_scale_set__os_profile_windows_config list ->
  plan:azurerm_virtual_machine_scale_set__plan list ->
  rolling_upgrade_policy:
    azurerm_virtual_machine_scale_set__rolling_upgrade_policy list ->
  sku:azurerm_virtual_machine_scale_set__sku list ->
  storage_profile_data_disk:
    azurerm_virtual_machine_scale_set__storage_profile_data_disk list ->
  storage_profile_image_reference:
    azurerm_virtual_machine_scale_set__storage_profile_image_reference
    list ->
  storage_profile_os_disk:
    azurerm_virtual_machine_scale_set__storage_profile_os_disk list ->
  string ->
  unit
