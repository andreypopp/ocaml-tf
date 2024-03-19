(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type managed_disk__target_disk_encryption__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  vault_id : string prop;  (** vault_id *)
}

type managed_disk__target_disk_encryption__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  vault_id : string prop;  (** vault_id *)
}

type managed_disk__target_disk_encryption = {
  disk_encryption_key :
    managed_disk__target_disk_encryption__disk_encryption_key list;
      (** disk_encryption_key *)
  key_encryption_key :
    managed_disk__target_disk_encryption__key_encryption_key list;
      (** key_encryption_key *)
}

type managed_disk = {
  disk_id : string prop;  (** disk_id *)
  staging_storage_account_id : string prop;
      (** staging_storage_account_id *)
  target_disk_encryption : managed_disk__target_disk_encryption list;
      (** target_disk_encryption *)
  target_disk_encryption_set_id : string prop;
      (** target_disk_encryption_set_id *)
  target_disk_type : string prop;  (** target_disk_type *)
  target_replica_disk_type : string prop;
      (** target_replica_disk_type *)
  target_resource_group_id : string prop;
      (** target_resource_group_id *)
}

type network_interface = {
  failover_test_public_ip_address_id : string prop;
      (** failover_test_public_ip_address_id *)
  failover_test_static_ip : string prop;
      (** failover_test_static_ip *)
  failover_test_subnet_name : string prop;
      (** failover_test_subnet_name *)
  is_primary : bool prop;  (** is_primary *)
  recovery_public_ip_address_id : string prop;
      (** recovery_public_ip_address_id *)
  source_network_interface_id : string prop;
      (** source_network_interface_id *)
  target_static_ip : string prop;  (** target_static_ip *)
  target_subnet_name : string prop;  (** target_subnet_name *)
}

type unmanaged_disk = {
  disk_uri : string prop;  (** disk_uri *)
  staging_storage_account_id : string prop;
      (** staging_storage_account_id *)
  target_storage_account_id : string prop;
      (** target_storage_account_id *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_replicated_vm

val azurerm_site_recovery_replicated_vm :
  ?id:string prop ->
  ?managed_disk:managed_disk list ->
  ?multi_vm_group_name:string prop ->
  ?network_interface:network_interface list ->
  ?target_availability_set_id:string prop ->
  ?target_boot_diagnostic_storage_account_id:string prop ->
  ?target_capacity_reservation_group_id:string prop ->
  ?target_edge_zone:string prop ->
  ?target_network_id:string prop ->
  ?target_proximity_placement_group_id:string prop ->
  ?target_virtual_machine_scale_set_id:string prop ->
  ?target_zone:string prop ->
  ?test_network_id:string prop ->
  ?unmanaged_disk:unmanaged_disk list ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_recovery_fabric_name:string prop ->
  source_recovery_protection_container_name:string prop ->
  source_vm_id:string prop ->
  target_recovery_fabric_id:string prop ->
  target_recovery_protection_container_id:string prop ->
  target_resource_group_id:string prop ->
  unit ->
  azurerm_site_recovery_replicated_vm

val yojson_of_azurerm_site_recovery_replicated_vm :
  azurerm_site_recovery_replicated_vm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  managed_disk : managed_disk list prop;
  multi_vm_group_name : string prop;
  name : string prop;
  network_interface : network_interface list prop;
  recovery_replication_policy_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_recovery_fabric_name : string prop;
  source_recovery_protection_container_name : string prop;
  source_vm_id : string prop;
  target_availability_set_id : string prop;
  target_boot_diagnostic_storage_account_id : string prop;
  target_capacity_reservation_group_id : string prop;
  target_edge_zone : string prop;
  target_network_id : string prop;
  target_proximity_placement_group_id : string prop;
  target_recovery_fabric_id : string prop;
  target_recovery_protection_container_id : string prop;
  target_resource_group_id : string prop;
  target_virtual_machine_scale_set_id : string prop;
  target_zone : string prop;
  test_network_id : string prop;
  unmanaged_disk : unmanaged_disk list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?managed_disk:managed_disk list ->
  ?multi_vm_group_name:string prop ->
  ?network_interface:network_interface list ->
  ?target_availability_set_id:string prop ->
  ?target_boot_diagnostic_storage_account_id:string prop ->
  ?target_capacity_reservation_group_id:string prop ->
  ?target_edge_zone:string prop ->
  ?target_network_id:string prop ->
  ?target_proximity_placement_group_id:string prop ->
  ?target_virtual_machine_scale_set_id:string prop ->
  ?target_zone:string prop ->
  ?test_network_id:string prop ->
  ?unmanaged_disk:unmanaged_disk list ->
  ?timeouts:timeouts ->
  name:string prop ->
  recovery_replication_policy_id:string prop ->
  recovery_vault_name:string prop ->
  resource_group_name:string prop ->
  source_recovery_fabric_name:string prop ->
  source_recovery_protection_container_name:string prop ->
  source_vm_id:string prop ->
  target_recovery_fabric_id:string prop ->
  target_recovery_protection_container_id:string prop ->
  target_resource_group_id:string prop ->
  string ->
  t
