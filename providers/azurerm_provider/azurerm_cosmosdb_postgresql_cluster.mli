(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_cluster__maintenance_window
type azurerm_cosmosdb_postgresql_cluster__timeouts
type azurerm_cosmosdb_postgresql_cluster

val azurerm_cosmosdb_postgresql_cluster :
  ?administrator_login_password:string ->
  ?citus_version:string ->
  ?coordinator_public_ip_access_enabled:bool ->
  ?coordinator_server_edition:string ->
  ?coordinator_storage_quota_in_mb:float ->
  ?coordinator_vcore_count:float ->
  ?ha_enabled:bool ->
  ?id:string ->
  ?node_public_ip_access_enabled:bool ->
  ?node_server_edition:string ->
  ?node_storage_quota_in_mb:float ->
  ?node_vcores:float ->
  ?point_in_time_in_utc:string ->
  ?preferred_primary_zone:string ->
  ?shards_on_coordinator_enabled:bool ->
  ?source_location:string ->
  ?source_resource_id:string ->
  ?sql_version:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_cosmosdb_postgresql_cluster__timeouts ->
  location:string ->
  name:string ->
  node_count:float ->
  resource_group_name:string ->
  maintenance_window:
    azurerm_cosmosdb_postgresql_cluster__maintenance_window list ->
  string ->
  unit
