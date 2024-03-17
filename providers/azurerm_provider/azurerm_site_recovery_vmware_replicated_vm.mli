(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_vmware_replicated_vm__managed_disk
type azurerm_site_recovery_vmware_replicated_vm__network_interface
type azurerm_site_recovery_vmware_replicated_vm__timeouts
type azurerm_site_recovery_vmware_replicated_vm

val azurerm_site_recovery_vmware_replicated_vm :
  ?default_log_storage_account_id:string ->
  ?default_recovery_disk_type:string ->
  ?default_target_disk_encryption_set_id:string ->
  ?id:string ->
  ?license_type:string ->
  ?multi_vm_group_name:string ->
  ?target_availability_set_id:string ->
  ?target_boot_diagnostics_storage_account_id:string ->
  ?target_network_id:string ->
  ?target_proximity_placement_group_id:string ->
  ?target_vm_size:string ->
  ?target_zone:string ->
  ?test_network_id:string ->
  ?timeouts:azurerm_site_recovery_vmware_replicated_vm__timeouts ->
  appliance_name:string ->
  name:string ->
  physical_server_credential_name:string ->
  recovery_replication_policy_id:string ->
  recovery_vault_id:string ->
  source_vm_name:string ->
  target_resource_group_id:string ->
  target_vm_name:string ->
  managed_disk:
    azurerm_site_recovery_vmware_replicated_vm__managed_disk list ->
  network_interface:
    azurerm_site_recovery_vmware_replicated_vm__network_interface
    list ->
  string ->
  unit
