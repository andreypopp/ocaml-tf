(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_database__identity
type azurerm_mssql_database__import
type azurerm_mssql_database__long_term_retention_policy
type azurerm_mssql_database__short_term_retention_policy
type azurerm_mssql_database__threat_detection_policy
type azurerm_mssql_database__timeouts
type azurerm_mssql_database

val azurerm_mssql_database :
  ?create_mode:string ->
  ?elastic_pool_id:string ->
  ?enclave_type:string ->
  ?geo_backup_enabled:bool ->
  ?recover_database_id:string ->
  ?recovery_point_id:string ->
  ?restore_dropped_database_id:string ->
  ?restore_long_term_retention_backup_id:string ->
  ?storage_account_type:string ->
  ?tags:(string * string) list ->
  ?transparent_data_encryption_enabled:bool ->
  ?transparent_data_encryption_key_automatic_rotation_enabled:bool ->
  ?transparent_data_encryption_key_vault_key_id:string ->
  ?timeouts:azurerm_mssql_database__timeouts ->
  name:string ->
  server_id:string ->
  identity:azurerm_mssql_database__identity list ->
  import:azurerm_mssql_database__import list ->
  long_term_retention_policy:
    azurerm_mssql_database__long_term_retention_policy list ->
  short_term_retention_policy:
    azurerm_mssql_database__short_term_retention_policy list ->
  threat_detection_policy:
    azurerm_mssql_database__threat_detection_policy list ->
  string ->
  unit
