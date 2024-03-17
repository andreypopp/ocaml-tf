(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_flexible_server__authentication
type azurerm_postgresql_flexible_server__customer_managed_key
type azurerm_postgresql_flexible_server__high_availability
type azurerm_postgresql_flexible_server__identity
type azurerm_postgresql_flexible_server__maintenance_window
type azurerm_postgresql_flexible_server__timeouts
type azurerm_postgresql_flexible_server

val azurerm_postgresql_flexible_server :
  ?administrator_password:string ->
  ?auto_grow_enabled:bool ->
  ?create_mode:string ->
  ?delegated_subnet_id:string ->
  ?geo_redundant_backup_enabled:bool ->
  ?point_in_time_restore_time_in_utc:string ->
  ?replication_role:string ->
  ?source_server_id:string ->
  ?tags:(string * string) list ->
  ?zone:string ->
  ?timeouts:azurerm_postgresql_flexible_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  authentication:
    azurerm_postgresql_flexible_server__authentication list ->
  customer_managed_key:
    azurerm_postgresql_flexible_server__customer_managed_key list ->
  high_availability:
    azurerm_postgresql_flexible_server__high_availability list ->
  identity:azurerm_postgresql_flexible_server__identity list ->
  maintenance_window:
    azurerm_postgresql_flexible_server__maintenance_window list ->
  string ->
  unit
