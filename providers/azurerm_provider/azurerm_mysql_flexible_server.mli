(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_flexible_server__customer_managed_key
type azurerm_mysql_flexible_server__high_availability
type azurerm_mysql_flexible_server__identity
type azurerm_mysql_flexible_server__maintenance_window
type azurerm_mysql_flexible_server__storage
type azurerm_mysql_flexible_server__timeouts
type azurerm_mysql_flexible_server

val azurerm_mysql_flexible_server :
  ?administrator_password:string ->
  ?backup_retention_days:float ->
  ?create_mode:string ->
  ?delegated_subnet_id:string ->
  ?geo_redundant_backup_enabled:bool ->
  ?point_in_time_restore_time_in_utc:string ->
  ?private_dns_zone_id:string ->
  ?source_server_id:string ->
  ?tags:(string * string) list ->
  ?zone:string ->
  ?timeouts:azurerm_mysql_flexible_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  customer_managed_key:
    azurerm_mysql_flexible_server__customer_managed_key list ->
  high_availability:
    azurerm_mysql_flexible_server__high_availability list ->
  identity:azurerm_mysql_flexible_server__identity list ->
  maintenance_window:
    azurerm_mysql_flexible_server__maintenance_window list ->
  storage:azurerm_mysql_flexible_server__storage list ->
  string ->
  unit
