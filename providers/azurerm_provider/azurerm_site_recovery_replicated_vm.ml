(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_site_recovery_replicated_vm__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replicated_vm__timeouts *)

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

type azurerm_site_recovery_replicated_vm = {
  managed_disk :
    azurerm_site_recovery_replicated_vm__managed_disk list option;
      [@option]
      (** managed_disk *)
  multi_vm_group_name : string option; [@option]
      (** multi_vm_group_name *)
  name : string;  (** name *)
  recovery_replication_policy_id : string;
      (** recovery_replication_policy_id *)
  recovery_vault_name : string;  (** recovery_vault_name *)
  resource_group_name : string;  (** resource_group_name *)
  source_recovery_fabric_name : string;
      (** source_recovery_fabric_name *)
  source_recovery_protection_container_name : string;
      (** source_recovery_protection_container_name *)
  source_vm_id : string;  (** source_vm_id *)
  target_availability_set_id : string option; [@option]
      (** target_availability_set_id *)
  target_boot_diagnostic_storage_account_id : string option;
      [@option]
      (** target_boot_diagnostic_storage_account_id *)
  target_capacity_reservation_group_id : string option; [@option]
      (** target_capacity_reservation_group_id *)
  target_edge_zone : string option; [@option]
      (** target_edge_zone *)
  target_proximity_placement_group_id : string option; [@option]
      (** target_proximity_placement_group_id *)
  target_recovery_fabric_id : string;
      (** target_recovery_fabric_id *)
  target_recovery_protection_container_id : string;
      (** target_recovery_protection_container_id *)
  target_resource_group_id : string;  (** target_resource_group_id *)
  target_virtual_machine_scale_set_id : string option; [@option]
      (** target_virtual_machine_scale_set_id *)
  target_zone : string option; [@option]  (** target_zone *)
  unmanaged_disk :
    azurerm_site_recovery_replicated_vm__unmanaged_disk list option;
      [@option]
      (** unmanaged_disk *)
  timeouts : azurerm_site_recovery_replicated_vm__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replicated_vm *)

let azurerm_site_recovery_replicated_vm ?managed_disk
    ?multi_vm_group_name ?target_availability_set_id
    ?target_boot_diagnostic_storage_account_id
    ?target_capacity_reservation_group_id ?target_edge_zone
    ?target_proximity_placement_group_id
    ?target_virtual_machine_scale_set_id ?target_zone ?unmanaged_disk
    ?timeouts ~name ~recovery_replication_policy_id
    ~recovery_vault_name ~resource_group_name
    ~source_recovery_fabric_name
    ~source_recovery_protection_container_name ~source_vm_id
    ~target_recovery_fabric_id
    ~target_recovery_protection_container_id
    ~target_resource_group_id __resource_id =
  let __resource_type = "azurerm_site_recovery_replicated_vm" in
  let __resource =
    {
      managed_disk;
      multi_vm_group_name;
      name;
      recovery_replication_policy_id;
      recovery_vault_name;
      resource_group_name;
      source_recovery_fabric_name;
      source_recovery_protection_container_name;
      source_vm_id;
      target_availability_set_id;
      target_boot_diagnostic_storage_account_id;
      target_capacity_reservation_group_id;
      target_edge_zone;
      target_proximity_placement_group_id;
      target_recovery_fabric_id;
      target_recovery_protection_container_id;
      target_resource_group_id;
      target_virtual_machine_scale_set_id;
      target_zone;
      unmanaged_disk;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_site_recovery_replicated_vm __resource);
  ()
