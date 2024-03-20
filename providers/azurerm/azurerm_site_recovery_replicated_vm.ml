(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type managed_disk__target_disk_encryption__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  vault_id : string prop;  (** vault_id *)
}
[@@deriving yojson_of]

type managed_disk__target_disk_encryption__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  vault_id : string prop;  (** vault_id *)
}
[@@deriving yojson_of]

type managed_disk__target_disk_encryption = {
  disk_encryption_key :
    managed_disk__target_disk_encryption__disk_encryption_key list;
      (** disk_encryption_key *)
  key_encryption_key :
    managed_disk__target_disk_encryption__key_encryption_key list;
      (** key_encryption_key *)
}
[@@deriving yojson_of]

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
[@@deriving yojson_of]

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
[@@deriving yojson_of]

type unmanaged_disk = {
  disk_uri : string prop;  (** disk_uri *)
  staging_storage_account_id : string prop;
      (** staging_storage_account_id *)
  target_storage_account_id : string prop;
      (** target_storage_account_id *)
}
[@@deriving yojson_of]

type azurerm_site_recovery_replicated_vm = {
  id : string prop option; [@option]  (** id *)
  managed_disk : managed_disk list option; [@option]
      (** managed_disk *)
  multi_vm_group_name : string prop option; [@option]
      (** multi_vm_group_name *)
  name : string prop;  (** name *)
  network_interface : network_interface list option; [@option]
      (** network_interface *)
  recovery_replication_policy_id : string prop;
      (** recovery_replication_policy_id *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_recovery_fabric_name : string prop;
      (** source_recovery_fabric_name *)
  source_recovery_protection_container_name : string prop;
      (** source_recovery_protection_container_name *)
  source_vm_id : string prop;  (** source_vm_id *)
  target_availability_set_id : string prop option; [@option]
      (** target_availability_set_id *)
  target_boot_diagnostic_storage_account_id : string prop option;
      [@option]
      (** target_boot_diagnostic_storage_account_id *)
  target_capacity_reservation_group_id : string prop option;
      [@option]
      (** target_capacity_reservation_group_id *)
  target_edge_zone : string prop option; [@option]
      (** target_edge_zone *)
  target_network_id : string prop option; [@option]
      (** target_network_id *)
  target_proximity_placement_group_id : string prop option; [@option]
      (** target_proximity_placement_group_id *)
  target_recovery_fabric_id : string prop;
      (** target_recovery_fabric_id *)
  target_recovery_protection_container_id : string prop;
      (** target_recovery_protection_container_id *)
  target_resource_group_id : string prop;
      (** target_resource_group_id *)
  target_virtual_machine_scale_set_id : string prop option; [@option]
      (** target_virtual_machine_scale_set_id *)
  target_zone : string prop option; [@option]  (** target_zone *)
  test_network_id : string prop option; [@option]
      (** test_network_id *)
  unmanaged_disk : unmanaged_disk list option; [@option]
      (** unmanaged_disk *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_replicated_vm *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_replicated_vm ?id ?managed_disk
    ?multi_vm_group_name ?network_interface
    ?target_availability_set_id
    ?target_boot_diagnostic_storage_account_id
    ?target_capacity_reservation_group_id ?target_edge_zone
    ?target_network_id ?target_proximity_placement_group_id
    ?target_virtual_machine_scale_set_id ?target_zone
    ?test_network_id ?unmanaged_disk ?timeouts ~name
    ~recovery_replication_policy_id ~recovery_vault_name
    ~resource_group_name ~source_recovery_fabric_name
    ~source_recovery_protection_container_name ~source_vm_id
    ~target_recovery_fabric_id
    ~target_recovery_protection_container_id
    ~target_resource_group_id () :
    azurerm_site_recovery_replicated_vm =
  {
    id;
    managed_disk;
    multi_vm_group_name;
    name;
    network_interface;
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
    target_network_id;
    target_proximity_placement_group_id;
    target_recovery_fabric_id;
    target_recovery_protection_container_id;
    target_resource_group_id;
    target_virtual_machine_scale_set_id;
    target_zone;
    test_network_id;
    unmanaged_disk;
    timeouts;
  }

type t = {
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

let make ?id ?managed_disk ?multi_vm_group_name ?network_interface
    ?target_availability_set_id
    ?target_boot_diagnostic_storage_account_id
    ?target_capacity_reservation_group_id ?target_edge_zone
    ?target_network_id ?target_proximity_placement_group_id
    ?target_virtual_machine_scale_set_id ?target_zone
    ?test_network_id ?unmanaged_disk ?timeouts ~name
    ~recovery_replication_policy_id ~recovery_vault_name
    ~resource_group_name ~source_recovery_fabric_name
    ~source_recovery_protection_container_name ~source_vm_id
    ~target_recovery_fabric_id
    ~target_recovery_protection_container_id
    ~target_resource_group_id __id =
  let __type = "azurerm_site_recovery_replicated_vm" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       managed_disk = Prop.computed __type __id "managed_disk";
       multi_vm_group_name =
         Prop.computed __type __id "multi_vm_group_name";
       name = Prop.computed __type __id "name";
       network_interface =
         Prop.computed __type __id "network_interface";
       recovery_replication_policy_id =
         Prop.computed __type __id "recovery_replication_policy_id";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_recovery_fabric_name =
         Prop.computed __type __id "source_recovery_fabric_name";
       source_recovery_protection_container_name =
         Prop.computed __type __id
           "source_recovery_protection_container_name";
       source_vm_id = Prop.computed __type __id "source_vm_id";
       target_availability_set_id =
         Prop.computed __type __id "target_availability_set_id";
       target_boot_diagnostic_storage_account_id =
         Prop.computed __type __id
           "target_boot_diagnostic_storage_account_id";
       target_capacity_reservation_group_id =
         Prop.computed __type __id
           "target_capacity_reservation_group_id";
       target_edge_zone =
         Prop.computed __type __id "target_edge_zone";
       target_network_id =
         Prop.computed __type __id "target_network_id";
       target_proximity_placement_group_id =
         Prop.computed __type __id
           "target_proximity_placement_group_id";
       target_recovery_fabric_id =
         Prop.computed __type __id "target_recovery_fabric_id";
       target_recovery_protection_container_id =
         Prop.computed __type __id
           "target_recovery_protection_container_id";
       target_resource_group_id =
         Prop.computed __type __id "target_resource_group_id";
       target_virtual_machine_scale_set_id =
         Prop.computed __type __id
           "target_virtual_machine_scale_set_id";
       target_zone = Prop.computed __type __id "target_zone";
       test_network_id = Prop.computed __type __id "test_network_id";
       unmanaged_disk = Prop.computed __type __id "unmanaged_disk";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_replicated_vm
        (azurerm_site_recovery_replicated_vm ?id ?managed_disk
           ?multi_vm_group_name ?network_interface
           ?target_availability_set_id
           ?target_boot_diagnostic_storage_account_id
           ?target_capacity_reservation_group_id ?target_edge_zone
           ?target_network_id ?target_proximity_placement_group_id
           ?target_virtual_machine_scale_set_id ?target_zone
           ?test_network_id ?unmanaged_disk ?timeouts ~name
           ~recovery_replication_policy_id ~recovery_vault_name
           ~resource_group_name ~source_recovery_fabric_name
           ~source_recovery_protection_container_name ~source_vm_id
           ~target_recovery_fabric_id
           ~target_recovery_protection_container_id
           ~target_resource_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_disk ?multi_vm_group_name
    ?network_interface ?target_availability_set_id
    ?target_boot_diagnostic_storage_account_id
    ?target_capacity_reservation_group_id ?target_edge_zone
    ?target_network_id ?target_proximity_placement_group_id
    ?target_virtual_machine_scale_set_id ?target_zone
    ?test_network_id ?unmanaged_disk ?timeouts ~name
    ~recovery_replication_policy_id ~recovery_vault_name
    ~resource_group_name ~source_recovery_fabric_name
    ~source_recovery_protection_container_name ~source_vm_id
    ~target_recovery_fabric_id
    ~target_recovery_protection_container_id
    ~target_resource_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_disk ?multi_vm_group_name ?network_interface
      ?target_availability_set_id
      ?target_boot_diagnostic_storage_account_id
      ?target_capacity_reservation_group_id ?target_edge_zone
      ?target_network_id ?target_proximity_placement_group_id
      ?target_virtual_machine_scale_set_id ?target_zone
      ?test_network_id ?unmanaged_disk ?timeouts ~name
      ~recovery_replication_policy_id ~recovery_vault_name
      ~resource_group_name ~source_recovery_fabric_name
      ~source_recovery_protection_container_name ~source_vm_id
      ~target_recovery_fabric_id
      ~target_recovery_protection_container_id
      ~target_resource_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
