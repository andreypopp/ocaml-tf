(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type managed_disk__target_disk_encryption__key_encryption_key = {
  key_url : string prop;
  vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : managed_disk__target_disk_encryption__key_encryption_key) ->
  ()

let yojson_of_managed_disk__target_disk_encryption__key_encryption_key
    =
  (function
   | { key_url = v_key_url; vault_id = v_vault_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_url in
         ("key_url", arg) :: bnds
       in
       `Assoc bnds
    : managed_disk__target_disk_encryption__key_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_managed_disk__target_disk_encryption__key_encryption_key

[@@@deriving.end]

type managed_disk__target_disk_encryption__disk_encryption_key = {
  secret_url : string prop;
  vault_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : managed_disk__target_disk_encryption__disk_encryption_key) ->
  ()

let yojson_of_managed_disk__target_disk_encryption__disk_encryption_key
    =
  (function
   | { secret_url = v_secret_url; vault_id = v_vault_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_url in
         ("secret_url", arg) :: bnds
       in
       `Assoc bnds
    : managed_disk__target_disk_encryption__disk_encryption_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_managed_disk__target_disk_encryption__disk_encryption_key

[@@@deriving.end]

type managed_disk__target_disk_encryption = {
  disk_encryption_key :
    managed_disk__target_disk_encryption__disk_encryption_key list;
  key_encryption_key :
    managed_disk__target_disk_encryption__key_encryption_key list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_disk__target_disk_encryption) -> ()

let yojson_of_managed_disk__target_disk_encryption =
  (function
   | {
       disk_encryption_key = v_disk_encryption_key;
       key_encryption_key = v_key_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_disk__target_disk_encryption__key_encryption_key
             v_key_encryption_key
         in
         ("key_encryption_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_disk__target_disk_encryption__disk_encryption_key
             v_disk_encryption_key
         in
         ("disk_encryption_key", arg) :: bnds
       in
       `Assoc bnds
    : managed_disk__target_disk_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_disk__target_disk_encryption

[@@@deriving.end]

type managed_disk = {
  disk_id : string prop;
  staging_storage_account_id : string prop;
  target_disk_encryption : managed_disk__target_disk_encryption list;
  target_disk_encryption_set_id : string prop;
  target_disk_type : string prop;
  target_replica_disk_type : string prop;
  target_resource_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_disk) -> ()

let yojson_of_managed_disk =
  (function
   | {
       disk_id = v_disk_id;
       staging_storage_account_id = v_staging_storage_account_id;
       target_disk_encryption = v_target_disk_encryption;
       target_disk_encryption_set_id =
         v_target_disk_encryption_set_id;
       target_disk_type = v_target_disk_type;
       target_replica_disk_type = v_target_replica_disk_type;
       target_resource_group_id = v_target_resource_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_group_id
         in
         ("target_resource_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_replica_disk_type
         in
         ("target_replica_disk_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_disk_type
         in
         ("target_disk_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_target_disk_encryption_set_id
         in
         ("target_disk_encryption_set_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_managed_disk__target_disk_encryption
             v_target_disk_encryption
         in
         ("target_disk_encryption", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_staging_storage_account_id
         in
         ("staging_storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_id in
         ("disk_id", arg) :: bnds
       in
       `Assoc bnds
    : managed_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_disk

[@@@deriving.end]

type network_interface = {
  failover_test_public_ip_address_id : string prop;
  failover_test_static_ip : string prop;
  failover_test_subnet_name : string prop;
  is_primary : bool prop;
  recovery_public_ip_address_id : string prop;
  source_network_interface_id : string prop;
  target_static_ip : string prop;
  target_subnet_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       failover_test_public_ip_address_id =
         v_failover_test_public_ip_address_id;
       failover_test_static_ip = v_failover_test_static_ip;
       failover_test_subnet_name = v_failover_test_subnet_name;
       is_primary = v_is_primary;
       recovery_public_ip_address_id =
         v_recovery_public_ip_address_id;
       source_network_interface_id = v_source_network_interface_id;
       target_static_ip = v_target_static_ip;
       target_subnet_name = v_target_subnet_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_subnet_name
         in
         ("target_subnet_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_static_ip
         in
         ("target_static_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_network_interface_id
         in
         ("source_network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_public_ip_address_id
         in
         ("recovery_public_ip_address_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_primary in
         ("is_primary", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_failover_test_subnet_name
         in
         ("failover_test_subnet_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_failover_test_static_ip
         in
         ("failover_test_static_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_failover_test_public_ip_address_id
         in
         ("failover_test_public_ip_address_id", arg) :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

type unmanaged_disk = {
  disk_uri : string prop;
  staging_storage_account_id : string prop;
  target_storage_account_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : unmanaged_disk) -> ()

let yojson_of_unmanaged_disk =
  (function
   | {
       disk_uri = v_disk_uri;
       staging_storage_account_id = v_staging_storage_account_id;
       target_storage_account_id = v_target_storage_account_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_target_storage_account_id
         in
         ("target_storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_staging_storage_account_id
         in
         ("staging_storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_disk_uri in
         ("disk_uri", arg) :: bnds
       in
       `Assoc bnds
    : unmanaged_disk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_unmanaged_disk

[@@@deriving.end]

type azurerm_site_recovery_replicated_vm = {
  id : string prop option; [@option]
  managed_disk : managed_disk list option; [@option]
  multi_vm_group_name : string prop option; [@option]
  name : string prop;
  network_interface : network_interface list option; [@option]
  recovery_replication_policy_id : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  source_recovery_fabric_name : string prop;
  source_recovery_protection_container_name : string prop;
  source_vm_id : string prop;
  target_availability_set_id : string prop option; [@option]
  target_boot_diagnostic_storage_account_id : string prop option;
      [@option]
  target_capacity_reservation_group_id : string prop option;
      [@option]
  target_edge_zone : string prop option; [@option]
  target_network_id : string prop option; [@option]
  target_proximity_placement_group_id : string prop option; [@option]
  target_recovery_fabric_id : string prop;
  target_recovery_protection_container_id : string prop;
  target_resource_group_id : string prop;
  target_virtual_machine_scale_set_id : string prop option; [@option]
  target_zone : string prop option; [@option]
  test_network_id : string prop option; [@option]
  unmanaged_disk : unmanaged_disk list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_site_recovery_replicated_vm) -> ()

let yojson_of_azurerm_site_recovery_replicated_vm =
  (function
   | {
       id = v_id;
       managed_disk = v_managed_disk;
       multi_vm_group_name = v_multi_vm_group_name;
       name = v_name;
       network_interface = v_network_interface;
       recovery_replication_policy_id =
         v_recovery_replication_policy_id;
       recovery_vault_name = v_recovery_vault_name;
       resource_group_name = v_resource_group_name;
       source_recovery_fabric_name = v_source_recovery_fabric_name;
       source_recovery_protection_container_name =
         v_source_recovery_protection_container_name;
       source_vm_id = v_source_vm_id;
       target_availability_set_id = v_target_availability_set_id;
       target_boot_diagnostic_storage_account_id =
         v_target_boot_diagnostic_storage_account_id;
       target_capacity_reservation_group_id =
         v_target_capacity_reservation_group_id;
       target_edge_zone = v_target_edge_zone;
       target_network_id = v_target_network_id;
       target_proximity_placement_group_id =
         v_target_proximity_placement_group_id;
       target_recovery_fabric_id = v_target_recovery_fabric_id;
       target_recovery_protection_container_id =
         v_target_recovery_protection_container_id;
       target_resource_group_id = v_target_resource_group_id;
       target_virtual_machine_scale_set_id =
         v_target_virtual_machine_scale_set_id;
       target_zone = v_target_zone;
       test_network_id = v_test_network_id;
       unmanaged_disk = v_unmanaged_disk;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_unmanaged_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_unmanaged_disk v in
             let bnd = "unmanaged_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_test_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "test_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_virtual_machine_scale_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_virtual_machine_scale_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_group_id
         in
         ("target_resource_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_target_recovery_protection_container_id
         in
         ("target_recovery_protection_container_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_target_recovery_fabric_id
         in
         ("target_recovery_fabric_id", arg) :: bnds
       in
       let bnds =
         match v_target_proximity_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_proximity_placement_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_network_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_network_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_edge_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_edge_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_capacity_reservation_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_capacity_reservation_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_boot_diagnostic_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "target_boot_diagnostic_storage_account_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_target_availability_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_availability_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_vm_id in
         ("source_vm_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_recovery_protection_container_name
         in
         ("source_recovery_protection_container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_source_recovery_fabric_name
         in
         ("source_recovery_fabric_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_name
         in
         ("recovery_vault_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_replication_policy_id
         in
         ("recovery_replication_policy_id", arg) :: bnds
       in
       let bnds =
         match v_network_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_network_interface v
             in
             let bnd = "network_interface", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_multi_vm_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "multi_vm_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_managed_disk v in
             let bnd = "managed_disk", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_site_recovery_replicated_vm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_replicated_vm

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
