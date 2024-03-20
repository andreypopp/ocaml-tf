(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type patch_schedule = {
  day_of_week : string prop;  (** day_of_week *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  start_hour_utc : float prop option; [@option]  (** start_hour_utc *)
}
[@@deriving yojson_of]
(** patch_schedule *)

type redis_configuration = {
  active_directory_authentication_enabled : bool prop option;
      [@option]
      (** active_directory_authentication_enabled *)
  aof_backup_enabled : bool prop option; [@option]
      (** aof_backup_enabled *)
  aof_storage_connection_string_0 : string prop option; [@option]
      (** aof_storage_connection_string_0 *)
  aof_storage_connection_string_1 : string prop option; [@option]
      (** aof_storage_connection_string_1 *)
  data_persistence_authentication_method : string prop option;
      [@option]
      (** data_persistence_authentication_method *)
  enable_authentication : bool prop option; [@option]
      (** enable_authentication *)
  maxfragmentationmemory_reserved : float prop option; [@option]
      (** maxfragmentationmemory_reserved *)
  maxmemory_delta : float prop option; [@option]
      (** maxmemory_delta *)
  maxmemory_policy : string prop option; [@option]
      (** maxmemory_policy *)
  maxmemory_reserved : float prop option; [@option]
      (** maxmemory_reserved *)
  notify_keyspace_events : string prop option; [@option]
      (** notify_keyspace_events *)
  rdb_backup_enabled : bool prop option; [@option]
      (** rdb_backup_enabled *)
  rdb_backup_frequency : float prop option; [@option]
      (** rdb_backup_frequency *)
  rdb_backup_max_snapshot_count : float prop option; [@option]
      (** rdb_backup_max_snapshot_count *)
  rdb_storage_connection_string : string prop option; [@option]
      (** rdb_storage_connection_string *)
  storage_account_subscription_id : string prop option; [@option]
      (** storage_account_subscription_id *)
}
[@@deriving yojson_of]
(** redis_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_redis_cache = {
  capacity : float prop;  (** capacity *)
  enable_non_ssl_port : bool prop option; [@option]
      (** enable_non_ssl_port *)
  family : string prop;  (** family *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  private_static_ip_address : string prop option; [@option]
      (** private_static_ip_address *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  redis_version : string prop option; [@option]  (** redis_version *)
  replicas_per_master : float prop option; [@option]
      (** replicas_per_master *)
  replicas_per_primary : float prop option; [@option]
      (** replicas_per_primary *)
  resource_group_name : string prop;  (** resource_group_name *)
  shard_count : float prop option; [@option]  (** shard_count *)
  sku_name : string prop;  (** sku_name *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tenant_settings : (string * string prop) list option; [@option]
      (** tenant_settings *)
  zones : string prop list option; [@option]  (** zones *)
  identity : identity list;
  patch_schedule : patch_schedule list;
  redis_configuration : redis_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_cache *)

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
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
    ~capacity ~family ~location ~name ~resource_group_name ~sku_name
    ~identity ~patch_schedule ~redis_configuration () :
    azurerm_redis_cache =
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
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
    ~capacity ~family ~location ~name ~resource_group_name ~sku_name
    ~identity ~patch_schedule ~redis_configuration __id =
  let __type = "azurerm_redis_cache" in
  let __attrs =
    ({
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
           ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
           ~capacity ~family ~location ~name ~resource_group_name
           ~sku_name ~identity ~patch_schedule ~redis_configuration
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_non_ssl_port ?id ?minimum_tls_version
    ?private_static_ip_address ?public_network_access_enabled
    ?redis_version ?replicas_per_master ?replicas_per_primary
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
    ~capacity ~family ~location ~name ~resource_group_name ~sku_name
    ~identity ~patch_schedule ~redis_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?enable_non_ssl_port ?id ?minimum_tls_version
      ?private_static_ip_address ?public_network_access_enabled
      ?redis_version ?replicas_per_master ?replicas_per_primary
      ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
      ~capacity ~family ~location ~name ~resource_group_name
      ~sku_name ~identity ~patch_schedule ~redis_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
