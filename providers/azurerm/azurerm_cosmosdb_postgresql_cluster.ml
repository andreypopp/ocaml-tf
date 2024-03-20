(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_window = {
  day_of_week : float prop option; [@option]
  start_hour : float prop option; [@option]
  start_minute : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | {
       day_of_week = v_day_of_week;
       start_hour = v_start_hour;
       start_minute = v_start_minute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start_minute with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_minute", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_hour", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "day_of_week", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

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

type azurerm_cosmosdb_postgresql_cluster = {
  administrator_login_password : string prop option; [@option]
  citus_version : string prop option; [@option]
  coordinator_public_ip_access_enabled : bool prop option; [@option]
  coordinator_server_edition : string prop option; [@option]
  coordinator_storage_quota_in_mb : float prop option; [@option]
  coordinator_vcore_count : float prop option; [@option]
  ha_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  node_count : float prop;
  node_public_ip_access_enabled : bool prop option; [@option]
  node_server_edition : string prop option; [@option]
  node_storage_quota_in_mb : float prop option; [@option]
  node_vcores : float prop option; [@option]
  point_in_time_in_utc : string prop option; [@option]
  preferred_primary_zone : string prop option; [@option]
  resource_group_name : string prop;
  shards_on_coordinator_enabled : bool prop option; [@option]
  source_location : string prop option; [@option]
  source_resource_id : string prop option; [@option]
  sql_version : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  maintenance_window : maintenance_window list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cosmosdb_postgresql_cluster) -> ()

let yojson_of_azurerm_cosmosdb_postgresql_cluster =
  (function
   | {
       administrator_login_password = v_administrator_login_password;
       citus_version = v_citus_version;
       coordinator_public_ip_access_enabled =
         v_coordinator_public_ip_access_enabled;
       coordinator_server_edition = v_coordinator_server_edition;
       coordinator_storage_quota_in_mb =
         v_coordinator_storage_quota_in_mb;
       coordinator_vcore_count = v_coordinator_vcore_count;
       ha_enabled = v_ha_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       node_count = v_node_count;
       node_public_ip_access_enabled =
         v_node_public_ip_access_enabled;
       node_server_edition = v_node_server_edition;
       node_storage_quota_in_mb = v_node_storage_quota_in_mb;
       node_vcores = v_node_vcores;
       point_in_time_in_utc = v_point_in_time_in_utc;
       preferred_primary_zone = v_preferred_primary_zone;
       resource_group_name = v_resource_group_name;
       shards_on_coordinator_enabled =
         v_shards_on_coordinator_enabled;
       source_location = v_source_location;
       source_resource_id = v_source_resource_id;
       sql_version = v_sql_version;
       tags = v_tags;
       maintenance_window = v_maintenance_window;
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
           yojson_of_list yojson_of_maintenance_window
             v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
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
         match v_sql_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_shards_on_coordinator_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "shards_on_coordinator_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_preferred_primary_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_primary_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time_in_utc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "point_in_time_in_utc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_vcores with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_vcores", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_storage_quota_in_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_storage_quota_in_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_server_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_server_edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_public_ip_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "node_public_ip_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
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
         match v_ha_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ha_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coordinator_vcore_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "coordinator_vcore_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coordinator_storage_quota_in_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "coordinator_storage_quota_in_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coordinator_server_edition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "coordinator_server_edition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_coordinator_public_ip_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "coordinator_public_ip_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_citus_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "citus_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrator_login_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrator_login_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cosmosdb_postgresql_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cosmosdb_postgresql_cluster

[@@@deriving.end]

let maintenance_window ?day_of_week ?start_hour ?start_minute () :
    maintenance_window =
  { day_of_week; start_hour; start_minute }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_postgresql_cluster ?administrator_login_password
    ?citus_version ?coordinator_public_ip_access_enabled
    ?coordinator_server_edition ?coordinator_storage_quota_in_mb
    ?coordinator_vcore_count ?ha_enabled ?id
    ?node_public_ip_access_enabled ?node_server_edition
    ?node_storage_quota_in_mb ?node_vcores ?point_in_time_in_utc
    ?preferred_primary_zone ?shards_on_coordinator_enabled
    ?source_location ?source_resource_id ?sql_version ?tags ?timeouts
    ~location ~name ~node_count ~resource_group_name
    ~maintenance_window () : azurerm_cosmosdb_postgresql_cluster =
  {
    administrator_login_password;
    citus_version;
    coordinator_public_ip_access_enabled;
    coordinator_server_edition;
    coordinator_storage_quota_in_mb;
    coordinator_vcore_count;
    ha_enabled;
    id;
    location;
    name;
    node_count;
    node_public_ip_access_enabled;
    node_server_edition;
    node_storage_quota_in_mb;
    node_vcores;
    point_in_time_in_utc;
    preferred_primary_zone;
    resource_group_name;
    shards_on_coordinator_enabled;
    source_location;
    source_resource_id;
    sql_version;
    tags;
    maintenance_window;
    timeouts;
  }

type t = {
  administrator_login_password : string prop;
  citus_version : string prop;
  coordinator_public_ip_access_enabled : bool prop;
  coordinator_server_edition : string prop;
  coordinator_storage_quota_in_mb : float prop;
  coordinator_vcore_count : float prop;
  earliest_restore_time : string prop;
  ha_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  node_count : float prop;
  node_public_ip_access_enabled : bool prop;
  node_server_edition : string prop;
  node_storage_quota_in_mb : float prop;
  node_vcores : float prop;
  point_in_time_in_utc : string prop;
  preferred_primary_zone : string prop;
  resource_group_name : string prop;
  shards_on_coordinator_enabled : bool prop;
  source_location : string prop;
  source_resource_id : string prop;
  sql_version : string prop;
  tags : (string * string) list prop;
}

let make ?administrator_login_password ?citus_version
    ?coordinator_public_ip_access_enabled ?coordinator_server_edition
    ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
    ?ha_enabled ?id ?node_public_ip_access_enabled
    ?node_server_edition ?node_storage_quota_in_mb ?node_vcores
    ?point_in_time_in_utc ?preferred_primary_zone
    ?shards_on_coordinator_enabled ?source_location
    ?source_resource_id ?sql_version ?tags ?timeouts ~location ~name
    ~node_count ~resource_group_name ~maintenance_window __id =
  let __type = "azurerm_cosmosdb_postgresql_cluster" in
  let __attrs =
    ({
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       citus_version = Prop.computed __type __id "citus_version";
       coordinator_public_ip_access_enabled =
         Prop.computed __type __id
           "coordinator_public_ip_access_enabled";
       coordinator_server_edition =
         Prop.computed __type __id "coordinator_server_edition";
       coordinator_storage_quota_in_mb =
         Prop.computed __type __id "coordinator_storage_quota_in_mb";
       coordinator_vcore_count =
         Prop.computed __type __id "coordinator_vcore_count";
       earliest_restore_time =
         Prop.computed __type __id "earliest_restore_time";
       ha_enabled = Prop.computed __type __id "ha_enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_public_ip_access_enabled =
         Prop.computed __type __id "node_public_ip_access_enabled";
       node_server_edition =
         Prop.computed __type __id "node_server_edition";
       node_storage_quota_in_mb =
         Prop.computed __type __id "node_storage_quota_in_mb";
       node_vcores = Prop.computed __type __id "node_vcores";
       point_in_time_in_utc =
         Prop.computed __type __id "point_in_time_in_utc";
       preferred_primary_zone =
         Prop.computed __type __id "preferred_primary_zone";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shards_on_coordinator_enabled =
         Prop.computed __type __id "shards_on_coordinator_enabled";
       source_location = Prop.computed __type __id "source_location";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       sql_version = Prop.computed __type __id "sql_version";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_postgresql_cluster
        (azurerm_cosmosdb_postgresql_cluster
           ?administrator_login_password ?citus_version
           ?coordinator_public_ip_access_enabled
           ?coordinator_server_edition
           ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
           ?ha_enabled ?id ?node_public_ip_access_enabled
           ?node_server_edition ?node_storage_quota_in_mb
           ?node_vcores ?point_in_time_in_utc ?preferred_primary_zone
           ?shards_on_coordinator_enabled ?source_location
           ?source_resource_id ?sql_version ?tags ?timeouts ~location
           ~name ~node_count ~resource_group_name ~maintenance_window
           ());
    attrs = __attrs;
  }

let register ?tf_module ?administrator_login_password ?citus_version
    ?coordinator_public_ip_access_enabled ?coordinator_server_edition
    ?coordinator_storage_quota_in_mb ?coordinator_vcore_count
    ?ha_enabled ?id ?node_public_ip_access_enabled
    ?node_server_edition ?node_storage_quota_in_mb ?node_vcores
    ?point_in_time_in_utc ?preferred_primary_zone
    ?shards_on_coordinator_enabled ?source_location
    ?source_resource_id ?sql_version ?tags ?timeouts ~location ~name
    ~node_count ~resource_group_name ~maintenance_window __id =
  let (r : _ Tf_core.resource) =
    make ?administrator_login_password ?citus_version
      ?coordinator_public_ip_access_enabled
      ?coordinator_server_edition ?coordinator_storage_quota_in_mb
      ?coordinator_vcore_count ?ha_enabled ?id
      ?node_public_ip_access_enabled ?node_server_edition
      ?node_storage_quota_in_mb ?node_vcores ?point_in_time_in_utc
      ?preferred_primary_zone ?shards_on_coordinator_enabled
      ?source_location ?source_resource_id ?sql_version ?tags
      ?timeouts ~location ~name ~node_count ~resource_group_name
      ~maintenance_window __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
