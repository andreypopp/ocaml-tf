(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_policy = { days : float prop; enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_policy) -> ()

let yojson_of_retention_policy =
  (function
   | { days = v_days; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_days in
         ("days", arg) :: bnds
       in
       `Assoc bnds
    : retention_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_policy

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

type traffic_analytics = {
  enabled : bool prop;
  interval_in_minutes : float prop option; [@option]
  workspace_id : string prop;
  workspace_region : string prop;
  workspace_resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_analytics) -> ()

let yojson_of_traffic_analytics =
  (function
   | {
       enabled = v_enabled;
       interval_in_minutes = v_interval_in_minutes;
       workspace_id = v_workspace_id;
       workspace_region = v_workspace_region;
       workspace_resource_id = v_workspace_resource_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workspace_resource_id
         in
         ("workspace_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workspace_region
         in
         ("workspace_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_interval_in_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : traffic_analytics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_analytics

[@@@deriving.end]

type azurerm_network_watcher_flow_log = {
  enabled : bool prop;
  id : string prop option; [@option]
  location : string prop option; [@option]
  name : string prop;
  network_security_group_id : string prop;
  network_watcher_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string prop) list option; [@option]
  version : float prop option; [@option]
  retention_policy : retention_policy list;
  timeouts : timeouts option;
  traffic_analytics : traffic_analytics list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_watcher_flow_log) -> ()

let yojson_of_azurerm_network_watcher_flow_log =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       network_security_group_id = v_network_security_group_id;
       network_watcher_name = v_network_watcher_name;
       resource_group_name = v_resource_group_name;
       storage_account_id = v_storage_account_id;
       tags = v_tags;
       version = v_version;
       retention_policy = v_retention_policy;
       timeouts = v_timeouts;
       traffic_analytics = v_traffic_analytics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_traffic_analytics
             v_traffic_analytics
         in
         ("traffic_analytics", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_retention_policy
             v_retention_policy
         in
         ("retention_policy", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "version", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_watcher_name
         in
         ("network_watcher_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_network_security_group_id
         in
         ("network_security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_network_watcher_flow_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_watcher_flow_log

[@@@deriving.end]

let retention_policy ~days ~enabled () : retention_policy =
  { days; enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let traffic_analytics ?interval_in_minutes ~enabled ~workspace_id
    ~workspace_region ~workspace_resource_id () : traffic_analytics =
  {
    enabled;
    interval_in_minutes;
    workspace_id;
    workspace_region;
    workspace_resource_id;
  }

let azurerm_network_watcher_flow_log ?id ?location ?tags ?version
    ?timeouts ?(traffic_analytics = []) ~enabled ~name
    ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy () :
    azurerm_network_watcher_flow_log =
  {
    enabled;
    id;
    location;
    name;
    network_security_group_id;
    network_watcher_name;
    resource_group_name;
    storage_account_id;
    tags;
    version;
    retention_policy;
    timeouts;
    traffic_analytics;
  }

type t = {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network_security_group_id : string prop;
  network_watcher_name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  version : float prop;
}

let make ?id ?location ?tags ?version ?timeouts
    ?(traffic_analytics = []) ~enabled ~name
    ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy __id =
  let __type = "azurerm_network_watcher_flow_log" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network_security_group_id =
         Prop.computed __type __id "network_security_group_id";
       network_watcher_name =
         Prop.computed __type __id "network_watcher_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_watcher_flow_log
        (azurerm_network_watcher_flow_log ?id ?location ?tags
           ?version ?timeouts ~traffic_analytics ~enabled ~name
           ~network_security_group_id ~network_watcher_name
           ~resource_group_name ~storage_account_id ~retention_policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?tags ?version ?timeouts
    ?(traffic_analytics = []) ~enabled ~name
    ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?tags ?version ?timeouts ~traffic_analytics
      ~enabled ~name ~network_security_group_id ~network_watcher_name
      ~resource_group_name ~storage_account_id ~retention_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
