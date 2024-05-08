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

type volume__data_protection_replication = {
  endpoint_type : string prop option; [@option]
  remote_volume_location : string prop;
  remote_volume_resource_id : string prop;
  replication_frequency : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume__data_protection_replication) -> ()

let yojson_of_volume__data_protection_replication =
  (function
   | {
       endpoint_type = v_endpoint_type;
       remote_volume_location = v_remote_volume_location;
       remote_volume_resource_id = v_remote_volume_resource_id;
       replication_frequency = v_replication_frequency;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_frequency
         in
         ("replication_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_remote_volume_resource_id
         in
         ("remote_volume_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_volume_location
         in
         ("remote_volume_location", arg) :: bnds
       in
       let bnds =
         match v_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : volume__data_protection_replication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume__data_protection_replication

[@@@deriving.end]

type volume__data_protection_snapshot_policy = {
  snapshot_policy_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume__data_protection_snapshot_policy) -> ()

let yojson_of_volume__data_protection_snapshot_policy =
  (function
   | { snapshot_policy_id = v_snapshot_policy_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_snapshot_policy_id
         in
         ("snapshot_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : volume__data_protection_snapshot_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume__data_protection_snapshot_policy

[@@@deriving.end]

type volume__export_policy_rule = {
  allowed_clients : string prop;
  nfsv3_enabled : bool prop;
  nfsv41_enabled : bool prop;
  root_access_enabled : bool prop option; [@option]
  rule_index : float prop;
  unix_read_only : bool prop option; [@option]
  unix_read_write : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume__export_policy_rule) -> ()

let yojson_of_volume__export_policy_rule =
  (function
   | {
       allowed_clients = v_allowed_clients;
       nfsv3_enabled = v_nfsv3_enabled;
       nfsv41_enabled = v_nfsv41_enabled;
       root_access_enabled = v_root_access_enabled;
       rule_index = v_rule_index;
       unix_read_only = v_unix_read_only;
       unix_read_write = v_unix_read_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unix_read_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unix_read_write", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unix_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unix_read_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_index in
         ("rule_index", arg) :: bnds
       in
       let bnds =
         match v_root_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "root_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_nfsv41_enabled in
         ("nfsv41_enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_nfsv3_enabled in
         ("nfsv3_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allowed_clients
         in
         ("allowed_clients", arg) :: bnds
       in
       `Assoc bnds
    : volume__export_policy_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume__export_policy_rule

[@@@deriving.end]

type volume = {
  capacity_pool_id : string prop;
  name : string prop;
  protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proximity_placement_group_id : string prop option; [@option]
  security_style : string prop;
  service_level : string prop;
  snapshot_directory_visible : bool prop;
  storage_quota_in_gb : float prop;
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  throughput_in_mibps : float prop;
  volume_path : string prop;
  volume_spec_name : string prop;
  data_protection_replication :
    volume__data_protection_replication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  data_protection_snapshot_policy :
    volume__data_protection_snapshot_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  export_policy_rule : volume__export_policy_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : volume) -> ()

let yojson_of_volume =
  (function
   | {
       capacity_pool_id = v_capacity_pool_id;
       name = v_name;
       protocols = v_protocols;
       proximity_placement_group_id = v_proximity_placement_group_id;
       security_style = v_security_style;
       service_level = v_service_level;
       snapshot_directory_visible = v_snapshot_directory_visible;
       storage_quota_in_gb = v_storage_quota_in_gb;
       subnet_id = v_subnet_id;
       tags = v_tags;
       throughput_in_mibps = v_throughput_in_mibps;
       volume_path = v_volume_path;
       volume_spec_name = v_volume_spec_name;
       data_protection_replication = v_data_protection_replication;
       data_protection_snapshot_policy =
         v_data_protection_snapshot_policy;
       export_policy_rule = v_export_policy_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_export_policy_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_volume__export_policy_rule)
               v_export_policy_rule
           in
           let bnd = "export_policy_rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_protection_snapshot_policy then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_volume__data_protection_snapshot_policy)
               v_data_protection_snapshot_policy
           in
           let bnd = "data_protection_snapshot_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_protection_replication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_volume__data_protection_replication)
               v_data_protection_replication
           in
           let bnd = "data_protection_replication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_volume_spec_name
         in
         ("volume_spec_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_path in
         ("volume_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_throughput_in_mibps
         in
         ("throughput_in_mibps", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_storage_quota_in_gb
         in
         ("storage_quota_in_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_snapshot_directory_visible
         in
         ("snapshot_directory_visible", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_level in
         ("service_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_style
         in
         ("security_style", arg) :: bnds
       in
       let bnds =
         match v_proximity_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proximity_placement_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_protocols
           in
           let bnd = "protocols", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_pool_id
         in
         ("capacity_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_volume

[@@@deriving.end]

type azurerm_netapp_volume_group_sap_hana = {
  account_name : string prop;
  application_identifier : string prop;
  group_description : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
  volume : volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_volume_group_sap_hana) -> ()

let yojson_of_azurerm_netapp_volume_group_sap_hana =
  (function
   | {
       account_name = v_account_name;
       application_identifier = v_application_identifier;
       group_description = v_group_description;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
       volume = v_volume;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_volume then bnds
         else
           let arg = (yojson_of_list yojson_of_volume) v_volume in
           let bnd = "volume", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_description
         in
         ("group_description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_identifier
         in
         ("application_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_volume_group_sap_hana ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_volume_group_sap_hana

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let volume__data_protection_replication ?endpoint_type
    ~remote_volume_location ~remote_volume_resource_id
    ~replication_frequency () : volume__data_protection_replication =
  {
    endpoint_type;
    remote_volume_location;
    remote_volume_resource_id;
    replication_frequency;
  }

let volume__data_protection_snapshot_policy ~snapshot_policy_id () :
    volume__data_protection_snapshot_policy =
  { snapshot_policy_id }

let volume__export_policy_rule ?root_access_enabled ?unix_read_only
    ?unix_read_write ~allowed_clients ~nfsv3_enabled ~nfsv41_enabled
    ~rule_index () : volume__export_policy_rule =
  {
    allowed_clients;
    nfsv3_enabled;
    nfsv41_enabled;
    root_access_enabled;
    rule_index;
    unix_read_only;
    unix_read_write;
  }

let volume ?proximity_placement_group_id ?tags
    ?(data_protection_replication = [])
    ?(data_protection_snapshot_policy = []) ~capacity_pool_id ~name
    ~protocols ~security_style ~service_level
    ~snapshot_directory_visible ~storage_quota_in_gb ~subnet_id
    ~throughput_in_mibps ~volume_path ~volume_spec_name
    ~export_policy_rule () : volume =
  {
    capacity_pool_id;
    name;
    protocols;
    proximity_placement_group_id;
    security_style;
    service_level;
    snapshot_directory_visible;
    storage_quota_in_gb;
    subnet_id;
    tags;
    throughput_in_mibps;
    volume_path;
    volume_spec_name;
    data_protection_replication;
    data_protection_snapshot_policy;
    export_policy_rule;
  }

let azurerm_netapp_volume_group_sap_hana ?id ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume () :
    azurerm_netapp_volume_group_sap_hana =
  {
    account_name;
    application_identifier;
    group_description;
    id;
    location;
    name;
    resource_group_name;
    timeouts;
    volume;
  }

type t = {
  tf_name : string;
  account_name : string prop;
  application_identifier : string prop;
  group_description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~account_name ~application_identifier
    ~group_description ~location ~name ~resource_group_name ~volume
    __id =
  let __type = "azurerm_netapp_volume_group_sap_hana" in
  let __attrs =
    ({
       tf_name = __id;
       account_name = Prop.computed __type __id "account_name";
       application_identifier =
         Prop.computed __type __id "application_identifier";
       group_description =
         Prop.computed __type __id "group_description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_volume_group_sap_hana
        (azurerm_netapp_volume_group_sap_hana ?id ?timeouts
           ~account_name ~application_identifier ~group_description
           ~location ~name ~resource_group_name ~volume ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name
    ~application_identifier ~group_description ~location ~name
    ~resource_group_name ~volume __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~application_identifier
      ~group_description ~location ~name ~resource_group_name ~volume
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
