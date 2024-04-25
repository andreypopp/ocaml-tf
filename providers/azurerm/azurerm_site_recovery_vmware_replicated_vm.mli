(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed_disk

val managed_disk :
  ?log_storage_account_id:string prop ->
  ?target_disk_encryption_set_id:string prop ->
  disk_id:string prop ->
  target_disk_type:string prop ->
  unit ->
  managed_disk

type network_interface

val network_interface :
  ?target_static_ip:string prop ->
  ?target_subnet_name:string prop ->
  ?test_subnet_name:string prop ->
  is_primary:bool prop ->
  source_mac_address:string prop ->
  unit ->
  network_interface

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_vmware_replicated_vm

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
  ?managed_disk:managed_disk list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  appliance_name:string prop ->
  name:string prop ->
  physical_server_credential_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_id:string prop ->
  source_vm_name:string prop ->
  target_resource_group_id:string prop ->
  target_vm_name:string prop ->
  unit ->
  azurerm_site_recovery_vmware_replicated_vm

val yojson_of_azurerm_site_recovery_vmware_replicated_vm :
  azurerm_site_recovery_vmware_replicated_vm -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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
  ?managed_disk:managed_disk list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  appliance_name:string prop ->
  name:string prop ->
  physical_server_credential_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_id:string prop ->
  source_vm_name:string prop ->
  target_resource_group_id:string prop ->
  target_vm_name:string prop ->
  string ->
  t

val make :
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
  ?managed_disk:managed_disk list ->
  ?network_interface:network_interface list ->
  ?timeouts:timeouts ->
  appliance_name:string prop ->
  name:string prop ->
  physical_server_credential_name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_id:string prop ->
  source_vm_name:string prop ->
  target_resource_group_id:string prop ->
  target_vm_name:string prop ->
  string ->
  t Tf_core.resource
