(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type patch_schedule = {
  day_of_week : string prop;
  maintenance_window : string prop option; [@option]
  start_hour_utc : float prop option; [@option]
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
         match v_start_hour_utc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "start_hour_utc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_window", arg in
             bnd :: bnds
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
  active_directory_authentication_enabled : bool prop option;
      [@option]
  aof_backup_enabled : bool prop option; [@option]
  aof_storage_connection_string_0 : string prop option; [@option]
  aof_storage_connection_string_1 : string prop option; [@option]
  data_persistence_authentication_method : string prop option;
      [@option]
  enable_authentication : bool prop option; [@option]
  maxfragmentationmemory_reserved : float prop option; [@option]
  maxmemory_delta : float prop option; [@option]
  maxmemory_policy : string prop option; [@option]
  maxmemory_reserved : float prop option; [@option]
  notify_keyspace_events : string prop option; [@option]
  rdb_backup_enabled : bool prop option; [@option]
  rdb_backup_frequency : float prop option; [@option]
  rdb_backup_max_snapshot_count : float prop option; [@option]
  rdb_storage_connection_string : string prop option; [@option]
  storage_account_subscription_id : string prop option; [@option]
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
         match v_storage_account_subscription_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_subscription_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rdb_storage_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rdb_storage_connection_string", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rdb_backup_max_snapshot_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rdb_backup_max_snapshot_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rdb_backup_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rdb_backup_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rdb_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rdb_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notify_keyspace_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notify_keyspace_events", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maxmemory_reserved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maxmemory_reserved", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maxmemory_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maxmemory_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maxmemory_delta with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maxmemory_delta", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maxfragmentationmemory_reserved with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maxfragmentationmemory_reserved", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_persistence_authentication_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "data_persistence_authentication_method", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_aof_storage_connection_string_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aof_storage_connection_string_1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aof_storage_connection_string_0 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aof_storage_connection_string_0", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aof_backup_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "aof_backup_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "active_directory_authentication_enabled", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : redis_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_configuration

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

type azurerm_redis_cache = {
  capacity : float prop;
  enable_non_ssl_port : bool prop option; [@option]
  family : string prop;
  id : string prop option; [@option]
  location : string prop;
  minimum_tls_version : string prop option; [@option]
  name : string prop;
  private_static_ip_address : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  redis_version : string prop option; [@option]
  replicas_per_master : float prop option; [@option]
  replicas_per_primary : float prop option; [@option]
  resource_group_name : string prop;
  shard_count : float prop option; [@option]
  sku_name : string prop;
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tenant_settings : (string * string prop) list option; [@option]
  zones : string prop list option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  patch_schedule : patch_schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redis_configuration : redis_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_redis_cache) -> ()

let yojson_of_azurerm_redis_cache =
  (function
   | {
       capacity = v_capacity;
       enable_non_ssl_port = v_enable_non_ssl_port;
       family = v_family;
       id = v_id;
       location = v_location;
       minimum_tls_version = v_minimum_tls_version;
       name = v_name;
       private_static_ip_address = v_private_static_ip_address;
       public_network_access_enabled =
         v_public_network_access_enabled;
       redis_version = v_redis_version;
       replicas_per_master = v_replicas_per_master;
       replicas_per_primary = v_replicas_per_primary;
       resource_group_name = v_resource_group_name;
       shard_count = v_shard_count;
       sku_name = v_sku_name;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tenant_settings = v_tenant_settings;
       zones = v_zones;
       identity = v_identity;
       patch_schedule = v_patch_schedule;
       redis_configuration = v_redis_configuration;
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
         if Stdlib.( = ) [] v_redis_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_redis_configuration)
               v_redis_configuration
           in
           let bnd = "redis_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_patch_schedule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_patch_schedule)
               v_patch_schedule
           in
           let bnd = "patch_schedule", arg in
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
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tenant_settings with
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
             let bnd = "tenant_settings", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         match v_shard_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "shard_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_replicas_per_primary with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas_per_primary", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replicas_per_master with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas_per_master", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redis_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redis_version", arg in
             bnd :: bnds
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
         match v_private_static_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_static_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_tls_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "minimum_tls_version", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_family in
         ("family", arg) :: bnds
       in
       let bnds =
         match v_enable_non_ssl_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_non_ssl_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_redis_cache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_redis_cache

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let patch_schedule ?maintenance_window ?start_hour_utc ~day_of_week
    () : patch_schedule =
  { day_of_week; maintenance_window; start_hour_utc }

let redis_configuration ?active_directory_authentication_enabled
    ?aof_backup_enabled ?aof_storage_connection_string_0
    ?aof_storage_connection_string_1
    ?data_persistence_authentication_method ?enable_authentication
    ?maxfragmentationmemory_reserved ?maxmemory_delta
    ?maxmemory_policy ?maxmemory_reserved ?notify_keyspace_events
    ?rdb_backup_enabled ?rdb_backup_frequency
    ?rdb_backup_max_snapshot_count ?rdb_storage_connection_string
    ?storage_account_subscription_id () : redis_configuration =
  {
    active_directory_authentication_enabled;
    aof_backup_enabled;
    aof_storage_connection_string_0;
    aof_storage_connection_string_1;
    data_persistence_authentication_method;
    enable_authentication;
    maxfragmentationmemory_reserved;
    maxmemory_delta;
    maxmemory_policy;
    maxmemory_reserved;
    notify_keyspace_events;
    rdb_backup_enabled;
    rdb_backup_frequency;
    rdb_backup_max_snapshot_count;
    rdb_storage_connection_string;
    storage_account_subscription_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_redis_cache ?enable_non_ssl_port ?id ?minimum_tls_version
    ?private_static_ip_address ?public_network_access_enabled
    ?redis_version ?replicas_per_master ?replicas_per_primary
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones
    ?(identity = []) ?(patch_schedule = [])
    ?(redis_configuration = []) ?timeouts ~capacity ~family ~location
    ~name ~resource_group_name ~sku_name () : azurerm_redis_cache =
  {
    capacity;
    enable_non_ssl_port;
    family;
    id;
    location;
    minimum_tls_version;
    name;
    private_static_ip_address;
    public_network_access_enabled;
    redis_version;
    replicas_per_master;
    replicas_per_primary;
    resource_group_name;
    shard_count;
    sku_name;
    subnet_id;
    tags;
    tenant_settings;
    zones;
    identity;
    patch_schedule;
    redis_configuration;
    timeouts;
  }

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
  port : float prop;
  primary_access_key : string prop;
  primary_connection_string : string prop;
  private_static_ip_address : string prop;
  public_network_access_enabled : bool prop;
  redis_version : string prop;
  replicas_per_master : float prop;
  replicas_per_primary : float prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  secondary_connection_string : string prop;
  shard_count : float prop;
  sku_name : string prop;
  ssl_port : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tenant_settings : (string * string) list prop;
  zones : string list prop;
}

let make ?enable_non_ssl_port ?id ?minimum_tls_version
    ?private_static_ip_address ?public_network_access_enabled
    ?redis_version ?replicas_per_master ?replicas_per_primary
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones
    ?(identity = []) ?(patch_schedule = [])
    ?(redis_configuration = []) ?timeouts ~capacity ~family ~location
    ~name ~resource_group_name ~sku_name __id =
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
       port = Prop.computed __type __id "port";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       private_static_ip_address =
         Prop.computed __type __id "private_static_ip_address";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       redis_version = Prop.computed __type __id "redis_version";
       replicas_per_master =
         Prop.computed __type __id "replicas_per_master";
       replicas_per_primary =
         Prop.computed __type __id "replicas_per_primary";
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
       tenant_settings = Prop.computed __type __id "tenant_settings";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_redis_cache
        (azurerm_redis_cache ?enable_non_ssl_port ?id
           ?minimum_tls_version ?private_static_ip_address
           ?public_network_access_enabled ?redis_version
           ?replicas_per_master ?replicas_per_primary ?shard_count
           ?subnet_id ?tags ?tenant_settings ?zones ~identity
           ~patch_schedule ~redis_configuration ?timeouts ~capacity
           ~family ~location ~name ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_non_ssl_port ?id ?minimum_tls_version
    ?private_static_ip_address ?public_network_access_enabled
    ?redis_version ?replicas_per_master ?replicas_per_primary
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones
    ?(identity = []) ?(patch_schedule = [])
    ?(redis_configuration = []) ?timeouts ~capacity ~family ~location
    ~name ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?enable_non_ssl_port ?id ?minimum_tls_version
      ?private_static_ip_address ?public_network_access_enabled
      ?redis_version ?replicas_per_master ?replicas_per_primary
      ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ~identity
      ~patch_schedule ~redis_configuration ?timeouts ~capacity
      ~family ~location ~name ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
