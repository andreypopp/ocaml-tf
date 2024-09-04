(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  infrastructure_encryption_enabled : bool prop;
  key_id : string prop;
  use_system_assigned_identity : bool prop option; [@option]
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       infrastructure_encryption_enabled =
         v_infrastructure_encryption_enabled;
       key_id = v_key_id;
       use_system_assigned_identity = v_use_system_assigned_identity;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_system_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_system_assigned_identity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_infrastructure_encryption_enabled
         in
         ("infrastructure_encryption_enabled", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type monitoring = {
  alerts_for_all_job_failures_enabled : bool prop option; [@option]
  alerts_for_critical_operation_failures_enabled : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring) -> ()

let yojson_of_monitoring =
  (function
   | {
       alerts_for_all_job_failures_enabled =
         v_alerts_for_all_job_failures_enabled;
       alerts_for_critical_operation_failures_enabled =
         v_alerts_for_critical_operation_failures_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_alerts_for_critical_operation_failures_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "alerts_for_critical_operation_failures_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_alerts_for_all_job_failures_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "alerts_for_all_job_failures_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitoring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring

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

type azurerm_recovery_services_vault = {
  classic_vmware_replication_enabled : bool prop option; [@option]
  cross_region_restore_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  immutability : string prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  soft_delete_enabled : bool prop option; [@option]
  storage_mode_type : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  encryption : encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  monitoring : monitoring list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_recovery_services_vault) -> ()

let yojson_of_azurerm_recovery_services_vault =
  (function
   | {
       classic_vmware_replication_enabled =
         v_classic_vmware_replication_enabled;
       cross_region_restore_enabled = v_cross_region_restore_enabled;
       id = v_id;
       immutability = v_immutability;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       soft_delete_enabled = v_soft_delete_enabled;
       storage_mode_type = v_storage_mode_type;
       tags = v_tags;
       encryption = v_encryption;
       identity = v_identity;
       monitoring = v_monitoring;
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
         if Stdlib.( = ) [] v_monitoring then bnds
         else
           let arg =
             (yojson_of_list yojson_of_monitoring) v_monitoring
           in
           let bnd = "monitoring", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption) v_encryption
           in
           let bnd = "encryption", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_mode_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_mode_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_soft_delete_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "soft_delete_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_immutability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "immutability", arg in
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
         match v_cross_region_restore_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cross_region_restore_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classic_vmware_replication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "classic_vmware_replication_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_recovery_services_vault ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_recovery_services_vault

[@@@deriving.end]

let encryption ?use_system_assigned_identity
    ?user_assigned_identity_id ~infrastructure_encryption_enabled
    ~key_id () : encryption =
  {
    infrastructure_encryption_enabled;
    key_id;
    use_system_assigned_identity;
    user_assigned_identity_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let monitoring ?alerts_for_all_job_failures_enabled
    ?alerts_for_critical_operation_failures_enabled () : monitoring =
  {
    alerts_for_all_job_failures_enabled;
    alerts_for_critical_operation_failures_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_recovery_services_vault
    ?classic_vmware_replication_enabled ?cross_region_restore_enabled
    ?id ?immutability ?public_network_access_enabled
    ?soft_delete_enabled ?storage_mode_type ?tags ?(encryption = [])
    ?(identity = []) ?(monitoring = []) ?timeouts ~location ~name
    ~resource_group_name ~sku () : azurerm_recovery_services_vault =
  {
    classic_vmware_replication_enabled;
    cross_region_restore_enabled;
    id;
    immutability;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    soft_delete_enabled;
    storage_mode_type;
    tags;
    encryption;
    identity;
    monitoring;
    timeouts;
  }

type t = {
  tf_name : string;
  classic_vmware_replication_enabled : bool prop;
  cross_region_restore_enabled : bool prop;
  id : string prop;
  immutability : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  soft_delete_enabled : bool prop;
  storage_mode_type : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?classic_vmware_replication_enabled
    ?cross_region_restore_enabled ?id ?immutability
    ?public_network_access_enabled ?soft_delete_enabled
    ?storage_mode_type ?tags ?(encryption = []) ?(identity = [])
    ?(monitoring = []) ?timeouts ~location ~name ~resource_group_name
    ~sku __id =
  let __type = "azurerm_recovery_services_vault" in
  let __attrs =
    ({
       tf_name = __id;
       classic_vmware_replication_enabled =
         Prop.computed __type __id
           "classic_vmware_replication_enabled";
       cross_region_restore_enabled =
         Prop.computed __type __id "cross_region_restore_enabled";
       id = Prop.computed __type __id "id";
       immutability = Prop.computed __type __id "immutability";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       soft_delete_enabled =
         Prop.computed __type __id "soft_delete_enabled";
       storage_mode_type =
         Prop.computed __type __id "storage_mode_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_recovery_services_vault
        (azurerm_recovery_services_vault
           ?classic_vmware_replication_enabled
           ?cross_region_restore_enabled ?id ?immutability
           ?public_network_access_enabled ?soft_delete_enabled
           ?storage_mode_type ?tags ~encryption ~identity ~monitoring
           ?timeouts ~location ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?classic_vmware_replication_enabled
    ?cross_region_restore_enabled ?id ?immutability
    ?public_network_access_enabled ?soft_delete_enabled
    ?storage_mode_type ?tags ?(encryption = []) ?(identity = [])
    ?(monitoring = []) ?timeouts ~location ~name ~resource_group_name
    ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?classic_vmware_replication_enabled
      ?cross_region_restore_enabled ?id ?immutability
      ?public_network_access_enabled ?soft_delete_enabled
      ?storage_mode_type ?tags ~encryption ~identity ~monitoring
      ?timeouts ~location ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
