(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_cluster__maintenance_window
type azurerm_cosmosdb_postgresql_cluster__timeouts
type azurerm_cosmosdb_postgresql_cluster

val azurerm_cosmosdb_postgresql_cluster :
  ?administrator_login_password:string ->
  ?coordinator_public_ip_access_enabled:bool ->
  ?coordinator_server_edition:string ->
  ?coordinator_storage_quota_in_mb:float ->
  ?coordinator_vcore_count:float ->
  ?ha_enabled:bool ->
  ?node_public_ip_access_enabled:bool ->
  ?node_server_edition:string ->
  ?point_in_time_in_utc:string ->
  ?preferred_primary_zone:string ->
  ?source_location:string ->
  ?source_resource_id:string ->
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
