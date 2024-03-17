(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_vmware_replicated_vm__managed_disk
type azurerm_site_recovery_vmware_replicated_vm__network_interface
type azurerm_site_recovery_vmware_replicated_vm__timeouts
type azurerm_site_recovery_vmware_replicated_vm

type t = private {
  appliance_name : string prop;
  default_log_storage_account_id : string prop;
  default_recovery_disk_type : string prop;
  default_target_disk_encryption_set_id : string prop;
  id : string prop;
  license_type : string prop;
  multi_vm_group_name : string prop;
  name : string prop;
  physical_server_credential_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_vault_id : string prop;
  source_vm_name : string prop;
  target_availability_set_id : string prop;
  target_boot_diagnostics_storage_account_id : string prop;
  target_network_id : string prop;
  target_proximity_placement_group_id : string prop;
  target_resource_group_id : string prop;
  target_vm_name : string prop;
  target_vm_size : string prop;
  target_zone : string prop;
  test_network_id : string prop;
}

val azurerm_site_recovery_vmware_replicated_vm :
  ?default_log_storage_account_id:string prop ->
  ?default_recovery_disk_type:string prop ->
  ?default_target_disk_encryption_set_id:string prop ->
  ?id:string prop ->
  ?license_type:string prop ->
  ?multi_vm_group_name:string prop ->
  ?target_availability_set_id:string prop ->
  ?target_boot_diagnostics_storage_account_id:string prop ->
  ?target_network_id:string prop ->
  ?target_proximity_placement_group_id:string prop ->
  ?target_vm_size:string prop ->
  ?target_zone:string prop ->
  ?test_network_id:string prop ->
  ?timeouts:azurerm_site_recovery_vmware_replicated_vm__timeouts ->
  appliance_name:string prop ->
  name:string prop ->
  physical_server_credential_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_id:string prop ->
  source_vm_name:string prop ->
  target_resource_group_id:string prop ->
  target_vm_name:string prop ->
  managed_disk:
    azurerm_site_recovery_vmware_replicated_vm__managed_disk list ->
  network_interface:
    azurerm_site_recovery_vmware_replicated_vm__network_interface
    list ->
  string ->
  t
