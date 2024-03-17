(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_machine__additional_capabilities
type azurerm_virtual_machine__boot_diagnostics
type azurerm_virtual_machine__identity
type azurerm_virtual_machine__os_profile
type azurerm_virtual_machine__os_profile_linux_config__ssh_keys
type azurerm_virtual_machine__os_profile_linux_config
type azurerm_virtual_machine__os_profile_secrets__vault_certificates
type azurerm_virtual_machine__os_profile_secrets

type azurerm_virtual_machine__os_profile_windows_config__additional_unattend_config

type azurerm_virtual_machine__os_profile_windows_config__winrm
type azurerm_virtual_machine__os_profile_windows_config
type azurerm_virtual_machine__plan
type azurerm_virtual_machine__storage_data_disk
type azurerm_virtual_machine__storage_image_reference
type azurerm_virtual_machine__storage_os_disk
type azurerm_virtual_machine__timeouts
type azurerm_virtual_machine

type t = private {
  availability_set_id : string prop;
  delete_data_disks_on_termination : bool prop;
  delete_os_disk_on_termination : bool prop;
  id : string prop;
  license_type : string prop;
  location : string prop;
  name : string prop;
  network_interface_ids : string list prop;
  primary_network_interface_id : string prop;
  proximity_placement_group_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vm_size : string prop;
  zones : string list prop;
}

val azurerm_virtual_machine :
  ?availability_set_id:string prop ->
  ?delete_data_disks_on_termination:bool prop ->
  ?delete_os_disk_on_termination:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?primary_network_interface_id:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_virtual_machine__timeouts ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  vm_size:string prop ->
  additional_capabilities:
    azurerm_virtual_machine__additional_capabilities list ->
  boot_diagnostics:azurerm_virtual_machine__boot_diagnostics list ->
  identity:azurerm_virtual_machine__identity list ->
  os_profile:azurerm_virtual_machine__os_profile list ->
  os_profile_linux_config:
    azurerm_virtual_machine__os_profile_linux_config list ->
  os_profile_secrets:azurerm_virtual_machine__os_profile_secrets list ->
  os_profile_windows_config:
    azurerm_virtual_machine__os_profile_windows_config list ->
  plan:azurerm_virtual_machine__plan list ->
  storage_data_disk:azurerm_virtual_machine__storage_data_disk list ->
  storage_image_reference:
    azurerm_virtual_machine__storage_image_reference list ->
  storage_os_disk:azurerm_virtual_machine__storage_os_disk list ->
  string ->
  t
