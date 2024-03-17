(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mysql_server__identity
type azurerm_mysql_server__threat_detection_policy
type azurerm_mysql_server__timeouts
type azurerm_mysql_server

val azurerm_mysql_server :
  ?administrator_login:string ->
  ?administrator_login_password:string ->
  ?auto_grow_enabled:bool ->
  ?backup_retention_days:float ->
  ?create_mode:string ->
  ?creation_source_server_id:string ->
  ?geo_redundant_backup_enabled:bool ->
  ?id:string ->
  ?infrastructure_encryption_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?restore_point_in_time:string ->
  ?ssl_minimal_tls_version_enforced:string ->
  ?storage_mb:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_mysql_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  ssl_enforcement_enabled:bool ->
  version:string ->
  identity:azurerm_mysql_server__identity list ->
  threat_detection_policy:
    azurerm_mysql_server__threat_detection_policy list ->
  string ->
  unit
