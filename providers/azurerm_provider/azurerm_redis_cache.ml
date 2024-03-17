(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_cache__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__identity *)

type azurerm_redis_cache__patch_schedule = {
  day_of_week : string prop;  (** day_of_week *)
  maintenance_window : string prop option; [@option]
      (** maintenance_window *)
  start_hour_utc : float prop option; [@option]  (** start_hour_utc *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__patch_schedule *)

type azurerm_redis_cache__redis_configuration = {
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
  maxclients : float prop;  (** maxclients *)
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
(** azurerm_redis_cache__redis_configuration *)

type azurerm_redis_cache__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__timeouts *)

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
  identity : azurerm_redis_cache__identity list;
  patch_schedule : azurerm_redis_cache__patch_schedule list;
  redis_configuration :
    azurerm_redis_cache__redis_configuration list;
  timeouts : azurerm_redis_cache__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_cache *)

let azurerm_redis_cache ?enable_non_ssl_port ?id ?minimum_tls_version
    ?private_static_ip_address ?public_network_access_enabled
    ?redis_version ?replicas_per_master ?replicas_per_primary
    ?shard_count ?subnet_id ?tags ?tenant_settings ?zones ?timeouts
    ~capacity ~family ~location ~name ~resource_group_name ~sku_name
    ~identity ~patch_schedule ~redis_configuration __resource_id =
  let __resource_type = "azurerm_redis_cache" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_cache __resource);
  ()
