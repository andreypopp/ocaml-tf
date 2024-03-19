(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type additional_capabilities

val additional_capabilities :
  ultra_ssd_enabled:bool prop -> unit -> additional_capabilities

type boot_diagnostics

val boot_diagnostics :
  enabled:bool prop ->
  storage_uri:string prop ->
  unit ->
  boot_diagnostics

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type os_profile

val os_profile :
  ?admin_password:string prop ->
  ?custom_data:string prop ->
  admin_username:string prop ->
  computer_name:string prop ->
  unit ->
  os_profile

type os_profile_linux_config__ssh_keys

val os_profile_linux_config__ssh_keys :
  key_data:string prop ->
  path:string prop ->
  unit ->
  os_profile_linux_config__ssh_keys

type os_profile_linux_config

val os_profile_linux_config :
  disable_password_authentication:bool prop ->
  ssh_keys:os_profile_linux_config__ssh_keys list ->
  unit ->
  os_profile_linux_config

type os_profile_secrets__vault_certificates

val os_profile_secrets__vault_certificates :
  ?certificate_store:string prop ->
  certificate_url:string prop ->
  unit ->
  os_profile_secrets__vault_certificates

type os_profile_secrets

val os_profile_secrets :
  source_vault_id:string prop ->
  vault_certificates:os_profile_secrets__vault_certificates list ->
  unit ->
  os_profile_secrets

type os_profile_windows_config__additional_unattend_config

val os_profile_windows_config__additional_unattend_config :
  component:string prop ->
  content:string prop ->
  pass:string prop ->
  setting_name:string prop ->
  unit ->
  os_profile_windows_config__additional_unattend_config

type os_profile_windows_config__winrm

val os_profile_windows_config__winrm :
  ?certificate_url:string prop ->
  protocol:string prop ->
  unit ->
  os_profile_windows_config__winrm

type os_profile_windows_config

val os_profile_windows_config :
  ?enable_automatic_upgrades:bool prop ->
  ?provision_vm_agent:bool prop ->
  ?timezone:string prop ->
  additional_unattend_config:
    os_profile_windows_config__additional_unattend_config list ->
  winrm:os_profile_windows_config__winrm list ->
  unit ->
  os_profile_windows_config

type plan

val plan :
  name:string prop ->
  product:string prop ->
  publisher:string prop ->
  unit ->
  plan

type storage_data_disk

val storage_data_disk :
  ?caching:string prop ->
  ?disk_size_gb:float prop ->
  ?managed_disk_id:string prop ->
  ?managed_disk_type:string prop ->
  ?vhd_uri:string prop ->
  ?write_accelerator_enabled:bool prop ->
  create_option:string prop ->
  lun:float prop ->
  name:string prop ->
  unit ->
  storage_data_disk

type storage_image_reference

val storage_image_reference :
  ?id:string prop ->
  ?offer:string prop ->
  ?publisher:string prop ->
  ?sku:string prop ->
  ?version:string prop ->
  unit ->
  storage_image_reference

type storage_os_disk

val storage_os_disk :
  ?caching:string prop ->
  ?disk_size_gb:float prop ->
  ?image_uri:string prop ->
  ?managed_disk_id:string prop ->
  ?managed_disk_type:string prop ->
  ?os_type:string prop ->
  ?vhd_uri:string prop ->
  ?write_accelerator_enabled:bool prop ->
  create_option:string prop ->
  name:string prop ->
  unit ->
  storage_os_disk

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_machine

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
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  vm_size:string prop ->
  additional_capabilities:additional_capabilities list ->
  boot_diagnostics:boot_diagnostics list ->
  identity:identity list ->
  os_profile:os_profile list ->
  os_profile_linux_config:os_profile_linux_config list ->
  os_profile_secrets:os_profile_secrets list ->
  os_profile_windows_config:os_profile_windows_config list ->
  plan:plan list ->
  storage_data_disk:storage_data_disk list ->
  storage_image_reference:storage_image_reference list ->
  storage_os_disk:storage_os_disk list ->
  unit ->
  azurerm_virtual_machine

val yojson_of_azurerm_virtual_machine :
  azurerm_virtual_machine -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?availability_set_id:string prop ->
  ?delete_data_disks_on_termination:bool prop ->
  ?delete_os_disk_on_termination:bool prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?primary_network_interface_id:string prop ->
  ?proximity_placement_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  network_interface_ids:string prop list ->
  resource_group_name:string prop ->
  vm_size:string prop ->
  additional_capabilities:additional_capabilities list ->
  boot_diagnostics:boot_diagnostics list ->
  identity:identity list ->
  os_profile:os_profile list ->
  os_profile_linux_config:os_profile_linux_config list ->
  os_profile_secrets:os_profile_secrets list ->
  os_profile_windows_config:os_profile_windows_config list ->
  plan:plan list ->
  storage_data_disk:storage_data_disk list ->
  storage_image_reference:storage_image_reference list ->
  storage_os_disk:storage_os_disk list ->
  string ->
  t
