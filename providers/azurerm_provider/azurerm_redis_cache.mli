(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_redis_cache__identity
type azurerm_redis_cache__patch_schedule
type azurerm_redis_cache__redis_configuration
type azurerm_redis_cache__timeouts
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
  ?timeouts:azurerm_redis_cache__timeouts ->
  capacity:float prop ->
  family:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  identity:azurerm_redis_cache__identity list ->
  patch_schedule:azurerm_redis_cache__patch_schedule list ->
  redis_configuration:azurerm_redis_cache__redis_configuration list ->
  string ->
  unit
