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
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?delegated_subnet_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?point_in_time_restore_time_in_utc:string prop ->
  ?private_dns_zone_id:string prop ->
  ?replication_role:string prop ->
  ?sku_name:string prop ->
  ?source_server_id:string prop ->
  ?tags:(string * string prop) list ->
  ?version:string prop ->
  ?zone:string prop ->
  ?timeouts:azurerm_mysql_flexible_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
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
