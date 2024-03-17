(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mariadb_server__timeouts
type azurerm_mariadb_server

val azurerm_mariadb_server :
  ?administrator_login:string prop ->
  ?administrator_login_password:string prop ->
  ?auto_grow_enabled:bool prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?creation_source_server_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?public_network_access_enabled:bool prop ->
  ?restore_point_in_time:string prop ->
  ?ssl_minimal_tls_version_enforced:string prop ->
  ?storage_mb:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_mariadb_server__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  ssl_enforcement_enabled:bool prop ->
  version:string prop ->
  string ->
  unit
