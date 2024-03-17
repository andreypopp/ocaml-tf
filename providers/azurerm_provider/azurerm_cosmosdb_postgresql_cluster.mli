(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_cluster__maintenance_window
type azurerm_cosmosdb_postgresql_cluster__timeouts
type azurerm_cosmosdb_postgresql_cluster

val azurerm_cosmosdb_postgresql_cluster :
  ?administrator_login_password:string prop ->
  ?citus_version:string prop ->
  ?coordinator_public_ip_access_enabled:bool prop ->
  ?coordinator_server_edition:string prop ->
  ?coordinator_storage_quota_in_mb:float prop ->
  ?coordinator_vcore_count:float prop ->
  ?ha_enabled:bool prop ->
  ?id:string prop ->
  ?node_public_ip_access_enabled:bool prop ->
  ?node_server_edition:string prop ->
  ?node_storage_quota_in_mb:float prop ->
  ?node_vcores:float prop ->
  ?point_in_time_in_utc:string prop ->
  ?preferred_primary_zone:string prop ->
  ?shards_on_coordinator_enabled:bool prop ->
  ?source_location:string prop ->
  ?source_resource_id:string prop ->
  ?sql_version:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_cosmosdb_postgresql_cluster__timeouts ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  resource_group_name:string prop ->
  maintenance_window:
    azurerm_cosmosdb_postgresql_cluster__maintenance_window list ->
  string ->
  unit
