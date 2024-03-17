(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_site_recovery_replicated_vm__timeouts

type azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption__key_encryption_key = {
  key_url : string;  (** key_url *)
  vault_id : string;  (** vault_id *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption__disk_encryption_key = {
  secret_url : string;  (** secret_url *)
  vault_id : string;  (** vault_id *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption = {
  disk_encryption_key :
    azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption__disk_encryption_key
    list;
      (** disk_encryption_key *)
  key_encryption_key :
    azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption__key_encryption_key
    list;
      (** key_encryption_key *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm__managed_disk = {
  disk_id : string;  (** disk_id *)
  staging_storage_account_id : string;
      (** staging_storage_account_id *)
  target_disk_encryption :
    azurerm_site_recovery_replicated_vm__managed_disk__target_disk_encryption
    list;
      (** target_disk_encryption *)
  target_disk_encryption_set_id : string;
      (** target_disk_encryption_set_id *)
  target_disk_type : string;  (** target_disk_type *)
  target_replica_disk_type : string;  (** target_replica_disk_type *)
  target_resource_group_id : string;  (** target_resource_group_id *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm__network_interface = {
  failover_test_public_ip_address_id : string;
      (** failover_test_public_ip_address_id *)
  failover_test_static_ip : string;  (** failover_test_static_ip *)
  failover_test_subnet_name : string;
      (** failover_test_subnet_name *)
  is_primary : bool;  (** is_primary *)
  recovery_public_ip_address_id : string;
      (** recovery_public_ip_address_id *)
  source_network_interface_id : string;
      (** source_network_interface_id *)
  target_static_ip : string;  (** target_static_ip *)
  target_subnet_name : string;  (** target_subnet_name *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm__unmanaged_disk = {
  disk_uri : string;  (** disk_uri *)
  staging_storage_account_id : string;
      (** staging_storage_account_id *)
  target_storage_account_id : string;
      (** target_storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm

val azurerm_site_recovery_replicated_vm :
  ?managed_disk:
    azurerm_site_recovery_replicated_vm__managed_disk list ->
  ?multi_vm_group_name:string ->
  ?target_availability_set_id:string ->
  ?target_boot_diagnostic_storage_account_id:string ->
  ?target_capacity_reservation_group_id:string ->
  ?target_edge_zone:string ->
  ?target_proximity_placement_group_id:string ->
  ?target_virtual_machine_scale_set_id:string ->
  ?target_zone:string ->
  ?unmanaged_disk:
    azurerm_site_recovery_replicated_vm__unmanaged_disk list ->
  ?timeouts:azurerm_site_recovery_replicated_vm__timeouts ->
  name:string ->
  recovery_replication_policy_id:string ->
  recovery_vault_name:string ->
  resource_group_name:string ->
  source_recovery_fabric_name:string ->
  source_recovery_protection_container_name:string ->
  source_vm_id:string ->
  target_recovery_fabric_id:string ->
  target_recovery_protection_container_id:string ->
  target_resource_group_id:string ->
  string ->
  unit
