(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type patch_schedule = {
  day_of_week : string prop;  (** day_of_week *)
  maintenance_window : string prop;  (** maintenance_window *)
  start_hour_utc : float prop;  (** start_hour_utc *)
}

type redis_configuration = {
  active_directory_authentication_enabled : bool prop;
      (** active_directory_authentication_enabled *)
  aof_backup_enabled : bool prop;  (** aof_backup_enabled *)
  aof_storage_connection_string_0 : string prop;
      (** aof_storage_connection_string_0 *)
  aof_storage_connection_string_1 : string prop;
      (** aof_storage_connection_string_1 *)
  data_persistence_authentication_method : string prop;
      (** data_persistence_authentication_method *)
  enable_authentication : bool prop;  (** enable_authentication *)
  maxclients : float prop;  (** maxclients *)
  maxfragmentationmemory_reserved : float prop;
      (** maxfragmentationmemory_reserved *)
  maxmemory_delta : float prop;  (** maxmemory_delta *)
  maxmemory_policy : string prop;  (** maxmemory_policy *)
  maxmemory_reserved : float prop;  (** maxmemory_reserved *)
  notify_keyspace_events : string prop;
      (** notify_keyspace_events *)
  rdb_backup_enabled : bool prop;  (** rdb_backup_enabled *)
  rdb_backup_frequency : float prop;  (** rdb_backup_frequency *)
  rdb_backup_max_snapshot_count : float prop;
      (** rdb_backup_max_snapshot_count *)
  rdb_storage_connection_string : string prop;
      (** rdb_storage_connection_string *)
  storage_account_subscription_id : string prop;
      (** storage_account_subscription_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_redis_cache

val azurerm_redis_cache :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_redis_cache

val yojson_of_azurerm_redis_cache : azurerm_redis_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
