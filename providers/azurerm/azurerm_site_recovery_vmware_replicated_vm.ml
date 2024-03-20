(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_disk = {
  disk_id : string prop;  (** disk_id *)
  log_storage_account_id : string prop option; [@option]
      (** log_storage_account_id *)
  target_disk_encryption_set_id : string prop option; [@option]
      (** target_disk_encryption_set_id *)
  target_disk_type : string prop;  (** target_disk_type *)
}
[@@deriving yojson_of]
(** managed_disk *)

type network_interface = {
  is_primary : bool prop;  (** is_primary *)
  source_mac_address : string prop;  (** source_mac_address *)
  target_static_ip : string prop option; [@option]
      (** target_static_ip *)
  target_subnet_name : string prop option; [@option]
      (** target_subnet_name *)
  test_subnet_name : string prop option; [@option]
      (** test_subnet_name *)
}
[@@deriving yojson_of]
(** network_interface *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_vmware_replicated_vm = {
  appliance_name : string prop;  (** appliance_name *)
  default_log_storage_account_id : string prop option; [@option]
      (** default_log_storage_account_id *)
  default_recovery_disk_type : string prop option; [@option]
      (** default_recovery_disk_type *)
  default_target_disk_encryption_set_id : string prop option;
      [@option]
      (** default_target_disk_encryption_set_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop option; [@option]  (** license_type *)
  multi_vm_group_name : string prop option; [@option]
      (** multi_vm_group_name *)
  name : string prop;  (** name *)
  physical_server_credential_name : string prop;
      (** physical_server_credential_name *)
  recovery_replication_policy_id : string prop;
      (** recovery_replication_policy_id *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  source_vm_name : string prop;  (** source_vm_name *)
  target_availability_set_id : string prop option; [@option]
      (** target_availability_set_id *)
  target_boot_diagnostics_storage_account_id : string prop option;
      [@option]
      (** target_boot_diagnostics_storage_account_id *)
  target_network_id : string prop option; [@option]
      (** target_network_id *)
  target_proximity_placement_group_id : string prop option; [@option]
      (** target_proximity_placement_group_id *)
  target_resource_group_id : string prop;
      (** target_resource_group_id *)
  target_vm_name : string prop;  (** target_vm_name *)
  target_vm_size : string prop option; [@option]
      (** target_vm_size *)
  target_zone : string prop option; [@option]  (** target_zone *)
  test_network_id : string prop option; [@option]
      (** test_network_id *)
  managed_disk : managed_disk list;
  network_interface : network_interface list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_vmware_replicated_vm *)

let managed_disk ?log_storage_account_id
    ?target_disk_encryption_set_id ~disk_id ~target_disk_type () :
    managed_disk =
  {
    disk_id;
    log_storage_account_id;
    target_disk_encryption_set_id;
    target_disk_type;
  }

let network_interface ?target_static_ip ?target_subnet_name
    ?test_subnet_name ~is_primary ~source_mac_address () :
    network_interface =
  {
    is_primary;
    source_mac_address;
    target_static_ip;
    target_subnet_name;
    test_subnet_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_site_recovery_vmware_replicated_vm
    ?default_log_storage_account_id ?default_recovery_disk_type
    ?default_target_disk_encryption_set_id ?id ?license_type
    ?multi_vm_group_name ?target_availability_set_id
    ?target_boot_diagnostics_storage_account_id ?target_network_id
    ?target_proximity_placement_group_id ?target_vm_size ?target_zone
    ?test_network_id ?timeouts ~appliance_name ~name
    ~physical_server_credential_name ~recovery_replication_policy_id
    ~recovery_vault_id ~source_vm_name ~target_resource_group_id
    ~target_vm_name ~managed_disk ~network_interface () :
    azurerm_site_recovery_vmware_replicated_vm =
  {
    appliance_name;
    default_log_storage_account_id;
    default_recovery_disk_type;
    default_target_disk_encryption_set_id;
    id;
    license_type;
    multi_vm_group_name;
    name;
    physical_server_credential_name;
    recovery_replication_policy_id;
    recovery_vault_id;
    source_vm_name;
    target_availability_set_id;
    target_boot_diagnostics_storage_account_id;
    target_network_id;
    target_proximity_placement_group_id;
    target_resource_group_id;
    target_vm_name;
    target_vm_size;
    target_zone;
    test_network_id;
    managed_disk;
    network_interface;
    timeouts;
  }

type t = {
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

let make ?default_log_storage_account_id ?default_recovery_disk_type
    ?default_target_disk_encryption_set_id ?id ?license_type
    ?multi_vm_group_name ?target_availability_set_id
    ?target_boot_diagnostics_storage_account_id ?target_network_id
    ?target_proximity_placement_group_id ?target_vm_size ?target_zone
    ?test_network_id ?timeouts ~appliance_name ~name
    ~physical_server_credential_name ~recovery_replication_policy_id
    ~recovery_vault_id ~source_vm_name ~target_resource_group_id
    ~target_vm_name ~managed_disk ~network_interface __id =
  let __type = "azurerm_site_recovery_vmware_replicated_vm" in
  let __attrs =
    ({
       appliance_name = Prop.computed __type __id "appliance_name";
       default_log_storage_account_id =
         Prop.computed __type __id "default_log_storage_account_id";
       default_recovery_disk_type =
         Prop.computed __type __id "default_recovery_disk_type";
       default_target_disk_encryption_set_id =
         Prop.computed __type __id
           "default_target_disk_encryption_set_id";
       id = Prop.computed __type __id "id";
       license_type = Prop.computed __type __id "license_type";
       multi_vm_group_name =
         Prop.computed __type __id "multi_vm_group_name";
       name = Prop.computed __type __id "name";
       physical_server_credential_name =
         Prop.computed __type __id "physical_server_credential_name";
       recovery_replication_policy_id =
         Prop.computed __type __id "recovery_replication_policy_id";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
       source_vm_name = Prop.computed __type __id "source_vm_name";
       target_availability_set_id =
         Prop.computed __type __id "target_availability_set_id";
       target_boot_diagnostics_storage_account_id =
         Prop.computed __type __id
           "target_boot_diagnostics_storage_account_id";
       target_network_id =
         Prop.computed __type __id "target_network_id";
       target_proximity_placement_group_id =
         Prop.computed __type __id
           "target_proximity_placement_group_id";
       target_resource_group_id =
         Prop.computed __type __id "target_resource_group_id";
       target_vm_name = Prop.computed __type __id "target_vm_name";
       target_vm_size = Prop.computed __type __id "target_vm_size";
       target_zone = Prop.computed __type __id "target_zone";
       test_network_id = Prop.computed __type __id "test_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_vmware_replicated_vm
        (azurerm_site_recovery_vmware_replicated_vm
           ?default_log_storage_account_id
           ?default_recovery_disk_type
           ?default_target_disk_encryption_set_id ?id ?license_type
           ?multi_vm_group_name ?target_availability_set_id
           ?target_boot_diagnostics_storage_account_id
           ?target_network_id ?target_proximity_placement_group_id
           ?target_vm_size ?target_zone ?test_network_id ?timeouts
           ~appliance_name ~name ~physical_server_credential_name
           ~recovery_replication_policy_id ~recovery_vault_id
           ~source_vm_name ~target_resource_group_id ~target_vm_name
           ~managed_disk ~network_interface ());
    attrs = __attrs;
  }

let register ?tf_module ?default_log_storage_account_id
    ?default_recovery_disk_type
    ?default_target_disk_encryption_set_id ?id ?license_type
    ?multi_vm_group_name ?target_availability_set_id
    ?target_boot_diagnostics_storage_account_id ?target_network_id
    ?target_proximity_placement_group_id ?target_vm_size ?target_zone
    ?test_network_id ?timeouts ~appliance_name ~name
    ~physical_server_credential_name ~recovery_replication_policy_id
    ~recovery_vault_id ~source_vm_name ~target_resource_group_id
    ~target_vm_name ~managed_disk ~network_interface __id =
  let (r : _ Tf_core.resource) =
    make ?default_log_storage_account_id ?default_recovery_disk_type
      ?default_target_disk_encryption_set_id ?id ?license_type
      ?multi_vm_group_name ?target_availability_set_id
      ?target_boot_diagnostics_storage_account_id ?target_network_id
      ?target_proximity_placement_group_id ?target_vm_size
      ?target_zone ?test_network_id ?timeouts ~appliance_name ~name
      ~physical_server_credential_name
      ~recovery_replication_policy_id ~recovery_vault_id
      ~source_vm_name ~target_resource_group_id ~target_vm_name
      ~managed_disk ~network_interface __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
