(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_cache__identity
type azurerm_redis_cache__patch_schedule
type azurerm_redis_cache__redis_configuration
type azurerm_redis_cache__timeouts
type azurerm_redis_cache

val azurerm_redis_cache :
  ?enable_non_ssl_port:bool ->
  ?minimum_tls_version:string ->
  ?public_network_access_enabled:bool ->
  ?shard_count:float ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?tenant_settings:(string * string) list ->
  ?zones:string list ->
  ?timeouts:azurerm_redis_cache__timeouts ->
  capacity:float ->
  family:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  identity:azurerm_redis_cache__identity list ->
  patch_schedule:azurerm_redis_cache__patch_schedule list ->
  redis_configuration:azurerm_redis_cache__redis_configuration list ->
  string ->
  unit
