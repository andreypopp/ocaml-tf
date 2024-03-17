(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_postgresql_server__identity
type azurerm_postgresql_server__threat_detection_policy
type azurerm_postgresql_server__timeouts
type azurerm_postgresql_server

val azurerm_postgresql_server :
  ?administrator_login_password:string ->
  ?auto_grow_enabled:bool ->
  ?create_mode:string ->
  ?creation_source_server_id:string ->
  ?geo_redundant_backup_enabled:bool ->
  ?infrastructure_encryption_enabled:bool ->
  ?public_network_access_enabled:bool ->
  ?restore_point_in_time:string ->
  ?ssl_minimal_tls_version_enforced:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_postgresql_server__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sku_name:string ->
  ssl_enforcement_enabled:bool ->
  version:string ->
  identity:azurerm_postgresql_server__identity list ->
  threat_detection_policy:
    azurerm_postgresql_server__threat_detection_policy list ->
  string ->
  unit
