(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_redis_cache__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__identity *)

type azurerm_redis_cache__patch_schedule = {
  day_of_week : string;  (** day_of_week *)
  maintenance_window : string option; [@option]
      (** maintenance_window *)
  start_hour_utc : float option; [@option]  (** start_hour_utc *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__patch_schedule *)

type azurerm_redis_cache__redis_configuration = {
  active_directory_authentication_enabled : bool option; [@option]
      (** active_directory_authentication_enabled *)
  aof_backup_enabled : bool option; [@option]
      (** aof_backup_enabled *)
  aof_storage_connection_string_0 : string option; [@option]
      (** aof_storage_connection_string_0 *)
  aof_storage_connection_string_1 : string option; [@option]
      (** aof_storage_connection_string_1 *)
  data_persistence_authentication_method : string option; [@option]
      (** data_persistence_authentication_method *)
  enable_authentication : bool option; [@option]
      (** enable_authentication *)
  maxclients : float;  (** maxclients *)
  maxfragmentationmemory_reserved : float option; [@option]
      (** maxfragmentationmemory_reserved *)
  maxmemory_delta : float option; [@option]  (** maxmemory_delta *)
  maxmemory_policy : string option; [@option]
      (** maxmemory_policy *)
  maxmemory_reserved : float option; [@option]
      (** maxmemory_reserved *)
  notify_keyspace_events : string option; [@option]
      (** notify_keyspace_events *)
  rdb_backup_enabled : bool option; [@option]
      (** rdb_backup_enabled *)
  rdb_backup_frequency : float option; [@option]
      (** rdb_backup_frequency *)
  rdb_backup_max_snapshot_count : float option; [@option]
      (** rdb_backup_max_snapshot_count *)
  rdb_storage_connection_string : string option; [@option]
      (** rdb_storage_connection_string *)
  storage_account_subscription_id : string option; [@option]
      (** storage_account_subscription_id *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__redis_configuration *)

type azurerm_redis_cache__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_cache__timeouts *)

type azurerm_redis_cache = {
  capacity : float;  (** capacity *)
  enable_non_ssl_port : bool option; [@option]
      (** enable_non_ssl_port *)
  family : string;  (** family *)
  location : string;  (** location *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  shard_count : float option; [@option]  (** shard_count *)
  sku_name : string;  (** sku_name *)
  subnet_id : string option; [@option]  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tenant_settings : (string * string) list option; [@option]
      (** tenant_settings *)
  zones : string list option; [@option]  (** zones *)
  identity : azurerm_redis_cache__identity list;
  patch_schedule : azurerm_redis_cache__patch_schedule list;
  redis_configuration :
    azurerm_redis_cache__redis_configuration list;
  timeouts : azurerm_redis_cache__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_cache *)

let azurerm_redis_cache ?enable_non_ssl_port ?minimum_tls_version
    ?public_network_access_enabled ?shard_count ?subnet_id ?tags
    ?tenant_settings ?zones ?timeouts ~capacity ~family ~location
    ~name ~resource_group_name ~sku_name ~identity ~patch_schedule
    ~redis_configuration __resource_id =
  let __resource_type = "azurerm_redis_cache" in
  let __resource =
    {
      capacity;
      enable_non_ssl_port;
      family;
      location;
      minimum_tls_version;
      name;
      public_network_access_enabled;
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
