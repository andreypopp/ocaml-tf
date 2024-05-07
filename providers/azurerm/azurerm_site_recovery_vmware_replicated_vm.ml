(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type managed_disk = {
  disk_id : string prop;
  log_storage_account_id : string prop option; [@option]
  target_disk_encryption_set_id : string prop option; [@option]
  target_disk_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_disk) -> ()

let yojson_of_managed_disk =
  (function
   | {
       disk_id = v_disk_id;
       log_storage_account_id = v_log_storage_account_id;
       target_disk_encryption_set_id =
         v_target_disk_encryption_set_id;
       target_disk_type = v_target_disk_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_disk_type
         in
         ("target_disk_type", arg) :: bnds
       in
       let bnds =
         match v_target_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_disk_encryption_set_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_storage_account_id", arg in
             bnd :: bnds
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
  is_primary : bool prop;
  source_mac_address : string prop;
  target_static_ip : string prop option; [@option]
  target_subnet_name : string prop option; [@option]
  test_subnet_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_interface) -> ()

let yojson_of_network_interface =
  (function
   | {
       is_primary = v_is_primary;
       source_mac_address = v_source_mac_address;
       target_static_ip = v_target_static_ip;
       target_subnet_name = v_target_subnet_name;
       test_subnet_name = v_test_subnet_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_test_subnet_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "test_subnet_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_subnet_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_subnet_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_static_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_static_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_mac_address
         in
         ("source_mac_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_primary in
         ("is_primary", arg) :: bnds
       in
       `Assoc bnds
    : network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_interface

[@@@deriving.end]

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

type azurerm_site_recovery_vmware_replicated_vm = {
  appliance_name : string prop;
  default_log_storage_account_id : string prop option; [@option]
  default_recovery_disk_type : string prop option; [@option]
  default_target_disk_encryption_set_id : string prop option;
      [@option]
  id : string prop option; [@option]
  license_type : string prop option; [@option]
  multi_vm_group_name : string prop option; [@option]
  name : string prop;
  physical_server_credential_name : string prop;
  recovery_replication_policy_id : string prop;
  recovery_vault_id : string prop;
  source_vm_name : string prop;
  target_availability_set_id : string prop option; [@option]
  target_boot_diagnostics_storage_account_id : string prop option;
      [@option]
  target_network_id : string prop option; [@option]
  target_proximity_placement_group_id : string prop option; [@option]
  target_resource_group_id : string prop;
  target_vm_name : string prop;
  target_vm_size : string prop option; [@option]
  target_zone : string prop option; [@option]
  test_network_id : string prop option; [@option]
  managed_disk : managed_disk list;
  network_interface : network_interface list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_site_recovery_vmware_replicated_vm) -> ()

let yojson_of_azurerm_site_recovery_vmware_replicated_vm =
  (function
   | {
       appliance_name = v_appliance_name;
       default_log_storage_account_id =
         v_default_log_storage_account_id;
       default_recovery_disk_type = v_default_recovery_disk_type;
       default_target_disk_encryption_set_id =
         v_default_target_disk_encryption_set_id;
       id = v_id;
       license_type = v_license_type;
       multi_vm_group_name = v_multi_vm_group_name;
       name = v_name;
       physical_server_credential_name =
         v_physical_server_credential_name;
       recovery_replication_policy_id =
         v_recovery_replication_policy_id;
       recovery_vault_id = v_recovery_vault_id;
       source_vm_name = v_source_vm_name;
       target_availability_set_id = v_target_availability_set_id;
       target_boot_diagnostics_storage_account_id =
         v_target_boot_diagnostics_storage_account_id;
       target_network_id = v_target_network_id;
       target_proximity_placement_group_id =
         v_target_proximity_placement_group_id;
       target_resource_group_id = v_target_resource_group_id;
       target_vm_name = v_target_vm_name;
       target_vm_size = v_target_vm_size;
       target_zone = v_target_zone;
       test_network_id = v_test_network_id;
       managed_disk = v_managed_disk;
       network_interface = v_network_interface;
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
         let arg =
           yojson_of_list yojson_of_network_interface
             v_network_interface
         in
         ("network_interface", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_managed_disk v_managed_disk
         in
         ("managed_disk", arg) :: bnds
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
         match v_target_vm_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_vm_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_vm_name
         in
         ("target_vm_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_resource_group_id
         in
         ("target_resource_group_id", arg) :: bnds
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
         match v_target_boot_diagnostics_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "target_boot_diagnostics_storage_account_id", arg
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
         let arg =
           yojson_of_prop yojson_of_string v_source_vm_name
         in
         ("source_vm_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_vault_id
         in
         ("recovery_vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_recovery_replication_policy_id
         in
         ("recovery_replication_policy_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_physical_server_credential_name
         in
         ("physical_server_credential_name", arg) :: bnds
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
         match v_license_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "license_type", arg in
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
       let bnds =
         match v_default_target_disk_encryption_set_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "default_target_disk_encryption_set_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_default_recovery_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_recovery_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_log_storage_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_log_storage_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_appliance_name
         in
         ("appliance_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_site_recovery_vmware_replicated_vm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_site_recovery_vmware_replicated_vm

[@@@deriving.end]

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
    ?test_network_id ?(managed_disk = []) ?(network_interface = [])
    ?timeouts ~appliance_name ~name ~physical_server_credential_name
    ~recovery_replication_policy_id ~recovery_vault_id
    ~source_vm_name ~target_resource_group_id ~target_vm_name () :
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
  tf_name : string;
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
    ?test_network_id ?(managed_disk = []) ?(network_interface = [])
    ?timeouts ~appliance_name ~name ~physical_server_credential_name
    ~recovery_replication_policy_id ~recovery_vault_id
    ~source_vm_name ~target_resource_group_id ~target_vm_name __id =
  let __type = "azurerm_site_recovery_vmware_replicated_vm" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?target_vm_size ?target_zone ?test_network_id
           ~managed_disk ~network_interface ?timeouts ~appliance_name
           ~name ~physical_server_credential_name
           ~recovery_replication_policy_id ~recovery_vault_id
           ~source_vm_name ~target_resource_group_id ~target_vm_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?default_log_storage_account_id
    ?default_recovery_disk_type
    ?default_target_disk_encryption_set_id ?id ?license_type
    ?multi_vm_group_name ?target_availability_set_id
    ?target_boot_diagnostics_storage_account_id ?target_network_id
    ?target_proximity_placement_group_id ?target_vm_size ?target_zone
    ?test_network_id ?(managed_disk = []) ?(network_interface = [])
    ?timeouts ~appliance_name ~name ~physical_server_credential_name
    ~recovery_replication_policy_id ~recovery_vault_id
    ~source_vm_name ~target_resource_group_id ~target_vm_name __id =
  let (r : _ Tf_core.resource) =
    make ?default_log_storage_account_id ?default_recovery_disk_type
      ?default_target_disk_encryption_set_id ?id ?license_type
      ?multi_vm_group_name ?target_availability_set_id
      ?target_boot_diagnostics_storage_account_id ?target_network_id
      ?target_proximity_placement_group_id ?target_vm_size
      ?target_zone ?test_network_id ~managed_disk ~network_interface
      ?timeouts ~appliance_name ~name
      ~physical_server_credential_name
      ~recovery_replication_policy_id ~recovery_vault_id
      ~source_vm_name ~target_resource_group_id ~target_vm_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
