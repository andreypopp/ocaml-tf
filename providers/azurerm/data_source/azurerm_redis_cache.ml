(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type patch_schedule = {
  day_of_week : string prop;
  maintenance_window : string prop;
  start_hour_utc : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : patch_schedule) -> ()

let yojson_of_patch_schedule =
  (function
   | {
       day_of_week = v_day_of_week;
       maintenance_window = v_maintenance_window;
       start_hour_utc = v_start_hour_utc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_start_hour_utc in
         ("start_hour_utc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maintenance_window
         in
         ("maintenance_window", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day_of_week in
         ("day_of_week", arg) :: bnds
       in
       `Assoc bnds
    : patch_schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_patch_schedule

[@@@deriving.end]

type redis_configuration = {
  active_directory_authentication_enabled : bool prop;
  aof_backup_enabled : bool prop;
  aof_storage_connection_string_0 : string prop;
  aof_storage_connection_string_1 : string prop;
  data_persistence_authentication_method : string prop;
  enable_authentication : bool prop;
  maxclients : float prop;
  maxfragmentationmemory_reserved : float prop;
  maxmemory_delta : float prop;
  maxmemory_policy : string prop;
  maxmemory_reserved : float prop;
  notify_keyspace_events : string prop;
  rdb_backup_enabled : bool prop;
  rdb_backup_frequency : float prop;
  rdb_backup_max_snapshot_count : float prop;
  rdb_storage_connection_string : string prop;
  storage_account_subscription_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis_configuration) -> ()

let yojson_of_redis_configuration =
  (function
   | {
       active_directory_authentication_enabled =
         v_active_directory_authentication_enabled;
       aof_backup_enabled = v_aof_backup_enabled;
       aof_storage_connection_string_0 =
         v_aof_storage_connection_string_0;
       aof_storage_connection_string_1 =
         v_aof_storage_connection_string_1;
       data_persistence_authentication_method =
         v_data_persistence_authentication_method;
       enable_authentication = v_enable_authentication;
       maxclients = v_maxclients;
       maxfragmentationmemory_reserved =
         v_maxfragmentationmemory_reserved;
       maxmemory_delta = v_maxmemory_delta;
       maxmemory_policy = v_maxmemory_policy;
       maxmemory_reserved = v_maxmemory_reserved;
       notify_keyspace_events = v_notify_keyspace_events;
       rdb_backup_enabled = v_rdb_backup_enabled;
       rdb_backup_frequency = v_rdb_backup_frequency;
       rdb_backup_max_snapshot_count =
         v_rdb_backup_max_snapshot_count;
       rdb_storage_connection_string =
         v_rdb_storage_connection_string;
       storage_account_subscription_id =
         v_storage_account_subscription_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_storage_account_subscription_id
         in
         ("storage_account_subscription_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_rdb_storage_connection_string
         in
         ("rdb_storage_connection_string", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_rdb_backup_max_snapshot_count
         in
         ("rdb_backup_max_snapshot_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_rdb_backup_frequency
         in
         ("rdb_backup_frequency", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_rdb_backup_enabled
         in
         ("rdb_backup_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notify_keyspace_events
         in
         ("notify_keyspace_events", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maxmemory_reserved
         in
         ("maxmemory_reserved", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maxmemory_policy
         in
         ("maxmemory_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maxmemory_delta
         in
         ("maxmemory_delta", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_maxfragmentationmemory_reserved
         in
         ("maxfragmentationmemory_reserved", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maxclients in
         ("maxclients", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_authentication
         in
         ("enable_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_data_persistence_authentication_method
         in
         ("data_persistence_authentication_method", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_aof_storage_connection_string_1
         in
         ("aof_storage_connection_string_1", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_aof_storage_connection_string_0
         in
         ("aof_storage_connection_string_0", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_aof_backup_enabled
         in
         ("aof_backup_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_active_directory_authentication_enabled
         in
         ("active_directory_authentication_enabled", arg) :: bnds
       in
       `Assoc bnds
    : redis_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_configuration

[@@@deriving.end]

type azurerm_redis_cache = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redis_cache) -> ()

let yojson_of_azurerm_redis_cache =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_redis_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redis_cache

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_redis_cache ?id ?timeouts ~name ~resource_group_name () :
    azurerm_redis_cache =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  capacity : float prop;
  enable_non_ssl_port : bool prop;
  family : string prop;
  hostname : string prop;
  id : string prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  patch_schedule : patch_schedule list prop;
  port : float prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  private_static_ip_address : string prop;
  redis_configuration : redis_configuration list prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  shard_count : float prop;
  sku_name : string prop;
  ssl_port : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_redis_cache" in
  let __attrs =
    ({
       tf_name = __id;
       capacity = Prop.computed __type __id "capacity";
       enable_non_ssl_port =
         Prop.computed __type __id "enable_non_ssl_port";
       family = Prop.computed __type __id "family";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       patch_schedule = Prop.computed __type __id "patch_schedule";
       port = Prop.computed __type __id "port";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       private_static_ip_address =
         Prop.computed __type __id "private_static_ip_address";
       redis_configuration =
         Prop.computed __type __id "redis_configuration";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       shard_count = Prop.computed __type __id "shard_count";
       sku_name = Prop.computed __type __id "sku_name";
       ssl_port = Prop.computed __type __id "ssl_port";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_cache
        (azurerm_redis_cache ?id ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
