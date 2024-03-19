(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type patch_schedule

val patch_schedule :
  ?maintenance_window:string prop ->
  ?start_hour_utc:float prop ->
  day_of_week:string prop ->
  unit ->
  patch_schedule

type redis_configuration

val redis_configuration :
  ?active_directory_authentication_enabled:bool prop ->
  ?aof_backup_enabled:bool prop ->
  ?aof_storage_connection_string_0:string prop ->
  ?aof_storage_connection_string_1:string prop ->
  ?data_persistence_authentication_method:string prop ->
  ?enable_authentication:bool prop ->
  ?maxfragmentationmemory_reserved:float prop ->
  ?maxmemory_delta:float prop ->
  ?maxmemory_policy:string prop ->
  ?maxmemory_reserved:float prop ->
  ?notify_keyspace_events:string prop ->
  ?rdb_backup_enabled:bool prop ->
  ?rdb_backup_frequency:float prop ->
  ?rdb_backup_max_snapshot_count:float prop ->
  ?rdb_storage_connection_string:string prop ->
  ?storage_account_subscription_id:string prop ->
  unit ->
  redis_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_redis_cache

val azurerm_redis_cache :
  ?enable_non_ssl_port:bool prop ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?private_static_ip_address:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?redis_version:string prop ->
  ?replicas_per_master:float prop ->
  ?replicas_per_primary:float prop ->
  ?shard_count:float prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_settings:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  capacity:float prop ->
  family:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  identity:identity list ->
  patch_schedule:patch_schedule list ->
  redis_configuration:redis_configuration list ->
  unit ->
  azurerm_redis_cache

val yojson_of_azurerm_redis_cache : azurerm_redis_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
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

val register :
  ?tf_module:tf_module ->
  ?enable_non_ssl_port:bool prop ->
  ?id:string prop ->
  ?minimum_tls_version:string prop ->
  ?private_static_ip_address:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?redis_version:string prop ->
  ?replicas_per_master:float prop ->
  ?replicas_per_primary:float prop ->
  ?shard_count:float prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tenant_settings:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  capacity:float prop ->
  family:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  identity:identity list ->
  patch_schedule:patch_schedule list ->
  redis_configuration:redis_configuration list ->
  string ->
  t
